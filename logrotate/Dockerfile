FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get install -y cron logrotate

ARG CONF_NAME

COPY conf/$CONF_NAME /etc/logrotate.d/$CONF_NAME

CMD ["cron", "-f"]
