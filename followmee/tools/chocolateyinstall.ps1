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
  checksum      = 'DE29C32F9BC16EFF134724860FEFB9BE61287B1CA683015698BD2BF1E97ADA25'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
