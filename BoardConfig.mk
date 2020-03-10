LOCAL_PATH := device/xiaomi/phoenix

TARGET_BOARD_PLATFORM := SM7150-AB             
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := X2     

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true         
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 131072
BOARD_FLASH_BLOCK_SIZE := 0
BOARD_HAS_NO_REAL_SDCARD := true
#BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# TWRP stuff
TW_EXCLUDE_SUPERSU := true                     # true/false: Add SuperSU or not
TW_INCLUDE_CRYPTO := true                      # true/false: Add Data Encryption Support or not
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := true
DEVICE_RESOLUTION := 1080x2400                  
TARGET_SCREEN_HEIGHT := 1080                     
TARGET_SCREEN_WIDTH := 2400                      
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 50                   # Set custom brightness, low is better
TW_INCLUDE_NTFS_3G := true                    # Include NTFS Filesystem Support
TW_INCLUDE_FUSE_EXFAT := true                 # Include Fuse-ExFAT Filesystem Support
TWRP_INCLUDE_LOGCAT := true                   # Include LogCat Binary
TW_INCLUDE_FB2PNG := true                     # Include Screenshot Support
TW_DEFAULT_LANGUAGE := en                     # Set Default Language 
TW_EXTRA_LANGUAGES := false

# Kernel
TARGET_IS_64_BIT := true                      
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=1 androidboot.usbcontroller=a600000.dwc3 earlycon=msm_geni_serial,0x880000 loop.max_part=7 androidboot.selinux=permissive androidboot.usbconfigfs=true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

TARGET_BOARD_SUFFIX := _64                    
TARGET_USES_64_BIT_BINDER := true             

ifeq ($(TARGET_IS_64_BIT),true)
include device/generic/twrpbuilder/BoardConfig64.mk 
else
include device/generic/twrpbuilder/BoardConfig32.mk  
endif
