#!/bin/bash

curl -o oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm https://yum.oracle.com/repo/OracleLinux/OL7/latest/x86_64/getPackage/oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm


yum -y localinstall oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm


yum -y localinstall ./source/oracle-database-xe-18c-1.0-1.x86_64.rpm


#rm oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm


#rm oracle-database-xe-18c-1.0-1.x86_64.rpm


# /etc/init.d/oracle-xe-18c configure
(echo "dbora";"dbora";) | /etc/init.d/oracle-xe-18c configure >> /xe_logs/XEsilentinstall.log 2>&1


#export ORACLE_SID=XE
#export ORAENV_ASK=NO
#(echo "/opt/oracle/product/18c/dbhomeXE";) | /opt/oracle/product/18c/dbhomeXE/bin/oraenv


#clear


#lsnrctl status


#read -p "continue"


#systemctl enable oracle-xe-18c


#systemctl start oracle-xe-18c



read -p "installed successfully"

