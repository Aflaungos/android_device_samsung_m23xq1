#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m23xq device
$(call inherit-product, device/samsung/m23xq/device.mk)

PRODUCT_NAME := lineage_m23xq
PRODUCT_DEVICE := m23xq
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Samsung F23

PRODUCT_GMS_CLIENTID_BASE := android-samsung
