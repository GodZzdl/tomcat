#!/bin/bash
chmod 777 uninstall_tomcat7.sh
chmod 777 service.sh
if [ ! -f "./jdk-7u79-linux-x64.gz" ]; then
 wget -O jdk-7u79-linux-x64.gz "https://xhzdxhtbsteduau-my.sharepoint.com/personal/198a_tut_edu_pl/_layouts/15/guestaccess.aspx?guestaccesstoken=fecV1GE7KtFOAXfmUUzOwofasUtfI93flXGyYHixmvM%3d&docid=02dd77d20e296405d885c6b86d409bbd3"
  if [ ! -f "./jdk-7u79-linux-x64.gz" ]; then
   echo "download faild try it again!"
   wget http://7u2tjs.com5.z0.glb.clouddn.com/linux/jdk/jdk-7u79-linux-x64.gz
  fi
else 
 echo "jdk-7u79-linux-x64.gz is already download" 
fi

mkdir /usr/lib/jvm
tar zxvf ./jdk-7u79-linux-x64.gz  -C /usr/lib/jvm
mv /usr/lib/jvm/jdk1.7.0_79 /usr/lib/jvm/jdk7

if [ ! -f "./jdk.txt" ]; then
 wget -O jdk.txt "https://xhzdxhtbsteduau-my.sharepoint.com/personal/198a_tut_edu_pl/_layouts/15/guestaccess.aspx?guestaccesstoken=OnjYEdr%2b0d%2bMLgfLgSfwz03XnMNqBwuUa3%2fzUMiFYdk%3d&docid=0f4b256a7785e477aaa5d36d95a6d24c6"
  if [ ! -f "./jdk.txt" ]; then
   echo "download faild try it again!"
    wget http://7u2tjs.com5.z0.glb.clouddn.com/linux/jdk/jdk.txt
  fi
else 
 echo "jdk.txt is already download" 
fi

cp ~/.bashrc bashrc.bak
cat jdk.txt >> ~/.bashrc

source ~/.bashrc

if [ ! -f "./apache-tomcat-7.0.67.tar.gz" ]; then
 wget -O apache-tomcat-7.0.67.tar.gz "https://xhzdxhtbsteduau-my.sharepoint.com/personal/198a_tut_edu_pl/_layouts/15/guestaccess.aspx?guestaccesstoken=L%2bpp16OGvDTutaHMc2p1wyVhY7lHqqrROHqdvJAzSzU%3d&docid=03e3782cde48b442fba1800c65120f72e"
  if [ ! -f "./apache-tomcat-7.0.67.tar.gz" ]; then
   echo "download faild try it again!"
   wget http://7u2tjs.com5.z0.glb.clouddn.com/linux/jdk/apache-tomcat-7.0.67.tar.gz
  fi
else 
 echo "apache-tomcat-7.0.67.tar.gz is already download" 
fi
tar zxvf apache-tomcat-7.0.67.tar.gz -C /home
mv /home/apache-tomcat-7.0.67 /home/tomcat7
cp tomcat /etc/init.d/tomcat
chmod 755 /etc/init.d/tomcat
chkconfig --add tomcat
service tomcat start
echo "your java home is /usr/lib/jvm/jdk7";
echo "your tomcat home is /home/tomcat7";
echo "use service tomcat start/stop/restar to startup/shutdown/restart the tomcat7"
echo "your default website is http://yourip:8080 enjoy it :)"
