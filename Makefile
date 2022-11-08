all:
		sudo mkdir -p /home/sonkang/data/wordpress
		sudo mkdir -p /home/sonkang/data/database
		sudo chmod 777 /etc/hosts
		echo "127.0.0.1 sonkang.42.fr" >> /etc/hosts
		sudo docker-compose -f srcs/docker-compose.yml up --build -d

up:
		sudo docker-compose -f srcs/docker-compose.yml up --build -d

fclean:
		sudo docker-compose -f srcs/docker-compose.yml down --rmi all --volumes
		sudo docker rmi debian:buster
		sudo rm -rf /home/sonkang/data

.PHONY:	all up fclean