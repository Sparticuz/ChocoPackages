
$ErrorActionPreference = 'Stop';


$packageName= 'junction-link-magic'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://web.archive.org/web/20160304182634/http://www.rekenwonder.com/linkmagic2.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

  softwareName  = 'junction-link-magic*'
  checksum      = '20F2900F920D75653A1604125ED197D518904C8D752ED2BE95074401DA248CC5'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs

















