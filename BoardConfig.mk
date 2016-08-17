# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8992
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8992
TARGET_BOARD_PLATFORM_GPU := qcom-adreno418
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Android boot image creation
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.hardware=pplus
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x0000000 --ramdisk_offset 0x02200000 --tags_offset 0x00000100 --dt device/lge/pplus/dtb
TARGET_PREBUILT_KERNEL := device/lge/pplus/kernel
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4492099584
BOARD_USERDATAIMAGE_PARTITION_SIZE := 60451663872
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := tru

####################################################
### TWRP Recovery Edition: Updated: 02/07/2016   ###
####################################################

# TW_INTERNAL_STORAGE_PATH := "/data/media"
# TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
# TW_EXTERNAL_STORAGE_PATH := "/external_sd"
# TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
# TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
# TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"
TARGET_RECOVERY_DEVICE_DIRS += device/lge/pplus


# Keymaster - Wait for qseecom to load
## TARGET_KEYMASTER_WAIT_FOR_QSEE := true
## TARGET_HW_DISK_ENCRYPTION := true

BOARD_HAS_NO_REAL_SDCARD := true

# TW_INCLUDE_JPEG := true
# TW_INCLUDE_NTFS_3G := true
# TW_FLASH_FROM_STORAGE := true
# TW_INPUT_BLACKLIST := "hbtp_vm"
TW_DEFAULT_EXTERNAL_STORAGE := true

# Edited for TWRP Recovery
# TW_TARGET_USES_QCOM_BSP := true
TW_MTP_DEVICE := "/dev/mtp_usb"

TW_THEME := portrait_hdpi
TWRP_INCLUDE_LOGCAT := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_HAS_DOWNLOAD_MODE := true
BOARD_HAS_LARGE_FILESYSTEM := true
DEVICE_RESOLUTION := 1440x2560
TW_NO_USB_STORAGE := true
TW_CRYPTO_FS_TYPE := "ext4"
# TW_NO_EXFAT_FUSE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_SUPPRESS_EMMC_WIPE := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_EXTERNAL_STORAGE := true
# TW_INCLUDE_JB_CRYPTO := true
# TW_INCLUDE_L_CRYPTO := true
TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 175
TARGET_USES_LOGD := true
TW_SCREEN_BLANK_ON_BOOT := true
# TW_NO_SCREEN_TIMEOUT := false
TW_EXCLUDE_SUPERSU := true

TARGET_RECOVERY_DEVICE_MODULES := libbinder libgui libui libEGL libGLES_trace libGLESv2 libprotobuf-cpp-lite libsync # twrpdec
TW_RECOVERY_ADDITIONAL_RELINK_FILES := $(OUT)/system/lib64/libbinder.so $(OUT)/system/lib64/libgui.so $(OUT)/system/lib64/libui.so $(OUT)/system/lib64/libEGL.so $(OUT)/system/lib64/libGLES_trace.so $(OUT)/system/lib64/libGLESv2.so $(OUT)/system/lib64/libprotobuf-cpp-lite.so $(OUT)/system/lib64/libsync.so # $(OUT)/recovery/root/sbin/twrpdec
# TWRP_INCLUDE_LOGCAT := true


#####################################################
### MultiRom Recovery Updated: 02/07/2016         ###
#####################################################

TARGET_RECOVERY_IS_MULTIROM := false

MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/lge/pplus/multirom/mr_init_devices.c
# MR_RD_ADDR := 0x2200000
MR_DPI := xhdpi
MR_DPI_MUL := 1.5
MR_FSTAB := device/lge/pluss/multirom/twrp.fstab
# MR_KEXEC_MEM_MIN := 0x0ff00000
MR_KEXEC_MEM_MIN := 0x0
MR_KEXEC_DTB := true
MR_USE_MROM_FSTAB := true
MR_DPI_FONT := 420
MR_DEFAULT_BRIGHTNESS := 80
# MR_CONTINUOUS_FB_UPDATE := true
MR_PIXEL_FORMAT := "RGBX_8888"
MR_ENCRYPTION := false
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/lge/pplus/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
TARGET_USERIMAGES_USE_F2FS := true

#MultiRom Hooks, So that we can run stock roms as secondary
MR_DEVICE_HOOKS := device/lge/pplus/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4

# SELinux policies
# include device/qcom/sepolicy/sepolicy.mk

# Enable Minikin text layout engine
# USE_MINIKIN := true


# inherit from the proprietary version
-include vendor/lge/h901/BoardConfigVendor.mk
