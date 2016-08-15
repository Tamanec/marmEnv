FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get install -y cron logrotate

ARG PROJECT_NAME

COPY conf/$PROJECT_NAME /etc/logrotate.d/$PROJECT_NAME

CMD ["cron", "-f"]
