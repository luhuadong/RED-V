/* Copyright 2019 SiFive, Inc */
/* SPDX-License-Identifier: Apache-2.0 */

#include <metal/cpu.h>
#include <metal/i2c.h>
#include <metal/io.h>
#include <metal/machine.h>
#include <metal/uart.h>
#include <stdio.h>
#include <time.h>

#include "bme680.h"

/* BME280 sensor modules are connected to I2C0 bus */
#define BME280_SENSOR_I2C_ADDR    0x76
#define BME280_SENSOR_ID          0x60

#define BME680_SENSOR_I2C_ADDR    0x77
#define BME680_SENSOR_ID          0x61

#define I2C_BAUDRATE              100000

#define BME280_DATA_ADDR          0xF7
#define BME280_P_T_H_DATA_LEN     8

/* Return values */
#define RET_OK                    0
#define RET_NOK                   1

/* Buffer length macros */
#define LEN0                      0
#define LEN1                      1
#define LEN2                      2
#define LEN3                      3
#define LEN4                      4
#define LEN5                      5
#define LEN6                      6
#define LEN7                      7
#define LEN8                      8

/* 1s delay macro */
#define WAIT_1S(timeout)                                                       \
  timeout = time(NULL) + 1;                                                    \
  while (timeout > time(NULL))                                                 \
    ;


/* Global variable */
static struct bme680_dev sensor;
static struct metal_i2c *i2c_bus;

static void delay_ms(long unsigned int ms) {
	clock_t begin = clock();

	while ((clock() - begin) < (ms * 1000))
		;
}

static int8_t i2c_write_reg(uint8_t addr, uint8_t reg, uint8_t *data, uint16_t len)
{
	uint8_t tmp = reg;
	metal_i2c_write(i2c_bus, addr, LEN1, &tmp, METAL_I2C_STOP_DISABLE);
	metal_i2c_write(i2c_bus, addr, len, data, METAL_I2C_STOP_ENABLE);

	//metal_i2c_transfer(i2c, ADC_I2C_ADDR, buf, LEN0, buf, LEN2);

    return RET_OK;
}

static int8_t i2c_read_reg(uint8_t addr, uint8_t reg, uint8_t *data, uint16_t len)
{
    uint8_t tmp = reg;
    int8_t  ret = RET_OK;

    //metal_i2c_write(i2c_bus, addr, LEN1, &tmp, METAL_I2C_STOP_DISABLE);
    //metal_i2c_read(i2c_bus, addr, len, data, METAL_I2C_STOP_ENABLE);

    ret = metal_i2c_transfer(i2c_bus, addr, &tmp, LEN1, data, len);

    return ret;
}

static int sensor_init(void)
{
	int8_t rslt = BME680_OK;

	sensor.dev_id   = BME680_SENSOR_I2C_ADDR;
	sensor.intf     = BME680_I2C_INTF;
	sensor.read     = i2c_read_reg;
	sensor.write    = i2c_write_reg;
	sensor.delay_ms = delay_ms;
	sensor.amb_temp = 25;

	rslt = bme680_init(&sensor);
	if (rslt != BME680_OK)
	{
	    printf("bme680 init failed");
	    return RET_NOK;
	}

	uint8_t set_required_settings;

	/* Set the temperature, pressure and humidity settings */
	sensor.tph_sett.os_hum  = BME680_OS_2X;
	sensor.tph_sett.os_pres = BME680_OS_4X;
	sensor.tph_sett.os_temp = BME680_OS_8X;
	sensor.tph_sett.filter  = BME680_FILTER_SIZE_3;

	/* Set the remaining gas sensor settings and link the heating profile */
	sensor.gas_sett.run_gas = BME680_ENABLE_GAS_MEAS;
	/* Create a ramp heat waveform in 3 steps */
	sensor.gas_sett.heatr_temp = 320; /* degree Celsius */
	sensor.gas_sett.heatr_dur  = 150; /* milliseconds */

	/* Select the power mode */
	/* Must be set before writing the sensor configuration */
	sensor.power_mode = BME680_FORCED_MODE;

	/* Set the required sensor settings needed */
	set_required_settings = BME680_OST_SEL | BME680_OSP_SEL | BME680_OSH_SEL | BME680_FILTER_SEL | BME680_GAS_SENSOR_SEL;

	/* Set the desired sensor configuration */
	rslt = bme680_set_sensor_settings(set_required_settings, &sensor);

	/* Set the power mode */
	rslt = bme680_set_sensor_mode(&sensor);

	return rslt;
}

int main(void) {

	unsigned char buf[LEN8];
	time_t timeout;

	printf("%s %s \n", __DATE__, __TIME__);
	printf("BME280 I2C demo test..\n");

	i2c_bus = metal_i2c_get_device(0);
	if (i2c_bus == NULL) {
		printf("I2C not available \n");
		return RET_NOK;
	}
	metal_i2c_init(i2c_bus, I2C_BAUDRATE, METAL_I2C_MASTER);

	if (BME680_OK != sensor_init()) {
		printf("Senseo device init failed\n");
		return RET_NOK;
	}

	printf("Sensor init ok (id = 0x%02x)\n", sensor.chip_id);
	delay_ms(2000);

	/* Loop and print data from slaves every 1s */
	while (1) {

		struct bme680_field_data data;

#if 0
		if (BME680_OK != bme680_get_sensor_data(&data, &sensor))
		{
		    printf("Can not read from bme680\n");
		}
		else
		{
			printf("temp: %d, baro: %d, humi: %d, gas: %d\n", data.temperature, data.pressure, data.humidity, data.gas_resistance);
		}
#else
		uint8_t test_buf[2];
		i2c_read_reg(BME680_SENSOR_I2C_ADDR, 0xD0, test_buf, 1);
		printf("[%s] id: 0x%02x\n", __TIME__, test_buf[0]);

		i2c_read_reg(BME680_SENSOR_I2C_ADDR, 0x1D, test_buf, 1);
		printf("[%s] status: 0x%02x\n", __TIME__, test_buf[0]);

		i2c_read_reg(BME680_SENSOR_I2C_ADDR, 0x1F, test_buf, 1);
		printf("[%s] data: 0x%02x\n", __TIME__, test_buf[0]);

		i2c_read_reg(BME680_SENSOR_I2C_ADDR, 0x20, test_buf, 1);
		printf("[%s] data: 0x%02x\n", __TIME__, test_buf[0]);

		i2c_read_reg(BME680_SENSOR_I2C_ADDR, 0x21, test_buf, 1);
		printf("[%s] data: 0x%02x\n", __TIME__, test_buf[0]);
#endif

		delay_ms(2000);
	}

	return RET_OK;
}
