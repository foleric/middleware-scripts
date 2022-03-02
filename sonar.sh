#!/bin/bash

#Description: sonarQube installation

echo "Java 11 installation will start shortly"
sleep 3
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y

echo "Installing sonarQube.Be patient, it might take some time"
sleep 3
cd /opt
sudo yum install wget -y
sudo yum install unzip
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
sleep 3
 
echo "Follow these instructions to connect to SonarQube:
Connect to the SonarQube server through the browser. It uses port 9000.
http://<your-ip-address>:9000
NB: Some servers have firewall enabled. So if you are not able to connect from the browser, then you might want to open the port 9000 with this command: 
sudo firewall-cmd --permanent --add-port=9000/tcp
Here are the default credentials for access:
Login: admin
Password: admin"
