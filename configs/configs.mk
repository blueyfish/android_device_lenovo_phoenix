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

DEVICE_CONFIGS_PATH := device/lenovo/phoenix/configs

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_CONFIGS_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(DEVICE_CONFIGS_PATH)/audio/mixer_paths_skuk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skuk.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_CONFIGS_PATH)/keylayout/hall_sensor.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/hall_sensor.kl \
    $(DEVICE_CONFIGS_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# RIL
PRODUCT_COPY_FILES += \
    $(DEVICE_CONFIGS_PATH)/data/netmgr_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/data/netmgr_config.xml \
    $(DEVICE_CONFIGS_PATH)/data/qmi_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/data/qmi_config.xml \
    $(DEVICE_CONFIGS_PATH)/data/dsi_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/data/dsi_config.xml

# Rootdir
PRODUCT_COPY_FILES += \
    $(DEVICE_CONFIGS_PATH)/rootdir/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom \
    $(DEVICE_CONFIGS_PATH)/rootdir/init.target.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.target.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(DEVICE_CONFIGS_PATH)/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf
