LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Remove warning from every time you open it
PRODUCT_PROPERTY_OVERRIDES += \
    ro.substratum.verified=true \

# Prebuilts
PRODUCT_PACKAGES += \
    AdAway \
    KernelAdiutor \
    SnapBrowser \
    Substratum \
    Spectrum \
    Turbo \
    DeepDarkness