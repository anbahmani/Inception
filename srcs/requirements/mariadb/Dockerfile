FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y && apt-get install --no-install-recommends -y mariadb-server && apt-get install -y mariadb-client && apt-get install -y procps

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld && mkdir -p /var/lib/mysql
RUN chown mysql:mysql /var/run/mysqld/ && chmod -R 755 /var/run/mysqld/ && chown mysql:mysql /var/lib/mysql/ && chmod -R 755 /var/lib/mysql/

EXPOSE 3306

COPY ./tools/dbscript.sh ./
RUN chmod +x ./dbscript.sh

ENTRYPOINT ["bash", "./dbscript.sh"]