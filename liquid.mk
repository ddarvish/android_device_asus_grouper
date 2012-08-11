#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The LiquidSmooth Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# device
$(call inherit-product, device/asus/grouper/device.mk)

# tablet
$(call inherit-product, vendor/liquid/config/common_tablet.mk)

# inherit
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# products
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_NAME := liquid_grouper
PRODUCT_MODEL := Google Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.grouper.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=392829 \
    PRODUCT_NAME=nakasi \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="nakasi-user 4.1 JRN84D 392829 release-keys" \
    BUILD_FINGERPRINT="google/nakasi/grouper:4.1/JRN84D/392829:user/release-keys"
