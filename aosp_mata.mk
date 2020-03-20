# Inherit some common EvolutionX stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)
# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/essential/mata/mata-vendor.mk)

# Device
$(call inherit-product, device/essential/mata/device.mk)

TARGET_RECOVERY_FSTAB := device/essential/mata/rootdir/etc/fstab.mata

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1312

# Device identifiers
PRODUCT_DEVICE := mata
PRODUCT_NAME := aosp_mata
PRODUCT_BRAND := essential
PRODUCT_MODEL := PH-1
PRODUCT_MANUFACTURER := Essential Products
PRODUCT_RELEASE_NAME := mata

TARGET_GAPPS_ARCH := arm64
CUSTOM_BUILD_TYPE := UNOFFICIAL
TARGET_INCLUDE_STOCK_ARCORE := true

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=mata \
        PRIVATE_BUILD_DESC="mata-user 8.1.0 OPM1.180104.092 224 release-keys"

BUILD_FINGERPRINT := essential/mata/mata:8.1.0/OPM1.180104.092/224:user/release-keys

PRODUCT_ACTIONABLE_COMPATIBLE_PROPERTY_DISABLE := true
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

PRODUCT_CHARACTERISTICS := nosdcard