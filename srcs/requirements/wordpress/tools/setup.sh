#!/bin/bash
set -e

for ((i=10000; i>=0; i--))
do
	echo -e "\e[31mloading...\e[0m\n"
done

if  [ ! -f /var/www/wordpress/wp-config.php ]; then

	for ((i=10000; i>=0; i--))
	do
		echo -e "\e[31mloading123...\e[0m\n"
	done

	wp core --allow-root download --locale=ko_KR --force
	while  [ ! -f /var/www/wordpress/wp-config.php ]; do

		wp core config --allow-root --dbname=wordpress --dbuser=${MARIA_USER} --dbpass=${MARIA_PASSWORD} --dbhost=mariadb:3306

	done
	wp core install --allow-root --url='localhost' --title='Welcome to sonkang`s Inception' --admin_user=${MARIA_ROOT} --admin_password=${MARIA_ROOT_PASSWORD}  --admin_email="sonkang@student.42seoul.kr" --path='/var/www/wordpress';
	wp  user create --allow-root ${MARIA_USER} zzzu5280@gmail.com --user_pass=${MARIA_PASSWORD} --role=author
fi

# create the PID file(/run/php/php7.3-fpm.pid)
service php7.3-fpm start
service php7.3-fpm stop

exec "$@"