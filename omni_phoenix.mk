$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_COPY_FILES += device/xiaomi/phoenix/prebuilt/zImage:kernel

PRODUCT_DEVICE := phoenix
PRODUCT_NAME := omni_phoenix
PRODUCT_BRAND := Poco
PRODUCT_MODEL := phoenix
PRODUCT_MANUFACTURER := iaomi

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/recovery.fstab:root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/sbin/permissive.sh:root/sbin/permissive.sh \
    $(LOCAL_PATH)/recovery/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.hardware.rc:root/init.recovery.hardware.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.rc:root/ueventd.rc
