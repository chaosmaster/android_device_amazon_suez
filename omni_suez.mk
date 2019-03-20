$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/amazon/suez/device.mk)


PRODUCT_NAME := omni_suez
PRODUCT_DEVICE := suez
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Amazon
