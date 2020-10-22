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

#define LED_PIN    5

/* BME280 sensor modules are connected to I2C0 bus */
#define BME280_SENSOR_I2C_ADDR    0x76
#define BME280_SENSOR_ID          0x60

#define BME680_SENSOR_I2C_ADDR    0x77
#define BME680_SENSOR_ID          0x61

#define CCS811_SENSOR_I2C_ADDR    0x5B
#define CCS811_SENSOR_ID          0x81

#define CCS811_REG_STATUS                        0x00
#define CCS811_REG_MEAS_MODE                     0x01
#define CCS811_REG_ALG_RESULT_DATA               0x02
#define CCS811_REG_RAW_DATA                      0x03
#define CCS811_REG_ENV_DATA                      0x05
#define CCS811_REG_THRESHOLDS                    0x10
#define CCS811_REG_BASELINE                      0x11
#define CCS811_REG_HW_ID                         0x20
#define CCS811_REG_HW_VERSION                    0x21
#define CCS811_REG_FW_BOOT_VERSION               0x23
#define CCS811_REG_FW_APP_VERSION                0x24
#define CCS811_REG_INTERNAL_STATE                0xA0
#define CCS811_REG_ERROR_ID                      0xE0
#define CCS811_REG_SW_RESET                      0xFF

#define CCS811_BOOTLOADER_APP_ERASE              0xF1
#define CCS811_BOOTLOADER_APP_DATA               0xF2
#define CCS811_BOOTLOADER_APP_VERIFY             0xF3
#define CCS811_BOOTLOADER_APP_START              0xF4

#define CCS811_HW_ID                             0x81

typedef enum
{
    CCS811_MODE_0,      /* Idle (Measurements are disabled in this mode) */
    CCS811_MODE_1,      /* Constant power mode, IAQ measurement every second */
    CCS811_MODE_2,      /* Pulse heating mode IAQ measurement every 10 seconds */
    CCS811_MODE_3,      /* Low power pulse heating mode IAQ measurement every 60 seconds */
    CCS811_MODE_4       /* Constant power mode, sensor measurement every 250ms */

} ccs811_mode_t;

struct ccs811_meas_mode
{
    uint8_t       thresh;
    uint8_t       interrupt;
    ccs811_mode_t mode;
};


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

static int read_word_from_command(uint8_t cmd[], uint8_t cmdlen, uint16_t delayms, uint8_t *readdata, uint8_t readlen)
{
	int ret = 0;

#if 1
    /* Request */
	metal_i2c_write(i2c_bus, CCS811_SENSOR_I2C_ADDR, cmdlen, cmd, METAL_I2C_STOP_DISABLE);
    //rt_i2c_master_send(bus, CCS811_I2C_ADDRESS, RT_I2C_WR, cmd, cmdlen);

    delay_ms(delayms);

    /* If not need reply */
    if (readlen == 0) return RET_OK;

    /* Response */
    ret = metal_i2c_read(i2c_bus, CCS811_SENSOR_I2C_ADDR, readlen, readdata, METAL_I2C_STOP_ENABLE);
    //rt_i2c_master_recv(bus, CCS811_I2C_ADDRESS, RT_I2C_RD, readdata, readlen)
#else
    ret = metal_i2c_transfer(i2c_bus, CCS811_SENSOR_I2C_ADDR, cmd, cmdlen, readdata, readlen);
#endif

    return ret;
}

static int bme680_sensor_init(void)
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


static int ccs811_set_measure_mode(void *args)
{
    struct ccs811_meas_mode *meas = (struct ccs811_meas_mode *)args;
    uint8_t cmd[2] = {0};

    cmd[0] = CCS811_REG_MEAS_MODE;
    cmd[1] = (meas->thresh << 2) | (meas->interrupt << 3) | (meas->mode << 4);

    if (read_word_from_command(cmd, 2, 10, NULL, 0))
        return RET_NOK;

    return RET_OK;
}

static int ccs811_get_data(uint16_t reply[], const size_t len)
{
    if (len < 2)
        return RET_NOK;

    uint8_t cmd[1] = {CCS811_REG_ALG_RESULT_DATA};
    uint8_t buffer[8] = {0};

    if (read_word_from_command(cmd, 1, 10, buffer, 8))
        return RET_NOK;

    reply[0] = (((uint16_t)buffer[0] << 8) | (uint16_t)buffer[1]);  /* eCO2 */
    reply[1] = (((uint16_t)buffer[2] << 8) | (uint16_t)buffer[3]);  /* TVOC */

    return RET_OK;
}

static int ccs811_sensor_init(void)
{
	uint8_t cmd[5] = {0};
	uint8_t hardware_id = 0;

	/* Soft reset */
	cmd[0] = CCS811_REG_SW_RESET;
	cmd[1] = 0x11;
	cmd[2] = 0xE5;
	cmd[3] = 0x72;
	cmd[4] = 0x8A;
	if (read_word_from_command(cmd, 5, 10, NULL, 0))
	{
	    return RET_NOK;
	}

	delay_ms(200);

	/* Get sensor id */
	cmd[0] = CCS811_REG_HW_ID;
	//if (read_word_from_command(cmd, 1, 10, &hardware_id, 1))
	//    return RET_NOK;

	metal_i2c_transfer(i2c_bus, CCS811_SENSOR_I2C_ADDR, cmd, 1, &hardware_id, 1);

	if (hardware_id != CCS811_HW_ID)
	{
	    printf("sensor hardware id not 0x%x\n", CCS811_HW_ID);
	    return RET_NOK;
	}

	/* Start app */
	cmd[0] = CCS811_BOOTLOADER_APP_START;
	if (read_word_from_command(cmd, 1, 10, NULL, 0))
	    return RET_NOK;

	/* Set measurement mode */
	//setMeasurementMode(0,0,eMode4);
	struct ccs811_meas_mode meas = {0, 0, CCS811_MODE_4};
	ccs811_set_measure_mode(&meas);

	/* Set env data */
	//setInTempHum(25, 50);
	//struct ccs811_envdata envdata = {25, 50};
	//_ccs811_set_envdata(i2c_bus, &envdata);

	return RET_OK;
}

int main(void) {

	unsigned char buf[LEN8];
	time_t timeout;

	printf("%s %s \n", __DATE__, __TIME__);
	printf("BME680 I2C demo test..\n");

	struct metal_gpio *led0 = metal_gpio_get_device(0);
	if (led0 == NULL)
	{
		printf("Not found LED device.\n");
	}

	metal_gpio_disable_input(led0, LED_PIN);
	metal_gpio_enable_output(led0, LED_PIN);
	metal_gpio_disable_pinmux(led0, LED_PIN);
	metal_gpio_set_pin(led0, LED_PIN, 1);


	i2c_bus = metal_i2c_get_device(0);
	if (i2c_bus == NULL) {
		printf("I2C not available \n");
		return RET_NOK;
	}
	metal_i2c_init(i2c_bus, I2C_BAUDRATE, METAL_I2C_MASTER);

#if 1
	if (BME680_OK != bme680_sensor_init()) {
		printf("Senseo device init failed\n");
		return RET_NOK;
	}
#else
	if (RET_OK != ccs811_sensor_init()) {
		printf("Senseo device init failed\n");
		return RET_NOK;
	}
#endif

	printf("Sensor init ok (id = 0x%02x)\n", sensor.chip_id);
	delay_ms(1000);

	uint16_t measure_data[2] = {0};

	/* Loop and print data from slaves every 1s */
	while (1) {

#if 1
		struct bme680_field_data data = {0};

		if (BME680_OK != bme680_get_sensor_data(&data, &sensor))
		{
		    printf("Can not read from bme680\n");
		}
		else
		{
			printf("temp: %d, baro: %d, humi: %d, gas: %d\n", data.temperature, data.pressure, data.humidity, data.gas_resistance);
		}
#else
		if (ccs811_get_data(measure_data, 2))
		{
			printf("Can not read from ccs811\n");
		}
		else
		{
			printf("eco2: %d, tvoc: %d\n", measure_data[0], measure_data[1]);
		}
#endif

		metal_gpio_toggle_pin(led0, LED_PIN);
		delay_ms(500);
		metal_gpio_toggle_pin(led0, LED_PIN);
		delay_ms(500);
		metal_gpio_toggle_pin(led0, LED_PIN);
		delay_ms(500);
		metal_gpio_toggle_pin(led0, LED_PIN);
		delay_ms(500);
	}

	return RET_OK;
}
