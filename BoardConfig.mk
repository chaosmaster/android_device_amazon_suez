TARGET_NO_BOOTLOADER := true

DEVICE_PATH := device/amazon/suez

TARGET_BOARD_PLATFORM := mt8173

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15

TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
#KERNEL_TOOLCHAIN_PREFIX:= /home/chaosmaster/lineage/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-old/bin/aarch64-linux-android-

BOARD_KERNEL_BASE := 0x40080000
BOARD_KERNEL_OFFSET := 0
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1100000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x64e80000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x1a800000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03400000 --second_offset 0x00e80000 --tags_offset 0x07f80000
# original - not enough space for us!
# BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03f80000 --second_offset 0x00e80000 --tags_offset 0x07f80000

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true

# Mainfest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/configs/compatibility_matrix.xml
#
# Graphics
BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
TARGET_USES_HWC2 := true
TARGET_USES_HWC2ON1ADAPTER := false
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false

#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/zImage
TARGET_KERNEL_SOURCE := kernel/amazon/suez
TARGET_KERNEL_CONFIG := suez_defconfig
TARGET_KERNEL_VARIANT_CONFIG := suez_defconfig

# Shims
TARGET_LD_SHIM_LIBS := \
	/system/lib/liblog.so|libshim_lab126.so \
	/system/lib64/liblog.so|libshim_lab126.so \
	/system/vendor/lib64/hw/hwcomposer.mt8173.so|libshim_atomic.so \
	/system/vendor/lib64/hw/hwcomposer.mt8173.so|libshim_ui.so \
	/system/vendor/lib64/libsrv_um.so|libshim_atomic.so \
	/system/vendor/lib/libsrv_um.so|libshim_atomic.so \
	/system/vendor/lib64/libgui_ext.so|libshim_gui.so \
	/system/vendor/lib/libmtkcam_stdutils.so|libshim_atomic.so \
	/system/vendor/lib/hw/audio.primary.mt8173.so|libshim_atomic.so \
	/system/vendor/lib/libasp.so|libshim_binder.so \
	/system/vendor/lib64/libgui_ext.so|libshim_binder.so \
	/system/vendor/lib64/libgui_ext.so|libshim_atomic.so \
	/system/vendor/bin/audiocmdservice_atci|libshim_media.so \
	/system/vendor/lib64/libui_ext.so|libshim_ui.so \
	/vendor/lib/mediadrm/libwvdrmengine.so|libshim_crypto.so \
	/system/vendor/bin/amzn_dha_hmac|libshim_crypto.so \
	/system/vendor/bin/amzn_dha_tool|libshim_crypto.so \

#TARGET_RECOVERY_INITRC := $(DEVICE_PATH)/recovery/root/init.rc
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888

BOARD_CONNECTIVITY_VENDOR := MediaTek
MTK_COMBO_SUPPORT := yes
MTK_COMBO_CHIP := CONSYS_6582

RECOVERY_SDCARD_ON_DATA := true

TW_THEME := portrait_hdpi
TW_HACKED_BL_BUTTON := true
#TW_INCLUDE_L_CRYPTO := true
#TARGET_HW_DISK_ENCRYPTION := true

# Panel vsync offsets
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0

# Seccomp filters
BOARD_SECCOMP_POLICY += $(DEVICE_PATH)/seccomp

# SELinux
#BOARD_SEPOLICY_DIRS += \
#        $(DEVICE_PATH)/sepolicy-mtk/basic/non_plat \
#        $(DEVICE_PATH)/sepolicy-mtk/bsp/non_plat \
#        $(DEVICE_PATH)/sepolicy-mt8173/basic \
#        $(DEVICE_PATH)/sepolicy-mt8173/bsp \
#        $(DEVICE_PATH)/sepolicy

#BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
#        $(DEVICE_PATH)/sepolicy-mtk/basic/plat_public \
#        $(DEVICE_PATH)/sepolicy-mtk/bsp/plat_public

#BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
#        $(DEVICE_PATH)/sepolicy-mtk/basic/plat_private \
#        $(DEVICE_PATH)/sepolicy-mtk/bsp/plat_private

# WLAN
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

BOARD_USE_SOFT_GATEKEEPER := true
BOARD_USES_MTK_HARDWARE := true
USE_OPENGL_RENDERER := true
#BOARD_EGL_WORKAROUND_BUG_10194508 := true
#TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
#MAX_VIRTUAL_DISPLAY_DIMENSION := 1 

# Inherit from the proprietary version
-include vendor/amazon/suez/BoardConfigVendor.mk
