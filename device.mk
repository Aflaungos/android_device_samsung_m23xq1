#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_SHIPPING_API_LEVEL := 31

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from vendor blobs
$(call inherit-product, vendor/samsung/m23xq/m23xq-vendor.mk)
