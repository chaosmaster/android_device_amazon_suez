$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/amazon/suez/device.mk)

PRODUCT_DEVICE := suez
PRODUCT_NAME := full_suez
PRODUCT_BRAND := Fire
PRODUCT_MODEL := KFSUWI
PRODUCT_MANUFACTURER := Amazon
