
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
  checksum      = 'D6E7B93A623D39934513CBC9BF0CFA7C58ED1BD460851492A87C831B00C4FE6D'
  checksumType  = 'sha256'
  checksum64    = $checksum
  checksumType64= $checksumType
}

Install-ChocolateyPackage @packageArgs
