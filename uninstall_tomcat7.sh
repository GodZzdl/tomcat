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
    echo "\033[32m finish working \033[0m"
  fi
 else
  echo "\033[31m deleted faild \033[0m"
fi


