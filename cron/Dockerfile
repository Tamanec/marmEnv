FROM marm-app:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get install -y cron tofrodos && \
    ln -s /usr/bin/fromdos /usr/bin/dos2unix

RUN mkdir /var/scripts && \
    chgrp devs /var/scripts && chmod g+rw /var/scripts

ARG PROJECT_NAME

COPY conf/$PROJECT_NAME /etc/cron.d/$PROJECT_NAME

RUN dos2unix /etc/cron.d/$PROJECT_NAME && \
    echo "\n" >> /etc/cron.d/$PROJECT_NAME

COPY scripts/$PROJECT_NAME_* /var/scripts

CMD ["cron", "-f"]
