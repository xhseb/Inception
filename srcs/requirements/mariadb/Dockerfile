FROM debian:buster

# install mariadb
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install mariadb-server -y

# config mariadb
COPY tools/mariadb_setting.sh /mariadb_setting.sh
COPY tools/wp_backup.sql /wp_backup.sql
COPY ./conf/my.cnf /etc/mysql/my.cnf

EXPOSE 3306

ENTRYPOINT ["sh", "./mariadb_setting.sh"]
