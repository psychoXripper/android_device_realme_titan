#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)


# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Rootdir
PRODUCT_PACKAGES += \
    fstab.mt6877 \
    fstab.mt6877.rc \
    init.cgroup.rc \
    init.connectivity.rc \
    init.thermald.rc \
    init.modem.rc \
    init.mt6877.rc \
    init.mt6877.usb.rc \
    init.project.rc \
    init.sensor_2_0.rc \
    ueventd.mt6877.rc


# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 33

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/realme/titan/titan-vendor.mk)
