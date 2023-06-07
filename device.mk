#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oculus/pacific

# A/B OTA Partitions
AB_OTA_PARTITIONS += \
    boot \
    system \
    modem

# Set required configs for A/B OTA to work
AB_OTA_UPDATER := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# A/B OTA post actions
PRODUCT_PACKAGES += cfigPostInstall
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=bin/cfigPostInstall \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# App compilation in background
PRODUCT_PACKAGES += otapreopt_script
AB_OTA_POSTINSTALL_CONFIG += \
  RUN_POSTINSTALL_system=true \
  POSTINSTALL_PATH_system=system/bin/otapreopt_script \
  FILESYSTEM_TYPE_system=ext4 \
  POSTINSTALL_OPTIONAL_system=true
