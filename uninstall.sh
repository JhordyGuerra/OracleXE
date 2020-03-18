#/bin/bash

#Elimina la instancia OracleXE_18c
/etc/init.d/oracle-xe-18c delete

#Elimina el pre-instalador de OracleXE_18c
yum -y remove oracle-database-xe-18c.x86_64

#Elimina OracleXE_18c
yum -y remove oracle-database-preinstall-18c.x86_64

read -p "Successfully uninstalled"
