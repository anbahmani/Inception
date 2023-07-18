FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y php7.3 php-fpm php-mysql

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

RUN apt-get update && apt-get install -y default-mysql-client
RUN apt-get install -y mariadb-client

EXPOSE 9000

COPY ./tools/wpscript.sh ./
RUN chmod +x ./wpscript.sh

COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf

ENTRYPOINT ["bash", "./wpscript.sh"]