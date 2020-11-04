/*
 * Copyright (c) 2006-2020, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author            Notes
 * 2020-10-31     luhuadong         first version
 */

#include <rtdevice.h>

#include <encoding.h>
#include <platform.h>
#include <interrupt.h>

#ifdef RT_USING_PIN

static rt_base_t e310_pin_get(const char *name)
{
}

static void e310_pin_write(rt_device_t dev, rt_base_t pin, rt_base_t value)
{
}

static int e310_pin_read(rt_device_t dev, rt_base_t pin)
{
}

static void e310_pin_mode(rt_device_t dev, rt_base_t pin, rt_base_t mode)
{
}

static rt_err_t e310_pin_attach_irq(struct rt_device *device, rt_int32_t pin,
                                    rt_uint32_t mode, void (*hdr)(void *args), void *args)
{
}

static rt_err_t e310_pin_dettach_irq(struct rt_device *device, rt_int32_t pin)
{
}

static rt_err_t e310_pin_irq_enable(struct rt_device *device, rt_base_t pin,
                                    rt_uint32_t enabled)
{
}

const static struct rt_pin_ops _e310_pin_ops =
{
    e310_pin_mode,
    e310_pin_write,
    e310_pin_read,
    e310_pin_attach_irq,
    e310_pin_dettach_irq,
    e310_pin_irq_enable,
    e310_pin_get,
};

int rt_hw_pin_init(void)
{
    return rt_device_pin_register("pin", &_e310_pin_ops, RT_NULL);
}
INIT_BOARD_EXPORT(rt_hw_pin_init);

#endif /* RT_USING_PIN */