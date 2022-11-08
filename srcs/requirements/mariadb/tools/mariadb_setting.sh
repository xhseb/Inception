#!/bin/sh
service mysql start;

mysql -e "CREATE DATABASE IF NOT EXISTS $MARIA_DATABASE";
mysql -e "CREATE USER IF NOT EXISTS '$MARIA_USER'@'%' IDENTIFIED BY '$MARIA_PASSWORD'";
mysql -e "GRANT ALL PRIVILEGES ON $MARIA_DATABASE.* TO '$MARIA_USER'@'%'";
# mysql $MARIA_DATABASE -u root < ./wp_backup.sql
mysql -e "ALTER USER '$MARIA_ROOT'@'localhost' IDENTIFIED BY '$MARIA_ROOT_PASSWORD'; FLUSH PRIVILEGES;"
mysqladmin -u$MARIA_ROOT -p$MARIA_ROOT_PASSWORD shutdown

exec mysqld