
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
  checksum      = '408ae930c89c7b4ab13d3cff8c7567b19c39551f0528e242faebcde075ac66bf'
  checksumType  = 'sha256'
  checksum64    = '408ae930c89c7b4ab13d3cff8c7567b19c39551f0528e242faebcde075ac66bf'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs


















