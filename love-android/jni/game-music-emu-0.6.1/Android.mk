LOCAL_PATH := $(call my-dir)/game-music-emu

include $(CLEAR_VARS)

LOCAL_MODULE    := libgme
FILE_LIST	:= $(wildcard $(LOCAL_PATH)/gme/*.cpp)
LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)

include $(BUILD_SHARED_LIBRARY)
