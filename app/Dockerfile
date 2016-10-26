FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get install -qy --force-yes \
    imagemagick \
    libaio1 libpcre3-dev libcurl4-openssl-dev libevent-dev ca-certificates libedit2 libsqlite3-0 libxml2 \
    php5-cli php5-fpm \
    php-pear php-http php5-curl \
    php5-pgsql php5-sqlite php5-memcache \
    php5-gd php5-mcrypt php5-uuid php5-json php5-imagick

RUN printf 'no' | pecl install mongo ;\
    printf 'yes\nyes\n/usr/include\n/usr/lib/x86_64-linux-gnu\n/usr/lib' | pecl install pecl_http-1.7.6

COPY conf/php.ini /etc/php5/fpm/php.ini
COPY conf/php.ini /etc/php5/cli/php.ini
COPY conf/mongo.ini /etc/php5/conf.d/mongo.ini
COPY conf/http.ini /etc/php5/conf.d/http.ini
COPY conf/php-fpm.conf /etc/php5/fpm/php-fpm.conf
COPY conf/www.conf /etc/php5/fpm/pool.d/www.conf

RUN usermod -g devs www-data && \
    mkdir /var/log/php && chgrp devs /var/log/php && chmod g+rw /var/log/php

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === 'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php --install-dir=/usr/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"

VOLUME /var/log/php
EXPOSE 9000

CMD ["php5-fpm"]
