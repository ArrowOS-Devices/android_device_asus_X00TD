#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common ArrowOS stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus
DEVICE_MAINTAINER := ATANYTHING

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 72 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"
