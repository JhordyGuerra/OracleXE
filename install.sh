#!/bin/bash

mkdir ./logs

curl -o resource/oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm https://yum.oracle.com/repo/OracleLinux/OL7/latest/x86_64/getPackage/oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm > ./logs/install.log 2>&1

echo "Pre Installer Downloaded"

yum -y localinstall resource/oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm >> ./logs/install.log 2>&1

echo "Pre Installer Installed"

yum -y localinstall resource/oracle-database-xe-18c-1.0-1.x86_64.rpm >> ./logs/install.log 2>&1

echo "OracleXE 18c Installed"

#rm resource/oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm >> ./logs/install.log 2>&1

echo "Pre Installer Removed"

#rm resource/oracle-database-xe-18c-1.0-1.x86_64.rpm >> ./logs/install.log 2>&1

echo "Installer Removed"

(echo "dbora";echo "dbora";) | /etc/init.d/oracle-xe-18c configure >> ./logs/install.log 2>&1

export ORACLE_SID=XE
export ORAENV_ASK=NO
export ORACLE_HOME=/opt/oracle/product/18c/dbhomeXE
export ORACLE_BASE=/opt/oracle
export PATH=$PATH:/opt/oracle/product/18c/dbhomeXE/bin

read -p "continue"

clear

lsnrctl status

read -p "continue"

systemctl enable oracle-xe-18c >> ./logs/install.log 2>&1

#systemctl start oracle-xe-18c >> ./logs/install.log 2>&1

read -p "installed successfully"
