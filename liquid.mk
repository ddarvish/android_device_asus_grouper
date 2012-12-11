# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common stuff.
$(call inherit-product, vendor/liquid/config/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grouper
PRODUCT_NAME := liquid_grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.2/JOP40C/527662:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2 JOP40C 527662 release-keys"
