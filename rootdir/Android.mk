LOCAL_PATH:= $(call my-dir)

# Configuration scripts
include $(CLEAR_VARS)
LOCAL_MODULE       := init.post_boot.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES    := init.post_boot.sh
LOCAL_VENDOR_MODULE    := true
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := wireless-regdomain.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES    := wireless-regdomain.sh
LOCAL_VENDOR_MODULE    := true
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)
