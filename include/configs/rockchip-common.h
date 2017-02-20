/*
 * (C) Copyright 2016 Rockchip Electronics Co., Ltd
 *
 * SPDX-License-Identifier:     GPL-2.0+
 */

#ifndef _ROCKCHIP_COMMON_H_
#define _ROCKCHIP_COMMON_H_
#include <linux/sizes.h>

#ifndef CONFIG_SPL_BUILD
#include <config_distro_defaults.h>

/* First try to boot from SD (index 0), then eMMC (index 1 */
#define BOOT_TARGET_DEVICES(func) \
	func(MMC, mmc, 0) \
	func(MMC, mmc, 1)

 /* Enable gpt partition table */
#define CONFIG_CMD_GPT
#define CONFIG_RANDOM_UUID
#define CONFIG_PARTITION_UUIDS
#define PARTS_DEFAULT \
	"uuid_disk=${uuid_gpt_disk};" \
	"name=boot,start=16M,size=64M,bootable,uuid=${uuid_gpt_boot};" \
	"name=rootfsbak,start=80M,size=4096M,uuid=${uuid_gpt_rootfsbak};" \
	"name=rootfs,size=-,uuid=${uuid_gpt_rootfs};\0" \

#endif

#endif /* _ROCKCHIP_COMMON_H_ */
