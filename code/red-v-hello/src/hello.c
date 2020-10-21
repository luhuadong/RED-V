/******************************************************************************
 hello.c

 WRITTEN BY: Rudy Lo (luhuadong@163.com)
 DATE:  2020-10-20

 ========== RESOURCES ==========
 Freedom E SDK

 ========== DESCRIPTION ==========
 Print 'Hello, World!' to the terminal, and flash the built-in LED (blue)

 ******************************************************************************/

#include <stdio.h>
#include <metal/gpio.h>
#include <metal/time.h>

#define LED_PIN    5

void delay_ms(int ms)
{
	clock_t begin = clock();

	while ((clock() - begin) < (ms * 1000));
}

int main()
{
	printf("Hello, World! \n");

	struct metal_gpio *led0 = metal_gpio_get_device(0);
	if (led0 == NULL)
	{
		printf("Not found GPIO device.\n");
	}

	metal_gpio_disable_input(led0, LED_PIN);
	metal_gpio_enable_output(led0, LED_PIN);
	metal_gpio_disable_pinmux(led0, LED_PIN);
	metal_gpio_set_pin(led0, LED_PIN, 1);

	while (1)
	{
		metal_gpio_toggle_pin(led0, LED_PIN);
		delay_ms(500);
	}

	return 0;
}
