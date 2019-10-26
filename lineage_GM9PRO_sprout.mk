# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from GM9PRO_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := gm
PRODUCT_DEVICE := GM9PRO_sprout
PRODUCT_MANUFACTURER := gm
PRODUCT_NAME := lineage_GM9PRO_sprout
PRODUCT_MODEL := GM 9 Pro

PRODUCT_GMS_CLIENTID_BASE := android-gm
TARGET_VENDOR := gm
TARGET_VENDOR_PRODUCT_NAME := GM9PRO_sprout
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="gm9pro-user 9 PKQ1.180904.001 254 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := GM/GM9PRO/GM9PRO_sprout:9/PKQ1.180904.001/254:user/release-keys
