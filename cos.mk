# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common COS stuff.
$(call inherit-product, vendor/cos/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/hero2lte/device.mk)
$(call inherit-product, device/samsung/hero-common/hero-common.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hero2lte
PRODUCT_NAME := cos_hero2lte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# Override build properties.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hl3gxx \
    TARGET_DEVICE=hl3g \
    BUILD_FINGERPRINT="ro.build.fingerprint=samsung/hero2ltexx/hero2lte:7.0/NRD90M/G935FXXU1DQB7:user/release-keys" \
    PRIVATE_BUILD_DESC="hero2ltexx-user 7.0 NRD90M G935FXXU1DQB7 release-keys"
