#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSystemUIResTarget

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom.ramdisk

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/row/kona_bmi26x_0.json:$(TARGET_COPY_OUT_ODM)/etc/sensors/config/kona_bmi26x_row.json \
    $(LOCAL_PATH)/configs/sensors/row/kona_mmc5603x_0.json:$(TARGET_COPY_OUT_ODM)/etc/sensors/config/kona_mmc5603x_0_row.json \
    $(LOCAL_PATH)/configs/sensors/vzw/kona_T0_bmi26x_0.json:$(TARGET_COPY_OUT_ODM)/etc/sensors/config/kona_T0_bmi26x_0_vzw.json \
    $(LOCAL_PATH)/configs/sensors/vzw/kona_bmi26x_0.json:$(TARGET_COPY_OUT_ODM)/etc/sensors/config/kona_bmi26x_0_vzw.json \
    $(LOCAL_PATH)/configs/sensors/vzw/kona_mmc5603x_0.json:$(TARGET_COPY_OUT_ODM)/etc/sensors/config/kona_mmc5603x_0_vzw.json

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_SHIPPING_API_LEVEL := 29

# Inherit from oneplus sm8250-common
$(call inherit-product, device/oneplus/sm8250-common/common.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/oneplus/instantnoodle/instantnoodle-vendor.mk)
