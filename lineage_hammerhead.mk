# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_mini_go_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := lineage_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=hammerhead \
    BuildDesc="hammerhead-user 6.0.1 M4B30Z 3437181 release-keys" \
    BuildFingerprint=google/hammerhead/hammerhead:6.0.1/M4B30Z/3437181:user/release-keys
