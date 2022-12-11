#!/bin/bash
sudo amazon-linux-extras install epel -y 
sudo yum install https://dev.mysql.com/get/mysql80-community-release-el7-5.noarch.rpm -y
sudo yum install mysql-community-server -y
sudo systemctl active mysqld 
sudo systemctl start mysqld 
sudo systemctl status mysqld 
