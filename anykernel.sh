### AnyKernel3 Ramdisk Mod Script
properties() { '
kernel.string=LOS20 joan ReSukiSU+SUSFS
do.devicecheck=0
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
'; }

BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;

. tools/ak3-core.sh;
split_boot;
flash_boot;