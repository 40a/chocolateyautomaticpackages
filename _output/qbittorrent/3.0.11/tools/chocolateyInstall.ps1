﻿$packageName = 'qbittorrent' 
$installerType = 'EXE' 
$url = 'http://sourceforge.net/projects/qbittorrent/files/qbittorrent-win32/qbittorrent-3.0.11/qbittorrent_3.0.11_setup.exe/download'
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
