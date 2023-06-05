# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bt.max.hfpclient.connections=1 \
    persist.ovr.trackerlib=libtracker-pacific.so \
    qcom.bluetooth.soc=rome \
    ro.bluetooth.emb_wp_mode=true \
    ro.bluetooth.hfp.ver=1.7 \
# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_cameraservice=true \
# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp \
# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.auto_refresh_fast_path=1 \
    debug.sf.hw=1 \
    debug.sf.shared_buffer_restrict=1 \
    debug.sf.show_pointer=0 \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=480 \
# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \
    mm.enable.qcom_parser=517933 \
    mm.enable.smoothstreaming=true \
    mmp.enable.3g2=true \
    persist.mm.enable.prefetch=true \
    ro.qualcomm.cabl=2 \
    vidc.debug.perf.mode=2 \
    vidc.enc.dcvs.extra-buff-count=2 \
    vidc.enc.disable.pq=true \
# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_vibratorservice=true \
    debug.egl.swapPermissive=1 \
    debug.oculus.vrapilayers=VrIntegrationLayer \
    ovr.panel.adjust_colorspace=1 \
    ovr.panel.white_point.x=0.3127 \
    ovr.panel.white_point.y=0.3290 \
    persist.hwc.enable_vds=1 \
    persist.ovr.global_cac=1 \
    persist.ovr.wakeupdialog.enable=true \
    qemu.hw.mainkeys=1 \
    ro.if.disallow_external_wakeup=true \
    ro.logd.filter="1000 \
    com.oculus.updater" \
    ro.ovr.rmem.limit=800M \
    ro.ovr.use_system_input=true \
    ro.sf.hwrotation=90 \
    ro.sys.sdcardfs=true \
    sdm.debug.disable_rotator_split=1 \
    sdm.idletimeout_dynfps.disable=1 \
    sys.hmt.connected=1 \
# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    sdm.perf_hint_window=50 \
# QTI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.wl_library=libqti-wl.so \
# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.radio.noril=yes \
# SSR
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.ssr.restart_level=venus AR6320 slpi modem adsp \
# UBWC
PRODUCT_PROPERTY_OVERRIDES += \
# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
