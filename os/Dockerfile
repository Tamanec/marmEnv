FROM ubuntu:12.04

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen ru_RU.UTF-8 && dpkg-reconfigure locales

RUN apt-get update -q

RUN apt-get install -qy --force-yes \
    make \
    curl \
    vim \
    net-tools

RUN groupadd devs && \
    usermod -g devs root && \
    mkdir /var/www && chgrp devs /var/www && chmod g+rw /var/www

CMD ["bash"]
