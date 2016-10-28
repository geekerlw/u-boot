#!/bin/bash
echo start clean the old compile files
make clean
make firefly-rk3288_defconfig
make CROSS_COMPILE=arm-linux-gnueabihf- -j8 all
mkimage -n rk3288 -T rksd -d spl/u-boot-spl-nodtb.bin u-boot-dtb.bin
echo build success......
