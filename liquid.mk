# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# tablet
$(call inherit-product, device/asus/grouper/device.mk)
$(call inherit-product, vendor/liquid/config/common_full_tablet_wifionly.mk)

# inherit
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# products
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := google
PRODUCT_NAME := liquid_grouper
PRODUCT_MODEL := Google Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.grouper.$(shell date +%m%d%y).$(shell date +%H%M%S)
PRODUCT_LOCALES := en_US en_GB fr_FR it_IT de_DE es_ES cs_CZ zh_TW zh_CN ru_RU ko_KR pl_PL

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=392829 \
    PRODUCT_NAME=nakasi \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="nakasi-user 4.1 JRN84D 392829 release-keys" \
    BUILD_FINGERPRINT="google/nakasi/grouper:4.1/JRN84D/392829:user/release-keys"

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip
