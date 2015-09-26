#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/dns/s4503

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product, vendor/dns/s4503/s4503-vendor.mk)

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)


DEVICE_PACKAGE_OVERLAYS := device/dns/s4503/overlay

PRODUCT_LOCALES := ru_RU
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml  

# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/config/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/config/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/config/thermald.conf:system/etc/thermald.conf \
    $(LOCAL_PATH)/config/qosmgr_rules.xml:system/etc/qosmgr_rules.xml \
    $(LOCAL_PATH)/config/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/config/loc_parameter.ini:system/etc/loc_parameter.ini \
    $(LOCAL_PATH)/config/qcom.cfg:system/etc/qcom.cfg \
    $(LOCAL_PATH)/config/fastmmi.cfg:system/etc/fastmmi.cfg \
    $(LOCAL_PATH)/config/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio_policy.conf_fm:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/media/media_profiles_7627a.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs_7627a.xml:system/etc/media_codecs.xml

# Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    ueventd.qcom.rc \
    init.target.rc \
    init.qcom.ril.sh \
    rmt_storage_recovery \
    init.recovery.qcom.rc

# FM Radio
#PRODUCT_PACKAGES += \
#    FM2 \
#    libqcomfm_jni \
#    qcom.fmradio

# Bluetooth
PRODUCT_PACKAGES += \
    btmac

# INIT.D Files
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/config/init.d/sysinit:system/bin/sysinit 

# SH FILE
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
	$(LOCAL_PATH)/config/init.target.8x25.sh:system/etc/init.target.8x25.sh \
	$(LOCAL_PATH)/config/init.qcom.set_dpi.sh:system/etc/init.qcom.set_dpi.sh \
	$(LOCAL_PATH)/config/init.qcom.sd_hot_plug.sh:system/etc/init.qcom.sd_hot_plug.sh 

# Files needed for recovery image
PRODUCT_COPY_FILES += \
device/dns/s4503/recovery/sbin/charge_recovery:/recovery/root/sbin/charge_recovery \
device/dns/s4503/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
device/dns/s4503/recovery/sbin/rmt_oeminfo_recovery:/recovery/root/sbin/rmt_oeminfo_recovery \
device/dns/s4503/recovery/sbin/linker:/recovery/root/sbin/linker \
device/dns/s4503/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh 

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    hwmac \
    libdashplayer
    
# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio.usb.default \
    audio_policy.msm7x27a \
    libaudioutils \
    audio_policy.conf

# Color Convert
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libc2dcolorconvert

# Power Hal
PRODUCT_PACKAGES += \
    power.msm7x27a \
    power.qcom

# Misc
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    libnl_2 
 
# Other modules
PRODUCT_PACKAGES += \
    lights.msm7x27a 

# Keys
PRODUCT_PACKAGES += \
    AVRCP.kl \
    vee7_keypad \
    7k_handset.kl \

# GPS
PRODUCT_PACKAGES += \
    gps.default \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libloc_api-rpc-qc

# gps hal
PRODUCT_PACKAGES += \
    gps.msm7x27a

# off-mode charging
PRODUCT_PACKAGES += \
    charger \
    charger_res_images
    
# Other Packages
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    Torch \
    com.android.future.usb.accessory 

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
	$(LOCAL_PATH)/rootdir/fstab.data:root/fstab.data \
	$(LOCAL_PATH)/rootdir/fstab.msm7627a:root/fstab.msm7627a \
        $(LOCAL_PATH)/rootdir/fstab.nand.msm7627a:root/fstab.nand.msm7627a \
	$(LOCAL_PATH)/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.unicorn-dpi.sh:root/init.qcom.unicorn-dpi.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
	$(LOCAL_PATH)/rootdir/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
	$(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
	$(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
	$(LOCAL_PATH)/rootdir/init.trace.rc:root/init.trace.rc \
	$(LOCAL_PATH)/rootdir/rmt_storage_recovery:root/rmt_storage_recovery\
	$(LOCAL_PATH)/rootdir/nv_set:root/nv_set \
	$(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc 

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    headset.hook.delay=500

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.remote.autoconnect=true \
    ro.bluetooth.request.master=true \
    ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
    ro.qualcomm.bluetooth.dun=true \
    ro.qualcomm.bluetooth.ftp=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.hwc.dynThreshold=1.9 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.max.fling_velocity=4000 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240 \
    ro.sys.fw.bg_apps_limit=20
    debug.gr.numframebuffers=3 \
    ro.bq.gpu_to_cpu_unsupported=1
  
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=32m \
    dalvik.vm.heapsize=96m \
    ro.config.low_ram=true \
    persist.sys.strictmode.visual=false \
    ro.ksm.default=1 \
    ro.config.low_ram=true

PRODUCT_PROPERTY_OVERRIDES += \
   media.stagefright.enable-player=true \
   media.stagefright.enable-meta=false \
   media.stagefright.enable-scan=true \
   media.stagefright.enable-http=true \
   media.stagefright.enable-fma2dp=true \
   media.stagefright.enable-aac=true \
   media.stagefright.enable-qcp=true

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_MANUFACTURER := DNS
PRODUCT_BRAND := dns

PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM \
    rild.libargs=-d/dev/smd0 \
    ro.telephony.call_ring.delay=3000 \
    ro.telephony.call_ring.multiple=false \
    com.qc.hardware=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.vold.umsdirtyratio=50 \
    lpa.decode = false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    ro.qualcomm.cabl=1 \
    wifi.supplicant_scan_interval=60
   
# Voip
PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=false \
    tunnel.decode=false \
    lpa.use-stagefright=false \
    lpa.releaselock=false

PRODUCT_PROPERTY_OVERRIDES += \
   ro.fm.analogpath.supported=false \
   ro.fm.transmitter=false \
   ro.fm.mulinst.recording.support=false

PRODUCT_PROPERTY_OVERRIDES += \
  ro.use_data_netmgrd=true \
  persist.data_netmgrd_nint=16 \

$(call inherit-product, build/target/product/full.mk)

