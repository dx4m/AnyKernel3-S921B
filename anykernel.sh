### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=KernelSU/SukiSU Kernel by dx4m @ xda-developers
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=1
device.name1=e1s
device.name2=e2s
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install
## boot files attributes
boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
} # end attributes

# boot shell variables
BLOCK=/dev/block/by-name/boot;
IS_SLOT_DEVICE=0;

. tools/ak3-core.sh;

split_boot;
flash_boot;
