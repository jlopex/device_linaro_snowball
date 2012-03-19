# config.mk
# 
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := snowball 
TARGET_NO_BOOTLOADER := true # Uses u-boot instead 
TARGET_NO_KERNEL := false
KERNEL_CONFIG := u8500_android_defconfig
TARGET_USE_UBOOT := true
UBOOT_CONFIG := u8500_snowball_config
TARGET_USE_XLOADER := false
TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := false
HARDWARE_OMX := false
USE_CAMERA_STUB := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := private_lib_driver_cmd
WIFI_DRIVER_MODULE_PATH := /system/modules/cw1200_wlan.ko
WIFI_DRIVER_MODULE_NAME := cw1200_wlan

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 16777216
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 4096

#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

TARGET_USE_GATOR:= true
TARGET_GATOR_WITH_MALI_SUPPORT := MALI_400
TARGET_MALI_DRIVER_DIR := drivers/gpu/mali/mali400ko/driver/src/devicedrv/mali

# Snowball uses a Nova A9500 -- Dual-Core Cortex A9
TARGET_EXTRA_CFLAGS += $(call cc-option,-mtune=cortex-a9,$(call cc-option,-mtune=cortex-a8)) $(call cc-option,-mcpu=cortex-a9,$(call cc-option,-mcpu=cortex-a8))
