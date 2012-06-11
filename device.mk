# Copyright (C) 2011 Linaro Limited
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

PRODUCT_COPY_FILES := \
	device/linaro/snowball/init.partitions.rc:root/init.partitions.rc \
        device/linaro/snowball/vold.fstab:system/etc/vold.fstab \
        device/linaro/snowball/egl.cfg:system/lib/egl/egl.cfg \
        device/linaro/common/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
        device/linaro/snowball/init.st-ericssonsnowballplatform.rc:root/init.st-ericssonsnowballplatform.rc \
        device/linaro/snowball/ueventd.st-ericssonsnowballplatform.rc:root/ueventd.st-ericssonsnowballplatform.rc

PRODUCT_COPY_FILES += \
        frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        device/linaro/common/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

PRODUCT_PACKAGES := \
        make_ext4fs \
        com.android.future.usb.accessory \
        sensors.snowball \
	GPSUI

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=acm,rndis,mass_storage

PRODUCT_PROPERTY_OVERRIDES := \
        hwui.render_dirty_regions=false

PRODUCT_CHARACTERISTICS := tablet,nosdcard

#DEVICE_PACKAGE_OVERLAYS := \
    device/ti/panda/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
        librs_jni \
        com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
        make_ext4fs

# Include MM in the build

PRODUCT_COPY_FILES += \
        frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
        frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
        frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
        frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
        frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Copy ALSA configuration files to rootfsdded platform feature permissions
PRODUCT_COPY_FILES += \
        external/alsa-lib/src/conf/alsa.conf:system/usr/share/alsa/alsa.conf \
        external/alsa-lib/src/conf/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
        external/alsa-lib/src/conf/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
        external/alsa-lib/src/conf/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
        external/alsa-lib/src/conf/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
        external/alsa-lib/src/conf/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
        external/alsa-lib/src/conf/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
        external/alsa-lib/src/conf/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
        external/alsa-lib/src/conf/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
        external/alsa-lib/src/conf/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
        external/alsa-lib/src/conf/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
        external/alsa-lib/src/conf/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
        external/alsa-lib/src/conf/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
        external/alsa-lib/src/conf/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
        external/alsa-lib/src/conf/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
        external/alsa-lib/src/conf/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
        external/alsa-lib/src/conf/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

PRODUCT_PACKAGES += \
        libasound \
        st-ericsson-multimedia-package \
        camera.snowball \
        copybit.snowball \
        overlay.snowball \
        lights.snowball \
        libstagefrighthw \
        libblt_hw \
        gralloc.snowball \
        camera.snowball \
        libmmhwbuffer_wrapper \
        libhdmi_service \
        hdmi_service_st \
        libstagefright_ste_aacdec_sf_wrapper \
        libaudiopolicy \
        audio_policy.snowball \
        audio.primary.snowball \
        libstagefright_ste_mp3wrapper \
        lights.snowball \
        copybit.snowball \
        libstagefrighthw \
        libstagefright_soft_ste_aacdec \
        libstagefright_soft_ste_mp3dec \
        libaudiopolicy.so \
        audio_policy.snowball.so \
        audio.primary.snowball.so \
        copybit.snowball.so \
        gralloc.snowball.so \
        libstagefrighthw.so \
        libmmhwbuffer_wrapper.so

$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
