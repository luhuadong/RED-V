# 使用 Freedom Studio 开发



## GPIO 控制

freedom-e-sdk/freedom-metal/metal/led.h

```c
static void prvSetupHardware( void )
{
	const char * const pcWarningMsg = "At least one of LEDs is null.\n";

	/* This demo will toggle LEDs colors so we define them here */
	led0_red = metal_led_get_rgb("LD0", "red");
	led0_green = metal_led_get_rgb("LD0", "green");
	led0_blue = metal_led_get_rgb("LD0", "blue");
	if ((led0_red == NULL) || (led0_green == NULL) || (led0_blue == NULL))
	{
		write( STDOUT_FILENO, pcWarningMsg, strlen( pcWarningMsg ) );
	}
	else
	{
		// Enable each LED
		metal_led_enable(led0_red);
		metal_led_enable(led0_green);
		metal_led_enable(led0_blue);

		// All Off
		metal_led_on(led0_red);
		metal_led_on(led0_green);
		metal_led_on(led0_blue);
	}
}
```



```c
metal_led_off(led0_green);
```



### blink

```c
/******************************************************************************
    RED-V_blink.c

    WRITTEN BY: Rudy Lo (luhuadong@163.com)
    DATE:  2020-10-20

    ========== RESOURCES ==========
    Freedom E SDK

    ========== DESCRIPTION ==========
    Using the built-in LED. To test with different pin,
    simply modify the reference pin and connect a standard LED
    and 100?O resistor between the respective pin and GND.

  ******************************************************************************/

#include <stdio.h>      //include Serial Library
#include <time.h>       //include Time library
#include <metal/gpio.h> //include GPIO library, https://sifive.github.io/freedom-metal-docs/apiref/gpio.html

//custom write delay function since we do not have one like an Arduino
//not actually number of seconds
void delay(int number_of_microseconds)
{ 
    // Converting time into multiples of a hundred nS
    int hundred_ns = 10 * number_of_microseconds;
    // Storing start time
    clock_t start_time = clock();
    // looping till required time is not achieved
    while (clock() < start_time + hundred_ns);
}

int main (void) 
{
  printf("RED-V Example: Blink\n");

  struct metal_gpio *led0; //make instance of GPIO

  //Note: The sequence of these commands matter!
  //Get gpio device handle, i.e.) define IC pin here where IC's GPIO = 5, pin silkscreen = 13
  //this is the GPIO device index that is referenced from 0, make sure to check the schematic
  led0 = metal_gpio_get_device(0);

  // quick check to see if we set the metal_gpio up correctly, this was based on the "sifive-welcome.c" example code
  if (led0 == NULL) {
    printf("LED is null.\n");
    return 1;
  }

  // Pins are set when initialized so we must disable it when we use it as an input/output
  metal_gpio_disable_input(led0, 5);

  // Set as gpio as output
  metal_gpio_enable_output(led0, 5);

  //Pins have more than one function, make sure we disconnect anything connected... 
  metal_gpio_disable_pinmux(led0, 5); 

  //Turn ON pin 
  metal_gpio_set_pin(led0, 5, 1);

  while (1) 
  {

      //Turn OFF pin
      metal_gpio_set_pin(led0, 5, 0);
      //Use custom "delay" function
      delay(2000000); //2000000 "micro-seconds" ~ 1 second, through experimentation...
      //Turn ON pin
      metal_gpio_set_pin(led0, 5, 1);
      //Use custom "delay" function
      delay(2000000);

  }

  // return
  return 0;
}
```





## PWM 控制

```c
/* Copyright 2019 SiFive, Inc */
/* SPDX-License-Identifier: Apache-2.0 */

#include <metal/cpu.h>
#include <metal/pwm.h>
#include <metal/io.h>
#include <metal/machine.h>
#include <metal/uart.h>
#include <stdio.h>
#include <time.h>

/* Return values */
#define RET_OK 0
#define RET_NOK 1

/* 1s delay macro */
#define WAIT_1S(timeout)                                                       \
  timeout = time(NULL) + 1;                                                    \
  while (timeout > time(NULL))                                                 \
    ;

 /* To enable PWM run in interrupt mode.*/
 //#define ENABLE_INTERRUPTS

struct metal_pwm *pwm;
#ifdef ENABLE_INTERRUPTS
struct metal_cpu *cpu;
struct metal_interrupt *pwm_intr, *cpu_intr;

void pwm_isr0(int pwm_id, void *data) {
    static unsigned int i = 0;

    /* Print interrupt ID and ISR run count
     * Note: Not recommended, but we have nothing else to do here.*/
    printf("id:%u i:%u\n", pwm_id, i++);

    metal_pwm_clr_interrupt((struct metal_pwm*) data, 0);
}

void pwm_isr1(int pwm_id, void *data) {
    static unsigned int i = 0;

    /* Print interrupt ID and ISR run count
     * Note: Not recommended, but we have nothing else to do here.*/
    printf("id:%u i:%u\n", pwm_id, i++);

    metal_pwm_clr_interrupt((struct metal_pwm*) data, 1);
}
#endif

int main(void) {
    time_t timeout;

    printf("%s %s \n", __DATE__, __TIME__);
    printf("PWM demo test..\n");

    /* Get a PWM device instance */
    pwm = metal_pwm_get_device(1);

    if (pwm == NULL) {
        printf("PWM not available \n");
        return RET_NOK;
    }

#ifdef ENABLE_INTERRUPTS
    int pwm_id0, pwm_id1;
    int rc;

    /* Lets get the CPU and and its interrupt */
    cpu = metal_cpu_get(metal_cpu_get_current_hartid());
    if (cpu == NULL) {
        printf("CPU is null.\n");
        return RET_NOK;
    }

    cpu_intr = metal_cpu_interrupt_controller(cpu);
    if (cpu_intr == NULL) {
        printf("CPU interrupt controller is null.\n");
        return RET_NOK;
    }
    metal_interrupt_init(cpu_intr);

    /* Initialize PWM interrupt controller */
    pwm_intr = metal_pwm_interrupt_controller(pwm);
    if (pwm_intr == NULL) {
        printf("PWM interrupt controller is  null.\n");
        return RET_NOK;
    }
    metal_interrupt_init(pwm_intr);

    /* Get id, set interrupt priority, register handler */
    pwm_id0 = metal_pwm_get_interrupt_id(pwm, 0);
    metal_interrupt_set_priority(pwm_intr, pwm_id0, 2);
    rc = metal_interrupt_register_handler(pwm_intr, pwm_id0, pwm_isr0, pwm);

    if (rc != 0) {
        printf("PWM interrupt handler 0 registration failed\n");
        return RET_NOK;
    }

    /* Get id, set interrupt priority, register handler */
    pwm_id1 = metal_pwm_get_interrupt_id(pwm, 1);
    metal_interrupt_set_priority(pwm_intr, pwm_id1, 2);
    rc = metal_interrupt_register_handler(pwm_intr, pwm_id1, pwm_isr1, pwm);

    if (rc != 0) {
        printf("PWM interrupt handler 1 registration failed\n");
        return RET_NOK;
    }
#endif
    /* Enable PWM1 instance */
    metal_pwm_enable(pwm);

    /* Set PWM1 to 1Hz */
    metal_pwm_set_freq(pwm, 0, 1);

    /* Set Duty cycle and phase correct mode */
    metal_pwm_set_duty(pwm, 1, 90, METAL_PWM_PHASE_CORRECT_DISABLE);

    /* Start in continuous mode */
    metal_pwm_trigger(pwm, 0, METAL_PWM_CONTINUOUS);

#ifdef ENABLE_INTERRUPTS
    /* Enable interrupts */
    if (metal_interrupt_enable(cpu_intr, 0)) {
        printf("CPU interrupt enable failed\n");
        return RET_NOK;
    }

    if (metal_interrupt_enable(pwm_intr, pwm_id0)) {
        printf("PWM0 interrupt enable failed\n");
        return RET_NOK;
    }

    if (metal_interrupt_enable(pwm_intr, pwm_id1)) {
        printf("PWM1 interrupt enable failed\n");
        return RET_NOK;
    }

    metal_pwm_cfg_interrupt(pwm, METAL_PWM_INTERRUPT_ENABLE);

#else
    metal_pwm_set_duty(pwm, 2, 90, METAL_PWM_PHASE_CORRECT_DISABLE);
    metal_pwm_set_duty(pwm, 3, 20, METAL_PWM_PHASE_CORRECT_DISABLE);
#endif

    /* Loop forever */
    while (1) {
        /* Wait 1s */
        WAIT_1S(timeout);
    }

    return RET_OK;
}
```



### 呼吸灯

```c
#include "stm32f10x.h"
#include "stm32f10x_gpio.h"
//#include "led.h"
#include "Breath_led.h"
#define bbb 5000

/*
定义三个无符号变量：
i控制亮灭的时间
j控制亮灭的亮度变化   控制低电平的时间
K控制整个呼吸灯的时间

讲解：总的时间为5000us
        bbb-j              bbb(bbb-j)
1、高电平的时间5000us   低电平的时间为0         红灯最亮
3、高电平的时间4000us   低电平的时间为1000
4、高电平的时间3000us   低电平的时间为2000
4、高电平的时间2000us   低电平的时间为3000
5、高电平的时间1000us   低电平的时间为4000
6、高电平的时间0000us   低电平的时间为5000  红灯熄灭
    以上是从最亮到熄灭的过程

    下面是最暗到亮的过程
1、高电平的时间0000us   低电平的时间为5000 红灯最亮
3、高电平的时间1000us   低电平的时间为4000
4、高电平的时间2000us   低电平的时间为3000
4、高电平的时间3000us   低电平的时间为2000
5、高电平的时间4000us   低电平的时间为1000
6、高电平的时间5000us   低电平的时间为0000  红灯熄灭

*/
void led_red_init();

void Breath_led()
{
    led_red_init();//GPIO初始化
    unsigned int i=0,j=0,k;
    for(k=0;k<bbb;k++)//控制整个呼吸灯的时间
    {
        GPIO_ResetBits(GPIOB,GPIO_Pin_5);//点亮红灯
        for(i=0;i<bbb-j;i++);//高电平的时间  一开始最亮
        
        GPIO_SetBits(GPIOB,GPIO_Pin_5);//熄灭红灯
        for(i=0;i<bbb-(bbb-j);i++);    //给低电平的时间
        
        j++;//控制亮度的变化
        if(j==bbb)//当j低电平的时间等于5000时，说明已经快熄灭了
        {
            //j=0;     //从零开始
            for(k=0;k<bbb;k++)
            {
                j--;
                GPIO_ResetBits(GPIOB,GPIO_Pin_5);
                for(i=0;i<bbb-j;i++);
                GPIO_SetBits(GPIOB,GPIO_Pin_5);
                for(i=0;i<bbb-(bbb-j);i++);
            }
        }
    }
}

void led_red_init()
{
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB,ENABLE);
    GPIO_InitTypeDef gpio;
    gpio.GPIO_Mode=GPIO_Mode_Out_PP;
    gpio.GPIO_Pin=GPIO_Pin_5|GPIO_Pin_0|GPIO_Pin_1;
    gpio.GPIO_Speed=GPIO_Speed_50MHz;
    GPIO_Init(GPIOB,&gpio);

    GPIO_SetBits(GPIOB,GPIO_Pin_5|GPIO_Pin_0|GPIO_Pin_1);//默认为低电平

}
```

