FROM marm-app:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get install -y cron

RUN mkdir /var/scripts && \
    chgrp devs /var/scripts && chmod g+rw /var/scripts

ARG PROJECT_NAME

COPY conf/$PROJECT_NAME /etc/cron.d/$PROJECT_NAME

COPY scripts/$PROJECT_NAME_* /var/scripts

CMD ["cron", "-f"]
