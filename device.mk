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
    vendor \
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

PRODUCT_PACKAGES += \
    android.hardware.keymaster@1.0 \
    libkeymaster1 \
    libhardware \
    libkeystore_binder \
    hwservicebinder

# Enable update engine sideloading by including the static version of the
# boot_control HAL and its dependencies.
PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.msm8996 \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    bootctrl.msm8996 \
    bootctrl.msm8996.recovery

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service
