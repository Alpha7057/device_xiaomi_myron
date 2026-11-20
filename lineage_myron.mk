#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from myron device.
$(call inherit-product, device/xiaomi/myron/device.mk)

## Device identifier
PRODUCT_DEVICE := myron
PRODUCT_NAME := lineage_myron
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 25102PCBEG
PRODUCT_MANUFACTURER := Xiaomi

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 16 BP2A.250605.031.A3 16OS3.1.260916.235703688.QCPEGL.S release-keys" \
    BuildFingerprint=POCO/myron_eea/myron:16/BP2A.250605.031.A3/OS3.0.303.0.WPMEUXM:user/release-keys \
    DeviceName=myron \
    DeviceProduct=myron \
    SystemDevice=missi \
    SystemName=missi
