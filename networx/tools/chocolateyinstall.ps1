
$ErrorActionPreference = 'Stop';

$packageName = 'networx'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://www.softperfect.com/download/files/networx_setup.exe'
$url64       = $url
$checksum    = 'EF1F27CC40A13EDB3087DB717B56B222A5340CDC4BE017B47DF15764CDF60427'
$checksum64  = $checksum
$checksumType= 'sha256'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'networx*'
  checksum      = $checksum
  checksumType  = $checksumType
  checksum64    = $checksum64
  checksumType64= $checksumType
}

Install-ChocolateyPackage @packageArgs
