#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/galaxys2-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/n7000/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/n7000/bluetooth

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := slim_n7000_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := linaro-4.7-13.04/bin/arm-linux-gnueabihf-

TARGET_SPECIFIC_HEADER_PATH += device/samsung/n7000/overlay/include
# assert
TARGET_OTA_ASSERT_DEVICE := galaxynote,n7000,N7000,GT-N7000

# We have a high res screen, use big font in recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

#TWRP
DEVICE_RESOLUTION := 800x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INTERNAL_STORAGE_PATH := "/emmc" #needs confirmation
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc" #needs confirmation
TW_EXTERNAL_STORAGE_PATH := "/sdcard" #needs confirmation
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard" #needs confirmation
TW_NO_REBOOT_BOOTLOADER := true
TW_DEFAULT_EXTERNAL_STORAGE := false
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_INJECTTWRP := true
TW_HAS_DOWNLOAD_MODE := true

# Use the non-open-source parts, if they're present
-include vendor/samsung/n7000/BoardConfigVendor.mk
