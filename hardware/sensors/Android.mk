LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := sensors.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

LOCAL_CFLAGS += -DLOG_TAG=\"Sensors\"

LOCAL_C_INCLUDES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SRC_FILES :=	\
	sensors.cpp \
	SensorBase.cpp \
	LightSensor.cpp \
	ProximitySensor.cpp \
	CompassSensor.cpp \
	Accelerometer.cpp \
	InputEventReader.cpp \
	CalibrationManager.cpp \
	NativeSensorManager.cpp \
	VirtualSensor.cpp \
	sensors_XML.cpp

LOCAL_C_INCLUDES += \
	external/libxml2/include \
	external/icu/icu4c/source/common

LOCAL_SHARED_LIBRARIES := liblog libcutils libdl libxml2 libutils

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE := CompassAlgo
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

ifdef TARGET_2ND_ARCH
LOCAL_SRC_FILES_32 := algo/memsic/CompassAlgo_32.a
LOCAL_SRC_FILES_64 := algo/memsic/CompassAlgo.a
LOCAL_MULTILIB := both
else
LOCAL_SRC_FILES := algo/memsic/CompassAlgo_32.a
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcalmodule_memsic
LOCAL_SRC_FILES := \
                  algo/memsic/memsic_wrapper.c

LOCAL_STATIC_LIBRARIES := CompassAlgo
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_MODULE_TAGS := optional

ifdef TARGET_2ND_ARCH
LOCAL_MODULE_PATH_32 := $(TARGET_OUT_VENDOR)/lib
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_VENDOR)/lib64
else
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
endif

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := calmodule.cfg
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)
LOCAL_SRC_FILES := calmodule.cfg

include $(BUILD_PREBUILT)
