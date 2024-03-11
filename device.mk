#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# APEX's
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

PRODUCT_SHIPPING_API_LEVEL := 31

# Atrace
PRODUCT_PACKAGES += \
    android.hardware.atrace@1.0-service

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio.common-util \
    android.hardware.audio.common@6.0-util \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio@6.0-impl \
    android.hardware.soundtrigger@2.3-impl \
    audio.primary.default \
    audio.primary.lito \
    audio.r_submix.default \
    audio.sec_primary.default \
    audio.usb.default \
    libqcompostprocbundle.so \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libasphere \
    libaudioeffectoffload \
    libaudiopreprocessing \
    libaudiosaplus_sec \
    libqcbassboost \
    libqcreverb \
    libqcvirt \
    libshoebox \
    libtinycompress

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# AVB
PRODUCT_PACKAGES += \
    q-gsi.avbpubkey \
    r-gsi.avbpubkey \
    s-gsi.avbpubkey

# Bluetooth
PRODUCT_PACKAGES += \
    audio.bluetooth.default \
    com.qualcomm.qti.bluetooth_audio@1.0.vendor \
    android.hardware.bluetooth@1.0-impl-qti \
    audio.bluetooth_qti.default \
    vendor.qti.hardware.bluetooth_audio@2.0-impl \
    libbluetooth_audio_session \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor \
    vendor.qti.hardware.bluetooth_audio@2.1.vendor \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    vendor.qti.hardware.btconfigstore@2.0.vendor \
    vendor.qti.hardware.bluetooth_sar@1.0.vendor \
    vendor.qti.hardware.bluetooth_sar@1.1.vendor \

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.5-legacy.vendor \
    libcamera2ndk_vendor \
    vendor.qti.hardware.camera.device@1.0.vendor \
    vendor.qti.hardware.camera.postproc@1.0-service-impl.vendor \
    vendor.qti.hardware.camera.postproc@1.0.vendor

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    vendor.qti.hardware.display.allocator-service \
    vendor.qti.hardware.display.composer-service \
    vendor.qti.hardware.display.composer@3.0.vendor \
    vendor.qti.hardware.display.mapper@1.0.vendor \
    vendor.qti.hardware.display.mapper@1.1.vendor \
    vendor.qti.hardware.display.mapper@2.0.vendor \
    vendor.qti.hardware.display.mapper@3.0.vendor \
    vendor.qti.hardware.display.mapper@4.0.vendor

PRODUCT_PACKAGES += \
    vendor.display.config@1.11.vendor \
    vendor.display.config@2.0.vendor

PRODUCT_PACKAGES += \
    libdisplayconfig.qti \
    libdisplayconfig.qti.vendor \
    libtinyxml2_1 \
    memtrack.default \
    vndservicemanager \
    gralloc.default

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.3-service.clearkey

PRODUCT_PACKAGES += \
    libdrm

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor \
    libhwbinder.vendor

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# QMI
PRODUCT_PACKAGES += \
    libjson \
    libqti_vndfwk_detect \
    libqti_vndfwk_detect.vendor \
    libvndfwk_detect_jni.qti \
    libvndfwk_detect_jni.qti.vendor

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors-service.samsung-multihal \
    libsensorndkbridge

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/samsung/m23xq/m23xq-vendor.mk)
