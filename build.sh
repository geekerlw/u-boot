#!/bin/bash
make clean
make firefly-rk3288_defconfig
make CROSS_COMPILE=arm-linux-gnueabihf- -j16 all
mkimage -n rk3288 -T rksd -d spl/u-boot-spl.bin u-boot-rk3288.img
cat u-boot.bin >> u-boot-rk3288.img
echo -e "\033[1m\033[34m \n-------- Build successful --------\n---- Auther: geekerlw@gmail.com ----\n \033[0m"
