# Initialise device config
$(call inherit-product, device/samsung/zerofltexx/full_zerofltexx.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Enhanced NFC
# $(call inherit-product, vendor/lineage/config/nfc_enhanced.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Inherit properties for TeamNexus-bases ROMs
#$(call inherit-product, vendor/nexus/product.mk)

# Device Maintainer
PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer="BenLue"

# Root options
ROOT_METHOD=magisk

# 3rd party apps - choose which you want to build
PRODUCT_PACKAGES += \
    Adaway \
    KernelAdiutor \
    MiXplorer

# Camera
PRODUCT_PACKAGES += \
  Camera2 \
  Snap

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="zeroltexx" \
    TARGET_DEVICE="zerolte"

PRODUCT_NAME := xenonhd_zeroltexx
PRODUCT_DEVICE := zeroltexx
