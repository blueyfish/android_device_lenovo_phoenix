#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_HARDWARE_PATH := device/lenovo/phoenix/hardware

# Audio
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.a2dp@1.0-impl \
    android.hardware.bluetooth.audio@2.0-impl \
    audio.bluetooth.default

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.msm8916 \
    Snap

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

PRODUCT_COPY_FILES += \
    $(DEVICE_HARDWARE_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(DEVICE_HARDWARE_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(DEVICE_HARDWARE_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(DEVICE_HARDWARE_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(DEVICE_HARDWARE_PATH)/gps/sap.conf:system/etc/sap.conf

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.phoenix

# Sensor HAL
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    calmodule.cfg \
    libcalmodule_memsic \
    sensors.msm8916

# Shims
PRODUCT_PACKAGES += \
    libshim_atomic \
    libshim_camera

# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm/arch-arm-armv7-a-neon/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-lite-v29.so
