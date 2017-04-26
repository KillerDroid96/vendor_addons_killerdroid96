LOCAL_PATH := $(call my-dir)

#AdAway
include $(CLEAR_VARS)
LOCAL_MODULE := AdAway
LOCAL_SRC_FILES := AdAway.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH  := $(TARGET_OUT_APPS)
LOCAL_MODULE_TAGS := optional
LOCAL_PREBUILT_JNI_LIBS_arm := \
	@lib/armeabi/libblank_webserver_exec.so \
	@lib/armeabi/libtcpdump_exec.so
include $(BUILD_PREBUILT)

#SnapBrowser
include $(CLEAR_VARS)
LOCAL_MODULE       := SnapBrowser
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES    := SnapBrowser.apk
LOCAL_CERTIFICATE  := PRESIGNED
LOCAL_MODULE_PATH  := $(TARGET_OUT_APPS)
LOCAL_OVERRIDES_PACKAGES := Browser Browser2
LOCAL_PREBUILT_JNI_LIBS_arm := \
	@lib/armeabi-v7a/libc++_shared.so \
	@lib/armeabi-v7a/libicui18n.cr.so \
	@lib/armeabi-v7a/libicuuc.cr.so \
	@lib/armeabi-v7a/libswecore.so \
	@lib/armeabi-v7a/libswe.so \
	@lib/armeabi-v7a/libswev8.so
include $(BUILD_PREBUILT)

# Substratum
include $(CLEAR_VARS)
LOCAL_MODULE := Substratum
LOCAL_SRC_FILES := Substratum.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH  := $(TARGET_OUT_APPS)
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

# Spectrum
include $(CLEAR_VARS)
LOCAL_MODULE := Spectrum
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := Spectrum.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Turbo
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := Turbo.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := DeepDarkness
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := DeepDarkness.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)