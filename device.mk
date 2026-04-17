#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Add common symlinks definitions for Qualcomm
$(call soong_config_set,rfs,mpss_firmware_symlink_target,firmware_modem)
$(call inherit-product, hardware/qcom-caf/common/common.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Enforce generic ramdisk allow list
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)

# Non_ab_device
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# API levels
PRODUCT_SHIPPING_API_LEVEL := 34


# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot-service.qti \
    android.hardware.boot-service.qti.recovery

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Crypto Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl

# Crypto Keymint
PRODUCT_PACKAGES += \
    android.hardware.security.keymint-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc-service.nxp \
    com.android.nfc_extras \
    NfcNci \
    Tag \
    SecureElement \

# misc
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf-hal-service \
    vendor.qti.hardware.iop@2.0-service \
    libqti-perfd-client

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service \
    vendor.qti.hardware.power.powermodule@1.0

# Vibrator
PRODUCT_PACKAGES += \
    vibrator.default

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service.coral

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.qti-v2

PRODUCT_PACKAGES += \       android.hardware.sensors@2.1-service.multihal \
    sensors.ssc \
    libsensorcal

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss-aidl-service-qti \
    libgps.utils \
    libloc_core \
    liblocation_api \
    xtra-daemon

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4-service.widevine \
    android.hardware.drm@1.4-service.clearkey \
    libwvhidl \
    liboemcrypto

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-service \
    vendor.qti.media.c2@1.0-service \
    vendor.qti.media.c2audio@1.0-service \
    libstagefrighthw \
    libOmxCore \
    libcodec2_vendor \
    media_codecs_*.xml

# Display
PRODUCT_PACKAGES += \
    vendor.qti.hardware.display.composer-service \
    vendor.qti.hardware.display.allocator-service \
    vendor.display.color@1.0-service \
    libgralloc.qti \
    libqdMetaData \
    libsdmcore

# Camera
PRODUCT_PACKAGES += \
    vendor.qti.camera.provider@2.7-service_64 \
    libcamxcommonutils \
    libchilog \
    com.qti.chi.override

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@7.0-impl \
    android.hardware.audio.effect@7.0-impl \
    audio.primary.taro \
    audio.r_submix.default \
    audio.usb.default \
    libagmclient \
    libpalclient \
    vendor.qti.hardware.pal@1.0-impl \
    vendor.qti.hardware.AGMIPC@1.0-service

# ADSP / CDSP
PRODUCT_PACKAGES += \
    adsprpcd \
    cdsprpcd

# Atrace
PRODUCT_PACKAGES += \
    android.hardware.atrace@1.0-service

# CAS
PRODUCT_PACKAGES += \
    android.hardware.cas@1.2-service-lazy

# Configstore
PRODUCT_PACKAGES += \
    vendor.qti.hardware.capabilityconfigstore@1.0-service

# Display (missing from your display block)
PRODUCT_PACKAGES += \
    vendor.qti.hardware.display.demura-service

# DSP
PRODUCT_PACKAGES += \
    dspservice

# Dumpstate
PRODUCT_PACKAGES += \
    android.hardware.dumpstate@1.1-service-lazy

# eID (payment secure element)
PRODUCT_PACKAGES += \
    vendor.qti.hardware.eid@1.0-service

# Health — Samsung replaces the generic service
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-service-samsung

# IPA (data offload)
PRODUCT_PACKAGES += \
    ipacm \
    ipacm-diag

# Lights
PRODUCT_PACKAGES += \
    vendor.qti.hardware.lights.service

# Media (Samsung C2 and secure audio HAL AIDL)
PRODUCT_PACKAGES += \
    samsung.software.media.c2@1.0-service \
    secaudiohalaidl \
    mppserver

# NFC — Samsung SEC service (replaces nxp in your PRODUCT_PACKAGES)
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.sec

# PASR (memory management)
PRODUCT_PACKAGES += \
    vendor.qti.memory.pasrmanager@1.0-service

# Power (Samsung supplement)
PRODUCT_PACKAGES += \
    android.hardware.power.samsung-service

# QSEECOM / TEE
PRODUCT_PACKAGES += \
    vendor.qti.hardware.qseecom@1.0-service \
    qseecomd \
    vendor.qti.hardware.qteeconnector@1.0-service

# QSPM
PRODUCT_PACKAGES += \
    vendor.qti.qspmhal@1.0-service

# SPU / Secure Processor
PRODUCT_PACKAGES += \
    vendor.qti.spu@1.1-service \
    vendor.qti.spu@2.0-service \
    vendor.qti.hardware.secureprocessor@1.0

# Sensors calibration
PRODUCT_PACKAGES += \
    vendor.qti.hardware.sensorscalibrate@1.0-service

# Service tracker
PRODUCT_PACKAGES += \
    vendor.qti.hardware.servicetracker@1.2-service

# Thermal limits
PRODUCT_PACKAGES += \
    vendor.qti.hardware.limits@1.1-service

# Time daemon
PRODUCT_PACKAGES += \
    time_daemon

# Trusted UI
PRODUCT_PACKAGES += \
    vendor.qti.hardware.trustedui@1.0-service-qti \
    vendor.qti.hardware.tui_comm@1.0-service-qti

# WiFi (old HIDL service alongside the AIDL one)
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Samsung HAL services
PRODUCT_PACKAGES += \
    vendor.samsung.hardware.authfw@1.0-service \
    vendor.samsung.hardware.biometrics.face.jdm-service \
    vendor.samsung.hardware.biometrics.fingerprint@3.0-service \
    vendor.samsung.hardware.displayquality-service \
    vendor.samsung.hardware.hyper-service \
    vendor.samsung.hardware.light-service \
    vendor.samsung.hardware.media.converter@1.0-service \
    vendor.samsung.hardware.miscpower@2.0-service \
    vendor.samsung.hardware.securesnap-service \
    vendor.samsung.hardware.security.drk@2.0-service \
    vendor.samsung.hardware.security.hermes-service \
    vendor.samsung.hardware.security.sem@1.0-service \
    vendor.samsung.hardware.security.skpm@1.0-service \
    vendor.samsung.hardware.security.widevine.keyprov-service \
    vendor.samsung.hardware.snap-service \
    vendor.samsung.hardware.sysinput@1.3-service \
    vendor.samsung.hardware.tlc.iccc@1.0-service \
    vendor.samsung.hardware.tlc.kg-service \
    vendor.samsung.hardware.tlc.payment@1.0-service \
    vendor.samsung.hardware.tlc.ucm@2.0-service \
    vendor.samsung.hardware.vibrator-service \
    vendor.samsung.hardware.wifi@2.0-service \
    macloader

# Kernel
PRODUCT_ENABLE_UFFD_GC := true

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Runtime Resource Overlay
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.crda.sh \
    init.kernel.post_boot-cape.sh \
    init.kernel.post_boot-diwali.sh \
    init.kernel.post_boot-taro.sh \
    init.kernel.post_boot.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.display_boot.sh \
    init.qti.kernel.debug-cape.sh \
    init.qti.kernel.debug-diwali.sh \
    init.qti.kernel.debug-taro.sh \
    init.qti.kernel.debug.sh \
    init.qti.kernel.early_debug-taro.sh \
    init.qti.kernel.early_debug.sh \
    init.qti.kernel.sh \
    init.qti.media.sh \
    init.qti.qcv.sh \
    init.qti.touch_boot.sh \
    init.qti.write.sh \
    install-recovery.sh \
    qca6234-service.sh \
    vendor_modprobe.sh \

PRODUCT_PACKAGES += \
    fstab.ramplus \
    init.m55xq.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.kernel.rc \
    init.qti.ufs.rc \
    init.samsung.bsp.rc \
    init.samsung.rc \
    init.target.rc \
    init.x55.rc \
    init.recovery.qcom.rc \
    init.recovery.samsung.rc \
   
LOCAL_NOTICE_FILE := $(LOCAL_PATH)/etc/NOTICE.xml.gz

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml
    
# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi-service \
    hostapd \
    libwifi-hal-ctrl \
    libwifi-hal-qcom \
    libwpa_client \
    wpa_supplicant \
    wpa_cli

PRODUCT_PACKAGES += \
    rild \
    ims_rtp_daemon \
    cnd \
    dpmQmiMgr \
    qrtr-ns \
    pd-mapper \
    vendor.samsung.hardware.radio@2.2-service

PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom-caf/wlan \
    hardware/qcom-caf/wlan/qcwcn

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini
    
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.aware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.aware.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.rtt.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.rtt.xml
    
# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth-service.qti \
    android.hardware.bluetooth.audio-impl \
    audio.bluetooth.default \
    com.dsi.ant@1.0.vendor \
    com.qualcomm.qti.bluetooth_audio@1.0.vendor \
    libbluetooth_audio_session \
    vendor.qti.hardware.bluetooth_audio@2.1.vendor \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    vendor.qti.hardware.btconfigstore@2.0.vendor \
com.qualcomm.qti.bluetooth_audio@1.0.vendor

#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/bt_profile.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_profile.conf \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/google/interfaces \
    hardware/google/pixel \
    hardware/lineage/interfaces/power-libperfmgr \
    hardware/qcom-caf/common/libqti-perfd-client \
    hardware/samsung