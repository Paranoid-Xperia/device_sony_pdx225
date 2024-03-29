#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

BOARD_VENDOR := sony

DEVICE_PATH := device/sony/pdx225

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    odm \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_boot \
    vendor_dlkm

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a76

# Boot
BOARD_BOOT_HEADER_VERSION := 3

# Boot control
SOONG_CONFIG_NAMESPACES += ufsbsg
SOONG_CONFIG_ufsbsg += ufsframework
SOONG_CONFIG_ufsbsg_ufsframework := bsg

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := holi
TARGET_NO_BOOTLOADER := true

# Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(DEVICE_PATH)/configs/vintf/framework_matrix_sony.xml \

DEVICE_MANIFEST_FILE += \
    $(DEVICE_PATH)/configs/vintf/manifest_holi.xml \
    $(DEVICE_PATH)/configs/vintf/manifest_sony.xml

# Kernel
BOARD_DO_NOT_STRIP_VENDOR_MODULES := true
BOARD_BOOT_HEADER_VERSION := 3
BOARD_KERNEL_CMDLINE := \
    console=ttyMSM0,115200n8 \
    androidboot.hardware=qcom \
    androidboot.console=ttyMSM0 \
    androidboot.memcg=1 \
    lpm_levels.sleep_disabled=1 \
    video=vfb:640x400,bpp=32,memsize=3072000 \
    msm_rtb.filter=0x237 \
    service_locator.enable=1 \
    androidboot.usbcontroller=a600000.dwc3 \
    swiotlb=0 \
    loop.max_part=7 \
    cgroup.memory=nokmem,nosocket \
    pcie_ports=compat \
    loop.max_part=7 \
    iptable_raw.raw_before_defrag=1 \
    ip6table_raw.raw_before_defrag=1

BOARD_KERNEL_CMDLINE += buildproduct=pdx225
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_DTB_OFFSET           := 0x01f00000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DTBO := true
KERNEL_DEFCONFIG := pdx225_defconfig

BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Kernel Modules
BOARD_VENDOR_KERNEL_MODULES := \
        $(KERNEL_MODULES_OUT)/apr_dlkm.ko \
        $(KERNEL_MODULES_OUT)/pinctrl_lpi_dlkm.ko \
        $(KERNEL_MODULES_OUT)/btpower.ko \
        $(KERNEL_MODULES_OUT)/mbhc_dlkm.ko \
        $(KERNEL_MODULES_OUT)/wcd937x_slave_dlkm.ko \
        $(KERNEL_MODULES_OUT)/platform_dlkm.ko \
        $(KERNEL_MODULES_OUT)/rdbg.ko \
        $(KERNEL_MODULES_OUT)/q6_dlkm.ko \
        $(KERNEL_MODULES_OUT)/wcd938x_slave_dlkm.ko \
        $(KERNEL_MODULES_OUT)/va_macro_dlkm.ko \
        $(KERNEL_MODULES_OUT)/wsa881x_analog_dlkm.ko \
        $(KERNEL_MODULES_OUT)/adsp_loader_dlkm.ko \
        $(KERNEL_MODULES_OUT)/snd_event_dlkm.ko \
        $(KERNEL_MODULES_OUT)/bolero_cdc_dlkm.ko \
        $(KERNEL_MODULES_OUT)/q6_notifier_dlkm.ko \
        $(KERNEL_MODULES_OUT)/native_dlkm.ko \
        $(KERNEL_MODULES_OUT)/rx_macro_dlkm.ko \
        $(KERNEL_MODULES_OUT)/stub_dlkm.ko \
        $(KERNEL_MODULES_OUT)/wcd938x_dlkm.ko \
        $(KERNEL_MODULES_OUT)/machine_dlkm.ko \
        $(KERNEL_MODULES_OUT)/q6_pdr_dlkm.ko \
        $(KERNEL_MODULES_OUT)/tx_macro_dlkm.ko \
        $(KERNEL_MODULES_OUT)/wcd9xxx_dlkm.ko \
        $(KERNEL_MODULES_OUT)/swr_dlkm.ko \
        $(KERNEL_MODULES_OUT)/aw882xx_dlkm.ko \
        $(KERNEL_MODULES_OUT)/camera.ko \
        $(KERNEL_MODULES_OUT)/wcd937x_dlkm.ko \
        $(KERNEL_MODULES_OUT)/wcd_core_dlkm.ko \
        $(KERNEL_MODULES_OUT)/bt_fm_slim.ko \
        $(KERNEL_MODULES_OUT)/swr_ctrl_dlkm.ko \
        $(KERNEL_MODULES_OUT)/wlan.ko \
        $(KERNEL_MODULES_OUT)/adux1050.ko \
        $(KERNEL_MODULES_OUT)/bu520x1nvx.ko \
        $(KERNEL_MODULES_OUT)/last_logs.ko \
        $(KERNEL_MODULES_OUT)/ldo_vibrator.ko \
        $(KERNEL_MODULES_OUT)/p73.ko \
        $(KERNEL_MODULES_OUT)/powerkey_forcecrash.ko \
        $(KERNEL_MODULES_OUT)/sn1x0.ko \
        $(KERNEL_MODULES_OUT)/sm5038_drv.ko \
        $(KERNEL_MODULES_OUT)/sm5038_typec_drv.ko \
        $(KERNEL_MODULES_OUT)/somc_battchg_ext.ko \
        $(KERNEL_MODULES_OUT)/somc_battman_dbg.ko \
        $(KERNEL_MODULES_OUT)/wakeup_irq_debug.ko \
        $(KERNEL_MODULES_OUT)/rmnet_core.ko \
        $(KERNEL_MODULES_OUT)/rmnet_ctl.ko \
        $(KERNEL_MODULES_OUT)/rmnet_offload.ko \
        $(KERNEL_MODULES_OUT)/rmnet_shs.ko \
        $(KERNEL_MODULES_OUT)/slimbus-ngd.ko

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/modules.blocklist
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(strip $(shell cat $(DEVICE_PATH)/modules.include.recovery))
TARGET_MODULE_ALIASES += wlan.ko:qca_cld3_wlan.ko

# Use External DTC
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    DTC_EXT=$(shell pwd)/prebuilts/misc/linux-x86/dtc/dtc \
    DTC_OVERLAY_TEST_EXT=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/libufdt/ufdt_apply_overlay \
    LLVM=1 LLVM_IAS=1

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x06000000
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 0x06000000
# Reserve space for data encryption (109553123000-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 111864147968
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SOMC_DYNAMIC_PARTITIONS_PARTITION_LIST := product system vendor odm system_ext vendor_dlkm
# Dynamic partition size = Super partition size - 4MB
BOARD_SOMC_DYNAMIC_PARTITIONS_SIZE := 6169821184
BOARD_SUPER_PARTITION_GROUPS := somc_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 12348030976
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
PRODUCT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_VBMETA_SYSTEM := system system_ext product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2 

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER := $(BOARD_HOSTAPD_DRIVER)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB_EVENT := "ON"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

# inherit from the proprietary version
-include vendor/sony/pdx225/BoardConfigVendor.mk
