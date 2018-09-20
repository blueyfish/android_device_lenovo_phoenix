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

# Audio
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_FM := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_RECORD_PLAY_CONCURRENCY := true

# Camera
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /system/bin/cameraserver=22 \
    /system/bin/mediaserver=22 \
    /system/vendor/bin/mm-qcamera-daemon=22

# GPS
TARGET_NO_RPC := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_phoenix
TARGET_RECOVERY_DEVICE_MODULES := libinit_phoenix

# Shims
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib/libmmcamera2_imglib_modules.so|libshim_atomic.so \
    /system/vendor/lib/hw/camera.vendor.msm8916.so|libshim_atomic.so \
    /system/vendor/lib/libmmcamera2_stats_modules.so|libshim_camera.so

# Vendor Interface Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_HARDWARE_PATH)/manifest.xml

# Wi-Fi
TARGET_PROVIDES_WCNSS_QMI := true
