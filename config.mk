LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Prebuilts
PRODUCT_PACKAGES += \
    BenzoBlock \
    KernelAdiutor \
    SnapBrowser \
    Superuser \
    NexusWallpapersStubPrebuilt \
    WallpaperPickerGooglePrebuilt \
    NexusLauncherPrebuilt \
    WallpapersUsTwo

 # wallpaper location prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true

# live wallpapers arm64 only
ifneq ($(filter angler bullhead marlin sailfish,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    WallpapersBReel \
    libgdx.so \
    libgeswallpapers-jni.so \
    libjpeg.so

PRODUCT_COPY_FILES += \
    vendor/addons/lib64/libgdx.so:system/lib64/libgdx.so \
    vendor/addons/lib64/libgeswallpapers-jni.so:system/lib64/libgeswallpapers-jni.so
endif
