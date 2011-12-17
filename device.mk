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
    device/linaro/snowball/vold.fstab:system/etc/vold.fstab \
    device/linaro/snowball/egl.cfg:system/lib/egl/egl.cfg

PRODUCT_COPY_FILES += \
        device/linaro/snowball/init.rc:root/init.rc \
        device/linaro/snowball/init.st-ericssonsnowballplatform.rc:root/init.st-ericssonsnowballplatform.rc \
        device/linaro/snowball/ueventd.st-ericssonsnowballplatform.rc:root/ueventd.st-ericssonsnowballplatform.rc

PRODUCT_PACKAGES := \
        make_ext4fs \
        com.android.future.usb.accessory

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

PRODUCT_PROPERTY_OVERRIDES += \
        ro.nohardwaregfx=true

