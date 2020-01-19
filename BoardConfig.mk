PLATFORM_PATH := device/oneplus/bacon

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8974
TARGET_NO_BOOTLOADER         := true

# Platform
TARGET_BOARD_PLATFORM     := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

TARGET_CPU_ABI      := armeabi-v7a
TARGET_CPU_ABI2     := armeabi
TARGET_CPU_SMP      := true
TARGET_ARCH         := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT  := krait

# Kernel
BOARD_DTBTOOL_ARGS 		  := --force-v2
BOARD_KERNEL_BASE         := 0x00000000
BOARD_KERNEL_CMDLINE      := console=ttyHSL0,115200,n8 androidboot.hardware=bacon user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_CMDLINE      += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE     := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS 	  := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
BOARD_KERNEL_IMAGE_NAME   := zImage
TARGET_KERNEL_ARCH        := arm
TARGET_KERNEL_CONFIG      := bacon_defconfig
TARGET_KERNEL_SOURCE      := kernel/oneplus/msm8974
KERNEL_TOOLCHAIN          := $(shell pwd)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-linux-androideabi-4.9/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androidkernel-

BOARD_FLASH_BLOCK_SIZE               := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE       := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE   := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE     := 1388314624
BOARD_USERDATAIMAGE_PARTITION_SIZE   := 13271448576
TARGET_USERIMAGES_USE_EXT4           := true
TARGET_USERIMAGES_USE_F2FS           := true

# TWRP
BOARD_HAS_NO_REAL_SDCARD	 	 := true
BOARD_HAS_NO_SELECT_BUTTON   	 := true
BOARD_SUPPRESS_SECURE_ERASE  	 := true
DEVICE_RESOLUTION            	 := 1080x1920
RECOVERY_SDCARD_ON_DATA      	 := true
TARGET_RECOVERY_PIXEL_FORMAT 	 := "RGB_565"
TW_INCLUDE_CRYPTO             	 := true
TW_NO_USB_STORAGE            	 := true
TW_THEME                     	 := portrait_hdpi
PLATFORM_SECURITY_PATCH      	 := 2099-12-31
TW_EXCLUDE_TWRPAPP           	 := true
LZMA_RAMDISK_TARGETS		 	 := {boot, recovery}
TW_TARGET_USES_QCOM_BSP 	 	 := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_NEEDS_LZMA_MINIGZIP 	 	 := true

# Assertions
TARGET_BOARD_INFO_FILE       := $(PLATFORM_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE 	 := bacon,A0001
