LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Remove warning from every time you open it
PRODUCT_PROPERTY_OVERRIDES += \
    ro.substratum.verified=true \

# live wallpapers arm64 only
ifneq ($(filter angler bullhead marlin sailfish,$(TARGET_DEVICE)),)
    PRODUCT_PACKAGES += \
        WallpapersBReel \
        libgdx.so \
        libgeswallpapers-jni.so \
        libjpeg.so

    PRODUCT_COPY_FILES += \
        vendor/addons/dragon/prebuilt/lib64/libgdx.so:system/lib64/libgdx.so \
        vendor/addons/dragon/prebuilt/lib64/libgeswallpapers-jni.so:system/lib64/libgeswallpapers-jni.so
endif

# Prebuilts
PRODUCT_PACKAGES += \
    AdAway \
    KernelAdiutor \
    SnapBrowser \
    Substratum \
    Spectrum \
    Turbo \
    LiveWallpapersPicker \
    NexusWallpapersStubPrebuilt \
    WallpaperPickerGooglePrebuilt \
    WallpapersUsTwo
