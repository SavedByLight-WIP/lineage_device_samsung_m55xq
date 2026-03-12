#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from qssi device
$(call inherit-product, device/samsung/qssi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := qssi
PRODUCT_NAME := lineage_qssi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M556B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="m55xqddxx-user 15 AP3A.240905.015.A2 M556BXXS4BYH2 release-keys" \
    BuildFingerprint=samsung/m55xqddxx/qssi:15/AP3A.240905.015.A2/M556BXXS4BYH2:user/release-keys
