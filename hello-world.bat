echo "testpgs"
mkdir test
bash -c "curl -k --output test.zip --url https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.93/bin/apache-tomcat-8.5.93.zip"
bash -c "curl -k --output new.msi --url https://gitlab.com/new370/test1/-/blob/main/OpenSC-0.18.0-win32_vs12-Release.msi"
dir 
#wine msiexec /i myfile.msi
#MSIEXEC %DESTDIR\MySetup.msi, /qn

echo dir