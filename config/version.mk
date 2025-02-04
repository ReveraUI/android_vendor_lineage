PRODUCT_VERSION_MAJOR = 13
PRODUCT_VERSION_MINOR = 0

REVERA_BUILD_DATE := $(shell date -u +%Y%m%d)

REVERA_BUILD_ZIP_TYPE := VANILLA

# Filter out random types, so it'll reset to UNOFFICIAL
ifeq ($(filter RELEASE NIGHTLY SNAPSHOT EXPERIMENTAL,$(REVERA_BUILDTYPE)),)
    REVERA_BUILDTYPE := UNOFFICIAL
endif

ifeq ($(REVERA_OFFICIAL), true)
    REVERA_BUILDTYPE := OFFICIAL
endif

ifeq ($(REVERA_MICROG), true)
    REVERA_BUILD_ZIP_TYPE := MICROG
endif

REVERA_VERSION_SUFFIX := $(LINEAGE_BUILD)-$(REVERA_BUILDTYPE)-$(REVERA_BUILD_DATE)-$(REVERA_BUILD_ZIP_TYPE)

# Internal version
REVERA_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(REVERA_VERSION_SUFFIX)

# Display version
REVERA_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR)-$(REVERA_VERSION_SUFFIX)
