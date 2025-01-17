# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# StatiX Packages
PRODUCT_PACKAGES += \
    CustomDoze \
    ThemePicker \
    SimpleDeviceConfig \
    StatiXOSWalls \
    QuickAccessWallet

PRODUCT_SOONG_NAMESPACES += \
    vendor/statix/app_override/StatixSystemUI

# App overrides
PRODUCT_PACKAGES += \
    StatixLauncher \
    StatixSystemUI \
    StatixSettings

# Updaters
ifeq ($(STATIX_BUILD_TYPE),OFFICIAL)
PRODUCT_PACKAGES += \
    Updater
else ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_PACKAGES += \
    LocalUpdater
endif

# Some useful shell based utilities for Android
PRODUCT_PACKAGES += \
    htop \
    nano \
    vim

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

-include vendor/statix/config/overlay.mk
