FROM debian:buster

RUN apt-get update && \
	apt-get install -y nginx openssl dumb-init

RUN rm /etc/nginx/sites-available/default
RUN rm /etc/nginx/sites-enabled/default

COPY conf/nginx.conf /etc/nginx/sites-available/default
 
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

RUN mkdir /etc/nginx/ssl

COPY ./tools/setup.sh /

RUN chmod +x /setup.sh

EXPOSE 443

ENTRYPOINT [ "/usr/bin/dumb-init", "/setup.sh" ]

CMD [ "nginx", "-g", "daemon off;" ]