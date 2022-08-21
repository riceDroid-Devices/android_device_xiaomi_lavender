#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common RiceDroid stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# riceDroid Flags
RICE_MAINTAINER := JojiOnThatBeat•ShizukaHinode
RICE_OFFICIAL := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
TARGET_ENABLE_BLUR := true

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(LOCAL_PATH)/device-hidl.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="lavender-user 9 PKQ1.180904.001 V11.0.5.0.PFGMIXM release-keys"

BUILD_FINGERPRINT :="google/raven/raven:12/SQ1D.220205.003/8069835:user/release-keys"
