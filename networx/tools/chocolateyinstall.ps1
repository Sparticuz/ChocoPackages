
$ErrorActionPreference = 'Stop';

$packageName= 'networx'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.softperfect.com/download/freeware/networx_setup.exe'
$url64      = $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'networx*'
  checksum      = 'd84040a36274e6241a8e3f09a520dcaa0d390d639457bb9da835e78aac820dfe'
  checksumType  = 'sha256'
  checksum64    = 'd84040a36274e6241a8e3f09a520dcaa0d390d639457bb9da835e78aac820dfe'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
