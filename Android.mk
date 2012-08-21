LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
		lsusb.c \
		lsusb-t.c \
		names.c \
		devtree.c \
		usbmisc.c


LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := lsusb

LOCAL_C_INCLUDES += external/libusb/libusb

LOCAL_STATIC_LIBRARIES := libc 

LOCAL_SHARED_LIBRARIES := libusb

LOCAL_CFLAGS += -g -O2

include $(BUILD_EXECUTABLE)
