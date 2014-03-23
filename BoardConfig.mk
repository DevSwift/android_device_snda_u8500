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

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_STE := true

# Camera
USE_CAMERA_STUB := true

# Kernel information
TARGET_KERNEL_SOURCE := kernel/snda/u8500
TARGET_KERNEL_CONFIG := cm_u8500_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE :=
BOARD_FORCE_RAMDISK_ADDRESS := 0x02000000

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/snda/u8500/prebuilt/system/lib/egl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HAVE_SNDA_WIFI := true
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/cw1200_wlan.ko
WIFI_DRIVER_MODULE_NAME := cw1200_wlan
WIFI_DRIVER_LOADER_DELAY := 1000000

#Fm Radio
#BOARD_USES_STE_FM := true
#COMMON_GLOBAL_CFLAGS +=-DSTE_FM

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_INITRC := device/snda/u8500/recovery/init.rc

# Custom boot
TARGET_PROVIDES_INIT_RC := true
BOARD_CUSTOM_BOOTIMG_MK := device/snda/u8500/mkbootimg.mk

# UMS
BOARD_UMS_LUNFILE := "/sys/devices/soc0/musb-ux500.0/musb-hdrc/gadget/lun%d/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc0/musb-ux500.0/musb-hdrc/gadget/lun%d/file"

# OTA
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/snda/u8500/releasetools/snda_ota_from_target_files
TARGET_OTA_ASSERT_DEVICE := u8500
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=s1w_u8500 BUILD_FINGERPRINT=Bambookphone/s1w_u8500/u8500:4.1.2/NS4.1/13436:user/release-keys PRIVATE_BUILD_DESC="s1w_u8500-user 4.1.2 NS4.1 13436 release-keys"

