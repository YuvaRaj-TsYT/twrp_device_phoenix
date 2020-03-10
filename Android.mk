# Replace with your Device Name's Value. Mine is Primo_RX5.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value, Mine is WALTON 

ifneq ($(filter phoenix,$(TARGET_DEVICE)),)

LOCAL_PATH := device/xiaomi/phoenix

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
