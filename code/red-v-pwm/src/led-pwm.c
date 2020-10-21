/******************************************************************************
 hello.c

 WRITTEN BY: Rudy Lo (luhuadong@163.com)
 DATE:  2020-10-21

 ========== RESOURCES ==========
 Freedom E SDK

 ========== DESCRIPTION ==========
 Implement breathing light (not built-in LED) through PWM

 ******************************************************************************/

#include <metal/cpu.h>
#include <metal/pwm.h>
#include <metal/io.h>
#include <metal/machine.h>
#include <metal/uart.h>
#include <stdio.h>
#include <time.h>

/* Using PWM0_PWM1/GPIO1 (Arduino D9) */
#define PWM_DEV_NUM     0
#define PWM_CHANNEL     1

/* Return values */
#define RET_OK          0
#define RET_NOK         1

/* 1s delay macro */
#define WAIT_1S(timeout)                                                       \
  timeout = time(NULL) + 1;                                                    \
  while (timeout > time(NULL))                                                 \
    ;


void delay_ms(int ms)
{
	clock_t begin = clock();

	while ((clock() - begin) < (ms * 1000));
}

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
    printf("LED PWM demo test..\n");

    /* Get a PWM device instance */
    pwm = metal_pwm_get_device(PWM_DEV_NUM);

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
    metal_pwm_set_freq(pwm, PWM_CHANNEL, 1);

    /* Set Duty cycle and phase correct mode */
    metal_pwm_set_duty(pwm, PWM_CHANNEL, 90, METAL_PWM_PHASE_CORRECT_DISABLE);

    /* Start in continuous mode */
    metal_pwm_trigger(pwm, PWM_CHANNEL, METAL_PWM_CONTINUOUS);

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
    //metal_pwm_set_duty(pwm, 2, 90, METAL_PWM_PHASE_CORRECT_DISABLE);
    //metal_pwm_set_duty(pwm, 3, 20, METAL_PWM_PHASE_CORRECT_DISABLE);
#endif

#define REMAIN_TIME   35
#define DUTY_MAX      47

    int i = 0;

    /* Loop forever */
    while (1) {
        /* Wait 1s */
        //WAIT_1S(timeout);
    	for (i=0; i<=DUTY_MAX; i++)
    	{
    		metal_pwm_set_duty(pwm, PWM_CHANNEL, i, METAL_PWM_PHASE_CORRECT_DISABLE);
    		delay_ms(REMAIN_TIME);
    	}
    	delay_ms(200);

    	for (i=DUTY_MAX; i>=0; i--)
    	{
    		metal_pwm_set_duty(pwm, PWM_CHANNEL, i, METAL_PWM_PHASE_CORRECT_DISABLE);
    		delay_ms(REMAIN_TIME);
    	}
    }

    return RET_OK;
}
