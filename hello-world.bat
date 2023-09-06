echo "testpgs"
mkdir test
bash -c "curl -k --output test.zip --url https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.93/bin/apache-tomcat-8.5.93.zip"
bash -c "curl -k --output new.msi --url https://gitlab.com/new370/test1/-/blob/main/OpenSC-0.18.0-win32_vs12-Release.msi"
dir 
Msiexec.exe /i rsSharePoint.msi SKIPCA=1
start /wait msiexec.exe /i "%~dp07z2201-x64.msi" /qn /l*v "%SystemRoot%\Logs\7z2201-x64.log"
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (start /wait msiexec.exe /i "%~dp07z2201-x64.msi" /l*v "%SystemRoot%\Logs\7z2201-x64.log") ELSE (start /wait msiexec.exe /i "%~dp07z2201.msi" /l*v "%SystemRoot%\Logs\7z2201-x86.log").