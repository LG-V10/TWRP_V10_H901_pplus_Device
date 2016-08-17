# Release name
# PRODUCT_RELEASE_NAME := pplus

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/lge/pplus/kernel:kernel
    
# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata    

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pplus
PRODUCT_NAME := omni_pplus
PRODUCT_BRAND := LG
PRODUCT_MODEL := V10
PRODUCT_MANUFACTURER := LG

