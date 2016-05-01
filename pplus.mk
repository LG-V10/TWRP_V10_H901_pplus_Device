# Release name
PRODUCT_RELEASE_NAME := pplus

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/lge/pplus/kernel:kernel

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pplus
PRODUCT_NAME := pplus
PRODUCT_BRAND := LG
PRODUCT_MODEL := V10
PRODUCT_MANUFACTURER := LG

