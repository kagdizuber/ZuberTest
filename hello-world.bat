@echo off
echo Hello world!
echo yellaiah test!
echo "harmanpgs"
powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest https://gitlab.com/new370/test1/-/blob/main/OpenSC-0.18.0-win32_vs12-Release.msi -OutFile C:\xxx.msi;}"