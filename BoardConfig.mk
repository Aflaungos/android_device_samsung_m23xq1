#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/m23xq

# Display
TARGET_SCREEN_DENSITY := 440

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := m23xq

# Inherit from the proprietary version
include vendor/samsung/m23xq/BoardConfigVendor.mk
