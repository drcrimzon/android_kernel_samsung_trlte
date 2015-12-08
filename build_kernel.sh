#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/arm-eabi-4.7/bin/arm-eabi-

mkdir output

make -C $(pwd) O=output apq8084_sec_defconfig VARIANT_DEFCONFIG=apq8084_sec_trlte_spr_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output ARCH=arm -j12

cp output/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
