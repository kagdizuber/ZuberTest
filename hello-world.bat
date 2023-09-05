@echo off
echo Hello world!
echo yellaiah test!
echo "harmanpgs"
powershell -Command "Get-Date"
$DownloadUrl = "https://gitlab.com/new370/test1/-/blob/main/OpenSC-0.18.0-win32_vs12-Release.msi"

$SaveTo = "C:\temp\notepad++_setup.msi"

Invoke-WebRequest -uri $DownloadUrl -OutFile $SaveTo