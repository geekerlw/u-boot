#!/bin/bash
sudo rkdeveloptool db prebuild/rk3288_ubootloader_v1.01.06.bin
sudo rkdeveloptool wl 0x40 u-boot-rk3288.img
sudo rkdeveloptool rd
echo -e "\033[1m\033[34m \n-------- Flash successful --------\n---- Auther: geekerlw@gmail.com ----\n \033[0m"
