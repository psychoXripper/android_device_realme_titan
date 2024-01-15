#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ossi device
$(call inherit-product, device/realme/titan/device.mk)

PRODUCT_DEVICE := titan
PRODUCT_NAME := lineage_titan
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 10 Pro Plus 5G
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="titan-user 13 TP1A.220905.001 1693542148431 release-keys"

BUILD_FINGERPRINT := Realme/titan/titan:12/SP1A.210812.016/1692902291560:user/release-keys
