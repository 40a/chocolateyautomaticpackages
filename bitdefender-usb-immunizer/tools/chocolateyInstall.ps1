﻿$packageName = 'bitdefender-usb-immunizer'
$url = '{{DownloadUrl}}'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\BDUSBImmunizerLauncher.exe"

try {
    Get-ChocolateyWebFile $packageName $fileFullPath $url
    Install-ChocolateyDesktopLink $fileFullPath
  
    Write-ChocolateySuccess $packageName
} catch {
    Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
    throw 
}