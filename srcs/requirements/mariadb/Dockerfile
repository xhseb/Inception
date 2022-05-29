# 작업을 시작할 베이스 이미지를 지정
FROM debian:buster

LABEL maintainer="sonkang@student.42seoul.kr"

# 새 이미지 레이어를 만들어 내 명령을 실행하고 결과를 커밋한다.
RUN apt-get update &&  apt-get install -y \
	mariadb-server \
	vim

COPY tools/setup.sh .
RUN chmod +x setup.sh

EXPOSE 3306
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d
ENTRYPOINT ["bash", "/setup.sh"]
