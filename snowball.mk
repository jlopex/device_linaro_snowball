# The snowball product that is specialized for snowball.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/linaro/common/common.mk)
$(call inherit-product, device/linaro/snowball/device.mk)
$(call inherit-product-if-exists, vendor/st-ericsson/snowball/device-snowball.mk)

PRODUCT_BRAND := snowball
PRODUCT_DEVICE := snowball
PRODUCT_NAME := snowball
PRODUCT_MODEL := snowball
PRODUCT_MANUFACTURER := ST-Ericsson
