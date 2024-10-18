#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodle device
$(call inherit-product, device/oneplus/instantnoodle/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_instantnoodle
PRODUCT_DEVICE := instantnoodle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2015

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=OnePlus8 \
    DeviceProduct=OnePlus8 \
    SystemName=OnePlus8 \
    SystemDevice=OnePlus8 \
    BuildDesc="OnePlus8-user 13 RKQ1.211119.001 Q.1870b9f-4227_f18b release-keys" \
    BuildFingerprint=OnePlus/OnePlus8/OnePlus8:13/RKQ1.211119.001/Q.1870b9f-4227_f18b:user/release-keys
