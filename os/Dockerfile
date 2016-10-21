FROM ubuntu:12.04

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen "ru_RU.UTF-8" && \
    locale-gen "en_US.UTF-8" && \
    dpkg-reconfigure locales
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update -q

RUN apt-get install -qy --force-yes \
    make \
    curl \
    vim \
    net-tools

RUN groupadd devs && \
    usermod -g devs root && \
    mkdir /var/www && chgrp devs /var/www && chmod g+rw /var/www

ENV TZ Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["bash"]
