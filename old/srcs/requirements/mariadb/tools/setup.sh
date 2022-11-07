#!/bin/bash

if [ ! -d "/var/lib/mysql/wordpress" ]; then 
    
    mysql_install_db
    service mysql start
    
    mysql -e "CREATE USER 'sonkang'@'localhost' identified by '1234';" &&\
	mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;" &&\
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'sonkang'@localhost IDENTIFIED BY '1234';" &&\
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'sonkang1'@'%' IDENTIFIED BY '1234';" &&\
	mysql -e "UPDATE mysql.user SET Password = PASSWORD('1234') WHERE User = 'root'" &&\
	mysql -e "FLUSH PRIVILEGES;"
    service mysql stop
fi

sleep 3

mysqld