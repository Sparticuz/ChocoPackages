
$ErrorActionPreference = 'Stop';


$packageName= 'zoom'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.zoom.us/client/latest/ZoomInstallerFull.msi'
$url64      = $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/quiet /qn /norestart /log `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`" ZoomAutoUpdate=`"true`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'zoom*'
  checksum      = ''
  checksumType  = ''
  checksum64    = ''
  checksumType64= ''
}

Install-ChocolateyPackage @packageArgs


















