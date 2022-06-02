#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_platform_info.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom.ramdisk

# Overlays
PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSystemUIResTarget

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29

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

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8250-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/instantnoodle/instantnoodle-vendor.mk)
