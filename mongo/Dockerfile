FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7F0CEB10 &&\
    echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list &&\
    apt-get update &&\
    echo "mongodb-10gen hold" | dpkg --set-selections

RUN apt-get -y --force-yes install vim mongodb-10gen=2.4.5

COPY scripts/run /usr/bin/run
COPY scripts/create-user.js /tmp/create-user.js

RUN mkdir -p /data/db /data/configdb \
	&& chown -R mongodb:mongodb /data/db /data/configdb

VOLUME /data/db /data/configdb

EXPOSE 27017

ENTRYPOINT ["run"]
CMD ["mongod", "--smallfiles"]
