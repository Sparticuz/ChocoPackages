
$ErrorActionPreference = 'Stop';


$packageName= 'junction-link-magic'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.rekenwonder.com/linkmagic2.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'junction-link-magic*'
  checksum      = 'fce8a96cf32037fac594c3e441febcc0'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs

















