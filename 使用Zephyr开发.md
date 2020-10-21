# 使用 Zephyr 开发



## 安装

### 安装 Python

```shell
sudo apt-get install python3
sudo apt-get install python3-dev python python3-pip
sudo pip3 install ipython
sudo pip3 install numpy
sudo pip3 install pyelftools
```

### 安装 CMake 和 Ninja

```shell
sudo apt-get install --no-install-recommends git cmake ninja-build gperf \
ccache dfu-util device-tree-compiler wget \
python3-pip python3-setuptools python3-tk python3-wheel xz-utils file \
make gcc gcc-multilib
```

We'll also need to update CMake on our system, go ahead and download the package [here](https://github.com/Kitware/CMake/releases/download/v3.15.4/cmake-3.15.4.tar.gz). We used **version 3.15.4** on *Ubuntu v18.04.3* when writing this tutorial.

更新 CMake

```shell
cd ~/Downloads
tar xvzf cmake-3.15.4.tar.gz
cd cmake-3.15.4
./configure
make
sudo make install
```

### 安装 West 和 Zephyr RTOS

Zephyr uses a tool called **west** to build code for and flash the RED-V, we'll want to install this as root to avoid any permissions issues. We used version **0.6.3** on *Ubuntu v18.04.3* when writing this tutorial.

```shell
sudo pip3 install west
```

We'll then want to create and initialize our **west** project, to do this, run the following.

```shell
west init zephyrproject
cd zephyrproject
west update
sudo pip3 install -r zephyr/scripts/requirements.txt
```

We'll need the Zephyr SDK as well as this is where all of our toolchains are bundled. Grab it from GitHub and install it in your home directory. If you'd like to install a different version of the SDK, simply change the version number everywhere it shows up.

```shell
cd ~/
wget https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.10.3/zephyr-sdk-0.10.3-setup.run
chmod +x zephyr-sdk-0.10.3-setup.run
./zephyr-sdk-0.10.3-setup.run -- -d ~/zephyr-sdk-0.10.3
export ZEPHYR_TOOLCHAIN_VARIANT=zephyr
export ZEPHYR_SDK_INSTALL_DIR=$HOME/zephyr-sdk-0.10.3
```

We'll also need to update our device tree compiler, follow [the link below](https://packages.ubuntu.com/cosmic/amd64/device-tree-compiler/download) to find an appropriate download.

Run the commands below to install the new DTC.

```shell
cd ~/Downloads
sudo apt install ./device-tree-compiler_1.4.7-1_amd64.deb
```



## Drivers (Zephyr RTOS)



## 示例 (Zephyr RTOS)

### Hello World

Phew, that's all done. Now we can move to the directory that was earlier created when we ran `west init zephyrproject` and build a project.

```shell
cd ..
cd zephyrproject/zephyr
west build -b hifive1_revb samples/hello_world
```

We can now check to make sure our RED-V is connected. You should see a SEGGER device pop up when you run `lsusb`. If it's connected, go ahead and run `west flash`. Note that this may take a couple of tries, sometimes it helps to give the ol' reset button a tap or two and try again.

```shell
west flash
```

**What You Should See**

Once uploaded, try opening a serial terminal to connect to the RED-V. Let's use the GNU screen. If you don't have it installed yet, type the following in the command line.

```shell
sudo apt-get install screen
```

There are two serial ports that the RED-V enumerates to when inserted into the USB port. Type the following command to view the serial ports connected.

```shell
dmesg | grep tty
```

Unplug and replug the RED-V to your USB port and type the command again. The messages that appear multiple times will be the RED-V. In this case, it should either be **ttyACM0** or **ttyACM1**.

Connect to one of the ports using the following command set at **115200** baud.

```shell
screen /dev/ttyACM0 115200
```

Since the example code only prints the message once, we'll need to hit the reset button once on the RED-V. You should see something similar to the Hello Wold example in Freedom Studio.

```shell
Bench Clock Reset Complete

ATE0--> Send Flag error: #255 #255 #255 #255 AT+BLEINIT=0--> Send Flag error: #255 #255 #255 #255 AT+CWMODE=0--> Send Flag error: #255 #255 #255 #255 
***** Booting Zephyr OS build v2.1.0-rc1-259-g77006e896ba0 *****
Hello, World! hifive1_revb
```

To disconnect `CTRL + A` and then `\`. You'll be asked by the application if you would like to exit. Type `y` and `ENTER` to exit the session.

If you want to build a different project, simply delete the `build` directory using the following command to delete the folder. Then run `west build` again for your other project.

```shell
rm -rv build/
```

For those that prefer the GUI, just head to the folder and to manually delete.

### Blinky

Let's try to control the build-in LED on the RED-V. Head to the blink example and modify for GPIO pin 5.

```shell
cd ~/zephyrproject/zephyr/samples/basic/blinky/src
gedit main.c
```

You can also navigate to the example using the GUI to open the blink example.

Once the **modified.c** file is open, change the definition for `LED` from `DT_ALIAS_LED0_GPIOS_PIN` to `5`. We'll need to use the GPIO pin reference for the FE310 as opposed to the silkscreen label on the RED-V. You can also copy and paste the following into the file.

```c
/*
 * Copyright (c) 2016 Intel Corporation
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr.h>
#include <device.h>
#include <drivers/gpio.h>

#define LED_PORT    DT_ALIAS_LED0_GPIOS_CONTROLLER
#define LED     5

/* 1000 msec = 1 sec */
#define SLEEP_TIME  1000

void main(void)
{
    u32_t cnt = 0;
    struct device *dev;

    dev = device_get_binding(LED_PORT);
    /* Set LED pin as output */
    gpio_pin_configure(dev, LED, GPIO_DIR_OUT);

    while (1) {
        /* Set pin to HIGH/LOW every 1 second */
        gpio_pin_write(dev, LED, cnt % 2);
        cnt++;
        k_sleep(SLEEP_TIME);
    }
}
```

After changing, save the changes and hit `CTRL+C` in the terminal window. Head back to the **zephyr** folder to delete the **build** folder if you have not already. Then recompile the blink example and flash it to your RED-V board.

```shell
cd ~/zephyrproject/zephyr/
rm -rv build/
west build -b hifive1_revb samples/basic/blinky
west flash
```

**What You Should See**

Check the built-in LED on the RED-V board. You should see the build-in LED blink every second!



## Troubleshooting

### Freedom Studio

Below is an issue that you may run into when using the RED-V in Freedom Studio.

#### Issues Uploading to the RED-V Again

There are a few reasons why if you have problems uploading code. If you recently uploaded code and the board is still connected to your computer, you'll need to make sure to hit terminate (i.e. the button that looks like a red square) before uploading again. This is because Freedom Studio is still connected to the board in debug mode.

If you uploaded several times to the board and have issues uploading after clicking on the terminate button, try disconnecting the RED-V from your USB port. Then re-insert the board back.

------

### Zephyr RTOS

Below is one issue that you may run into when using the RED-V in Zephry RTOS.

#### Issues Compiling

If you have issues compiling, you may have missed a step when installing the software for the Zephry RTOS. Try going through the command lines again to ensure that the software and tools are installed correctly. You also may need to run the `west build` command a few more times to compile.



## Resources and Going Further

Now that you've successfully got your RED-V up and running, it's time to incorporate it into your own project! For more information, check out the resources below:

- Freedom Studio
    - [Freedom Studio Software Downloads](https://www.sifive.com/boards/#software)
    - [Freedom Studio User Manual (PDF)](https://cdn.sparkfun.com/assets/learn_tutorials/1/1/0/1/freedom-studio-manual-4.7.2-2019-08-2.pdf)
    - [Enable Long Paths for Windows (REG)](https://cdn.sparkfun.com/assets/learn_tutorials/1/0/3/2/EnableLongPaths.reg)
- Zephyr
    - [Getting Started with Zephyr RTOS](https://docs.zephyrproject.org/latest/getting_started/index.html#)
    - [CMake Release](https://github.com/Kitware/CMake/releases/)
    - [Ubuntu Device Tree Compiler](https://packages.ubuntu.com/cosmic/amd64/device-tree-compiler/download)
    - [Segger Software Package](https://www.segger.com/downloads/flasher/)

Or check out the RISC-V assembly and C programming tutorial by Martin Fink from Western Digital using PlatformIO IDE. The board HiFive1 development board which is similar to the RED-V development board. You may need to adjust the values so that the code applies to the GPIO pins on the RED-V's FE310-002.

- [YouTube: RISC-V ASM Tutorial Series](https://www.youtube.com/watch?v=KLybwrpfQ3I&list=PL6noQ0vZDAdh_aGvqKvxd0brXImHXMuLY)

Or check out this blog post for ideas.

《[Implementing FreeRTOS with RISC-V on SparkFun RED-V](https://www.sparkfun.com/news/3334)》



## 参考

- <https://learn.sparkfun.com/tutorials/red-v-development-guide>
- <https://docs.zephyrproject.org/latest/>