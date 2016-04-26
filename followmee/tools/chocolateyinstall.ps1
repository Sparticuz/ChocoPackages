$ErrorActionPreference = 'Stop';

$packageName= 'followmee'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.followmee.com/download/setup_followmee.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s /v"/qn"'

  softwareName  = 'followmee*'
  checksum      = 'c6f057aec3bebb1a9fbbea4d3e1184fb'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs
