LOCAL_PATH := $(call my-dir)

# Device init scripts

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.mt8173
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/fstab.mt8173
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mt8173.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.mt8173.rc
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.suez.usb.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.suez.usb.rc
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.project.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.project.rc
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.trace.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.trace.rc
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE       := init.ssd.rc
#LOCAL_MODULE_TAGS  := optional eng
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := etc/init.ssd.rc
##LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
#LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.mt8173.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.recovery.mt8173.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.mt8173.rc
#LOCAL_MODULE_STEM  := ueventd.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/ueventd.mt8173.rc
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

