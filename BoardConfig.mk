# inherit from the proprietary version
-include vendor/snda/u8500/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH += device/snda/u8500/include

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := montblanc
TARGET_BOOTLOADER_BOARD_NAME := montblanc
BOARD_USES_STE_HARDWARE := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Partition information
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 655360000
BOARD_USERDATA_PARTITION_SIZE := 1170210816
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VOLD_MAX_PARTITIONS := 16

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR1_AUDIO_BLOB

# kitkat audio
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
# kitkat libui
BOARD_HAVE_PIXEL_FORMAT_INFO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/snda/u8500/hardware/bluetooth
#BOARD_BLUEDROID_VENDOR_CONF := device/snda/u8500/hardware/libbt-vendor/include/vnd_u8500.txt

# Camera
USE_CAMERA_STUB := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# Kernel information
TARGET_KERNEL_SOURCE := kernel/snda/u8500
TARGET_KERNEL_CONFIG := cm_u8500_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE :=
BOARD_MKBOOTIMG_ARGS := 0x02000000

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/snda/u8500/prebuilt/system/lib/egl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE -DSTE_SNDA_HARDWARE

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X_TI
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/cw1200_wlan.ko
WIFI_DRIVER_MODULE_NAME := cw1200_wlan
WIFI_DRIVER_LOADER_DELAY := 1000000
USES_TI_MAC80211 := true
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211

#Fm Radio
#BOARD_USES_STE_FMRADIO := true
#COMMON_GLOBAL_CFLAGS +=-DSTE_FM

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_INITRC := device/snda/u8500/recovery/init.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/snda/u8500/recovery/graphics.c
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB = device/snda/u8500/prebuilt/root/fstab.st-ericsson

# Custom boot
TARGET_PROVIDES_INIT_RC := true
BOARD_CUSTOM_BOOTIMG_MK := device/snda/u8500/mkbootimg.mk

# UMS
BOARD_UMS_LUNFILE := "/sys/devices/soc0/musb-ux500.0/musb-hdrc/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc0/musb-ux500.0/musb-hdrc/gadget/lun%d/file"

# OTA
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/snda/u8500/releasetools/snda_ota_from_target_files
TARGET_OTA_ASSERT_DEVICE := u8500
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=s1w_u8500 BUILD_FINGERPRINT=Bambookphone/s1w_u8500/u8500:4.1.2/NS4.1/13436:user/release-keys PRIVATE_BUILD_DESC="s1w_u8500-user 4.1.2 NS4.1 13436 release-keys"

