$ErrorActionPreference = 'Stop';

$packageName= 'media-preview'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.babelsoft.net/bin/MediaPreviewSetup-1.4.3.429.sfx.exe'
$checksum   = '2BF9291F3D69B22EB55EA1E1B97ADC0558495B22E664D39E367A105E83B1C5B5'
$checksumType = 'sha256'

$sfxFile = Get-ChocolateyWebFile `
  -PackageName $packageName `
  -FileFullPath "$toolsDir\MP.exe" `
  -Url $url `
  -Checksum $checksum `
  -ChecksumType $checksumType

Get-ChocolateyUnzip -FileFullPath $sfxFile -Destination $toolsDir

$url = "$toolsDir\MediaPreviewSetup-32-1.4.3.429.msi"
$url64bit = "$toolsDir\MediaPreviewSetup-64-1.4.3.429.msi"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'

  File          = $url
  File64        = $url64bit

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'media-preview*'
  checksum      = 'F79ECF238C6DF84AEC29E90319525B9FA8EE7C6A23827DFE17648A0242608B1C'
  checksumType  = 'sha256'
  checksum64    = '3450FFE4AE07E9A20A85CFB1FB059F30280B9CFAC01623A769AC533FB5C88D17'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
