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
PRODUCT_MODEL := IN2013

PRODUCT_SYSTEM_NAME := OnePlus8_EEA
PRODUCT_SYSTEM_DEVICE := OnePlus8

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8-user 12 RKQ1.211119.001 Q.GDPR.202205172254 release-keys" \
    TARGET_DEVICE=OnePlus8 \
    TARGET_PRODUCT=OnePlus8_EEA

BUILD_FINGERPRINT := OnePlus/OnePlus8_EEA/OnePlus8:12/RKQ1.211119.001/Q.GDPR.202205172254:user/release-keys
