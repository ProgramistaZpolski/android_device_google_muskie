# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common Tequila stuff.
$(call inherit-product, vendor/tequila/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/muskie/aosp_walleye.mk)

include device/google/wahoo/device-tequila.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := tequila_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:11/RP1A.201005.004.A1/6934943:user/release-keys

$(call inherit-product, vendor/google/walleye/walleye-vendor.mk)
