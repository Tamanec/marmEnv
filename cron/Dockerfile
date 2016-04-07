FROM marm-app:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get install -y cron

RUN mkdir /var/scripts && \
    chgrp devs /var/scripts && chmod g+rw /var/scripts

ARG CONF_NAME

COPY conf/$CONF_NAME /etc/cron.d/$CONF_NAME

COPY scripts/$CONF_NAME_* /var/scripts

CMD ["cron", "-f"]
