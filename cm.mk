# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, device/lenovo/phoenix/full_phoenix.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := phoenix
PRODUCT_NAME := cm_phoenix
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo PHAB Plus
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="phoenix" \
    PRODUCT_NAME="phoenix" \
    BUILD_FINGERPRINT="Lenovo/PB1-770M/PB1-770M:5.1.1/S100/PB1-770M_S000409_160923_ROW:user/release-keys" \
    PRIVATE_BUILD_DESC="msm8916_64-user 5.1.1 LMY47V eng.build.20160923.120019 release-keys"
