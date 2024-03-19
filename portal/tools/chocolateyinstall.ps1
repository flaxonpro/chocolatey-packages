
$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = 'https://github.com/SpatiumPortae/portal/releases/download/v1.2.3/portal_1.2.3_Windows_arm64.zip'
  url64bit      = 'https://github.com/SpatiumPortae/portal/releases/download/v1.2.3/portal_1.2.3_Windows_x86_64.zip'
  checksum      = 'b504eb979099127b9ad5d8be2804b1bcae0d49fd49bbbedd6b96873b28ccf94f'
  checksumType  = 'sha256'
  checksum64    = 'f775a4a9362da02d9ad19436deb18b01a371ad9ab5ba337c4815a2d00dcfef04'
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
