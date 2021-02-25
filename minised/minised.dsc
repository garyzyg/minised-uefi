[Defines]
  PLATFORM_NAME                  = minised
  PLATFORM_GUID                  = 51D56957-D793-4FA9-8906-5E689F5439F3
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010006
  SUPPORTED_ARCHITECTURES        = IA32|X64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT

[LibraryClasses]
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf
  DebugLib|MdePkg/Library/BaseDebugLibNull/BaseDebugLibNull.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf
  PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
  UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  ShellCEntryLib|ShellPkg/Library/UefiShellCEntryLib/UefiShellCEntryLib.inf

  LibC|StdLib/LibC/LibC.inf
  LibStdLib|StdLib/LibC/StdLib/StdLib.inf
  ShellLib|ShellPkg/Library/UefiShellLib/UefiShellLib.inf
  FileHandleLib|ShellPkg/Library/UefiFileHandleLib/UefiFileHandleLib.inf
  HiiLib|MdeModulePkg/Library/UefiHiiLib/UefiHiiLib.inf
  UefiHiiServicesLib|MdeModulePkg/Library/UefiHiiServicesLib/UefiHiiServicesLib.inf
  SortLib|ShellPkg/Library/UefiSortLib/UefiSortLib.inf
  LibCType|StdLib/LibC/Ctype/Ctype.inf
  LibSignal|StdLib/LibC/Signal/Signal.inf
  PathLib|ShellPkg/Library/BasePathLib/BasePathLib.inf
  LibStdio|StdLib/LibC/Stdio/Stdio.inf
  LibGdtoa|StdLib/LibC/gdtoa/gdtoa.inf
  LibLocale|StdLib/LibC/Locale/Locale.inf
  LibString|StdLib/LibC/String/String.inf
  LibTime|StdLib/LibC/Time/Time.inf
  LibUefi|StdLib/LibC/Uefi/Uefi.inf
  LibGen|StdLib/PosixLib/Gen/LibGen.inf
  DevUtility|StdLib/LibC/Uefi/Devices/daUtility.inf
  LibWchar|StdLib/LibC/Wchar/Wchar.inf
  DevConsole|StdLib/LibC/Uefi/Devices/daConsole.inf

  DevShell|StdLib/LibC/Uefi/Devices/daShell.inf

[Components]
  minised/minised.inf

  MdePkg/Library/BaseLib/BaseLib.inf {
    <BuildOptions>
      MSFT:*_*_*_CC_FLAGS    = /X /Zc:wchar_t /GL-
  }

  MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf {
    <BuildOptions>
      MSFT:*_*_*_CC_FLAGS    = /X /Zc:wchar_t /GL-
  }

[BuildOptions]
  MSFT:*_*_*_CC_FLAGS = /GS-
