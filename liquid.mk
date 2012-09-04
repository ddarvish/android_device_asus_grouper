# name
PRODUCT_RELEASE_NAME := Nexus7

# device
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# tablet
$(call inherit-product, vendor/liquid/config/common_tablet.mk)

# nfc
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# products
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_NAME := liquid_grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.grouper.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=402395 \
    PRODUCT_NAME=nakasi \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03D 402395 release-keys" \
    BUILD_FINGERPRINT="google/nakasi/grouper:4.1.1/JRO03D/402395:user/release-keys"
