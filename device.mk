#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oculus/pacific

PRODUCT_API_SHIPPING_LEVEL := 25

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    system

PRODUCT_PACKAGES += \
    update_engine \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script \
    libsparse_static

# Enable update engine sideloading by including the static version of the
# boot_control HAL and its dependencies.
PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.msm8996 \
    libgptutils \
    libz \
    libcutils
PRODUCT_PACKAGES += \
    update_engine_sideload

# Bootloader HAL used for A/B updates.
PRODUCT_PACKAGES += \
    bootctrl.msm8996
PRODUCT_PACKAGES_DEBUG += \
    bootctl

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service.pacific \

# Needed for encryption
PRODUCT_PACKAGES += \
    keystore.msm8996 \
    gatekeeper.msm8996

# Light HAL
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl:64

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl:64 \
    android.hardware.keymaster@3.0-service

# OEM Unlock reporting
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

PRODUCT_COPY_FILES := \
    device/oculus/pacific/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    device/oculus/pacific/recovery/root/sbin/bootctrl.msm8996.so:recovery/root/sbin/bootctrl.msm8996.so \
    device/oculus/pacific/recovery/root/sbin/libdiag.so:recovery/root/sbin/libdiag.so \
    device/oculus/pacific/recovery/root/sbin/libdrmfs.so:recovery/root/sbin/libdrmfs.so \
    device/oculus/pacific/recovery/root/sbin/libdrmtime.so:recovery/root/sbin/libdrmtime.so \
    device/oculus/pacific/recovery/root/sbin/libQSEEComAPI.so:recovery/root/sbin/libQSEEComAPI.so \
    device/oculus/pacific/recovery/root/sbin/librpmb.so:recovery/root/sbin/librpmb.so \
    device/oculus/pacific/recovery/root/sbin/libssd.so:recovery/root/sbin/libssd.so \
    device/oculus/pacific/recovery/root/sbin/qseecomd:recovery/root/sbin/qseecomd \
    device/oculus/pacific/recovery/root/sbin/android.hardware.keymaster@3.0-service:recovery/root/sbin/android.hardware.keymaster@3.0-service \
    device/oculus/pacific/recovery/root/vendor/lib64/hw/android.hardware.boot@1.0-impl.so:recovery/root/vendor/lib64/hw/android.hardware.boot@1.0-impl.so \
    device/oculus/pacific/recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so:recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so \
    device/oculus/pacific/recovery/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl.so:recovery/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl.so \
    device/oculus/pacific/recovery/root/vendor/lib64/hw/gatekeeper.msm8996.so:recovery/root/vendor/lib64/hw/gatekeeper.msm8996.so \
    device/oculus/pacific/recovery/root/vendor/lib64/hw/keystore.msm8996.so:recovery/root/vendor/lib64/hw/keystore.msm8996.so \
    device/oculus/pacific/recovery/root/vendor/lib64/hw/bootctrl.msm8996.so:recovery/root/vendor/lib64/hw/bootctrl.msm8996.so \
    device/oculus/pacific/recovery/root/vendor/lib64/libgptutils.so:recovery/root/vendor/lib64/libgptutils.so \
    device/oculus/pacific/recovery/root/init.recovery.usb.rc:root/init.recovery.usb.rc \
    device/oculus/pacific/recovery/root/sbin/android.hardware.gatekeeper@1.0-service:recovery/root/sbin/android.hardware.gatekeeper@1.0-service \
    device/oculus/pacific/recovery/root/sbin/prepdecrypt.sh:recovery/root/sbin/prepdecrypt.sh \
    device/oculus/pacific/recovery/root/sbin/android.hardware.boot@1.0-service:recovery/root/sbin/android.hardware.boot@1.0-service \
    device/oculus/pacific/recovery/root/sbin/libpuresoftkeymasterdevice.so:recovery/root/sbin/libpuresoftkeymasterdevice.so \
    device/oculus/pacific/recovery/root/sbin/libkeymaster3device.so:recovery/root/sbin/libkeymaster3device.so \
    device/oculus/pacific/recovery/root/sbin/android.hardware.confirmationui@1.0.so:recovery/root/sbin/android.hardware.confirmationui@1.0.so \
