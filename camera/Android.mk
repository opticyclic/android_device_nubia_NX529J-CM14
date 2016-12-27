LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := liblog libcutils libgui libbinder libutils libui

LOCAL_SRC_FILES := \
    camera_shim.c

LOCAL_MODULE := libshim_camera
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

LOCAL_32_BIT_ONLY := $(BOARD_QTI_CAMERA_32BIT_ONLY)
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    nubia.cpp

LOCAL_SHARED_LIBRARIES := libbinder 

LOCAL_MODULE := libshim_camera_app
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE        := NeoVisionCamera
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := nubia
LOCAL_MODULE_SUFFIX := .apk
LOCAL_SRC_FILES     := NeoVisionCamera.apk
LOCAL_CERTIFICATE   := shared
include $(BUILD_PREBUILT)
