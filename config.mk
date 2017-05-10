LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Prebuilts
PRODUCT_PACKAGES += \
    KernelAdiutor \
    Substratum \
    Spectrum 
 