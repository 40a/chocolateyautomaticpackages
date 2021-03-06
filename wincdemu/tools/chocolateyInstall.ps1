﻿$tools="$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Start-ChocolateyProcessAsAdmin "certutil -addstore 'TrustedPublisher' '$tools\sysprogs.cer'"

$packageName = '{{PackageName}}'
$fileType = 'exe'
$silentArgs = '/UNATTENDED'
$url = 'http://sourceforge.net/projects/wincdemu/files/wincdemu/{{PackageVersion}}/WinCDEmu-{{PackageVersion}}.exe/download'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url