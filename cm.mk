# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/dns/s4503/full_dns.mk)

# Release name
PRODUCT_RELEASE_NAME := Weritos

# Correct boot animation size for the screen.
TARGET_BOOTANIMATION_NAME := vertical-960x540

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s4503
PRODUCT_NAME := cm_s4503
PRODUCT_BRAND := dns
PRODUCT_MODEL := s4503
PRODUCT_MANUFACTURER := dns


