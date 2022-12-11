#!/bin/bash
sudo groupadd -g 10001 oinstall
sudo useradd -u 10001 -g 10001 oracle
sudo mkdir -p /u01/app/oracle
sudo mkdir -p /u01/app/oraInventory
sudo chown -R oracle:oinstall /u01/app/oracle
sudo chown -R oracle:oinstall /u01/app/oraInventory
sudo chmod -R 775 /u01/app
sudo echo "oracle s/w installed" > /u01/app/oracle/oracle_install
