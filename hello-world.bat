echo "testpgs"
mkdir test
bash -c "curl -k --output test.zip --url https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.93/bin/apache-tomcat-8.5.93.zip"
dir 
mv test.zip /builds/new370/test1/
pwd
