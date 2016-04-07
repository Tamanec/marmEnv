FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

ARG SOURCE_NAME

COPY source/$SOURCE_NAME /var/www/$SOURCE_NAME

RUN chgrp devs /var/www/$SOURCE_NAME -R && chmod g+rw /var/www/$SOURCE_NAME -R

VOLUME /var/www/$SOURCE_NAME
