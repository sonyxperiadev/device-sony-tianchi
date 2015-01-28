# Copyright 2014 The Android Open Source Project
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

TARGET_PREBUILT_KERNEL := kernel
PRODUCT_COPY_FILES += $(LOCAL_PATH)/$(TARGET_PREBUILT_KERNEL):kernel

# backlight brightness below 127 is useless
# use 127-255 as brightness range.
BOARD_HAS_DIM_BACKLIGHT := true

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, device/sony/yukon/device.mk)
$(call inherit-product, vendor/sony/tianchi/tianchi-vendor.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
    device/sony/tianchi/rootdir/system/usr/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
    device/sony/tianchi/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    device/sony/tianchi/rootdir/system/etc/sensor_def_somc.conf:system/etc/sensor_def_somc.conf \
    device/sony/tianchi/rootdir/system/etc/sensors_calib.conf:system/etc/sensors_calib.conf \
    device/sony/tianchi/rootdir/system/etc/sec_config:system/etc/sec_config \
    device/sony/tianchi/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/tianchi/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/tianchi/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/tianchi/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/sony/tianchi/rootdir/init.yukon.dev.rc:root/init.yukon.dev.rc \
    device/sony/tianchi/rootdir/fstab.yukon:root/fstab.yukon \
    device/sony/tianchi/rootdir/logo.rle:root/logo.rle

PRODUCT_PACKAGES += \
    keystore.msm8226

PRODUCT_NAME := aosp_d5303
PRODUCT_DEVICE := tianchi
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia T2 Ultra (AOSP)
PRODUCT_LOCALES += xhdpi hdpi
PRODUCT_MANUFACTURER := Sony

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

