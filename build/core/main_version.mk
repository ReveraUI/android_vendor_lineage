# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Revera UI System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.revera.version=$(REVERA_VERSION) \
    ro.revera.releasetype=$(REVERA_BUILDTYPE) \
    ro.revera.ziptype=$(REVERA_BUILD_ZIP_TYPE) \
    ro.revera.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(REVERA_VERSION)

# Revera UI Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.revera.display.version=$(REVERA_DISPLAY_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.revera.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)
