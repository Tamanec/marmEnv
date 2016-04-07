FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN mkdir -p /var/www/userfiles

RUN chgrp devs /var/www/userfiles -R && chmod g+rw /var/www/userfiles -R

VOLUME /var/www/userfiles
