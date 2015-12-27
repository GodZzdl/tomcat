#!/bin/bash
mv bashrc.bak ~/.bashrc
source ~/.bashrc
rm -rf catalina.txt
service tomcat stop
rm -rf /etc/init.d/tomcat
rm -rf tomcat
cd /usr/lib/
rm -rf jvm
if [ ! -d "/usr/lib/jvm" ]; then
 cd /home/
 rm -rf tomcat7
  if [ ! -d "/home/tomcat7" ]; then
    cd
    rm -rf jdk-7u79-linux-x64.gz
    rm -rf apache-tomcat-7.0.67.tar.gz
    rm -rf jdk.txt
    echo "finish working"
  fi
 else
  echo "deleted faild"
fi

