[Defines]
  VENDOR_NAME                    = Xiaomi
  PLATFORM_NAME                  = xun
  PLATFORM_GUID                  = a97369b2-c0ec-489b-a8e3-8b2a96ef4f7f
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sm6225/sm6225.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Xiaomi/sm6225/xun.fdf.inc

  # Enable A/B Slot Environment
  AB_SLOTS_SUPPORT               = TRUE
  
!include Platform/Qualcomm/sm6225/sm6225.dsc

[BuildOptions.common]
    GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE -DENABLE_LINUX_UTILS 

[PcdsFixedAtBuild.common]
  # Redmi Pad SE panel: 1200x1920 (portrait native), splash region 0x5c000000 size 0xf00000
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1200
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|1920

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|280

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Xiaomi"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Redmi Pad SE"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"xun"

# Produce the highest video mode in Shell and UiApp
[PcdsDynamicDefault.common]
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoHorizontalResolution|0 # /8 = column
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoVerticalResolution|0 #/19 = row
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoHorizontalResolution|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoVerticalResolution|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutRow|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutColumn|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutRow|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutColumn|0
