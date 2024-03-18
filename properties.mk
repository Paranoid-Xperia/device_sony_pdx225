# Audio
PRODUCT_VENDOR_PROPERTIES += \
vendor.audio.feature.custom_stereo.enable=true \
vendor.audio.feature.display_port.enable=true \
vendor.audio.feature.hdmi_edid.enable=true \
vendor.audio.feature.hdmi_passthrough.enable=true

# Bluetooth
PRODUCT_VENDOR_PROPERTIES += \
persist.sys.fflag.override.settings_bluetooth_hearing_aid=true \
persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac-aptxadaptiver2 \
persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled=true \
persist.vendor.qcom.bluetooth.aac_vbr_ctl.enabled=true \
persist.vendor.qcom.bluetooth.aptxadaptiver2_1_support=true

# Camera
PRODUCT_VENDOR_PROPERTIES += \
vendor.camera.enable.uvc=true \
vendor.mm.enable.qcom_parser=16777215

# Crypto
PRODUCT_VENDOR_PROPERTIES += \
ro.crypto.dm_default_key.options_format.version=2 \
ro.crypto.volume.metadata.method=dm-default-key

# Display
PRODUCT_ODM_PROPERTIES += \
persist.vendor.display.pcc_matrix=0.156863,0.196078,0.000000,0.000000,0.039216,0.176471 \
persist.vendor.colorgamut.mode=1 \
persist.vendor.display.colorgamut.mode=1 \
persist.vendor.display.sspp_color_mode=1 \
persist.vendor.display.opec_mode=0 \
vendor.display.hmd_mode=0

PRODUCT_VENDOR_PROPERTIES += \
ro.hardware.lights=sony \
vendor.display.disable_excl_rect=0 \
vendor.display.disable_excl_rect_partial_fb=1 \
vendor.display.comp_mask=0 \
vendor.display.disable_offline_rotator=1 \
vendor.display.use_smooth_motion=1 \
vendor.gralloc.enable_logs=0

PRODUCT_SYSTEM_PROPERTIES += \
debug.sf.auto_latch_unsignaled=1

# DPM
PRODUCT_VENDOR_PROPERTIES += \
persist.vendor.dpm.vndr.idletimer.mode=default \
persist.vendor.dpm.vndr.halservice.enable=1 \
persist.vendor.dpm.vndr.feature=11

# DRM
PRODUCT_VENDOR_PROPERTIES += \
drm.service.enabled=true

# FRP
PRODUCT_VENDOR_PROPERTIES += \
ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Fuse
PRODUCT_PRODUCT_PROPERTIES += \
persist.sys.fuse.passthrough.enable=true

# Graphics
PRODUCT_VENDOR_PROPERTIES += \
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
ro.surface_flinger.max_virtual_display_dimension=4096 \
ro.surface_flinger.protected_contents=true \
ro.surface_flinger.use_content_detection_for_refresh_rate=true \
ro.surface_flinger.use_color_management=true \
ro.surface_flinger.wcg_composition_dataspace=143261696

# Gatekeeper
PRODUCT_VENDOR_PROPERTIES += \
vendor.gatekeeper.disable_spu=true

# Keystore
PRODUCT_VENDOR_PROPERTIES += \
ro.hardware.keystore_desede=true

# Media
PRODUCT_SYSTEM_PROPERTIES += \
media.aac_51_output_enabled=true

PRODUCT_PRODUCT_PROPERTIES += \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml \

PRODUCT_VENDOR_PROPERTIES += \
debug.stagefright.c2inputsurface=-1 \
media.stagefright.enable-aac=true \
media.stagefright.enable-fma2dp=true \
media.stagefright.enable-http=true \
media.stagefright.enable-player=true \
media.stagefright.enable-qcp=true \
media.stagefright.enable-scan=true \
ro.mediaserver.64b.enable=true \
vendor.media.omx=0

# IMS
PRODUCT_SYSTEM_PROPERTIES += \
persist.vendor.ims.disableADBLogs=1 \
persist.vendor.ims.disableDebugLogs=1 \
persist.vendor.ims.disableIMSLogs=1 \
persist.vendor.ims.disableQXDMLogs=1

# Renderer
PRODUCT_SYSTEM_PROPERTIES += \
debug.hwui.renderer=skiavk

PRODUCT_VENDOR_PROPERTIES += \
debug.renderengine.backend=skiavkthreaded
