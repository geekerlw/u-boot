#!/bin/bash
echo start flash bootloader
sudo upgrade_tool db prebuild/rk3288_boot.bin
sudo upgrade_tool wl 64 u-boot-dtb.bin
sudo upgrade_tool rd
echo flash u-boot success......
