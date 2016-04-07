FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

ARG PROJECT_NAME

RUN \
    mkdir -p /var/log/marm/$PROJECT_NAME/archive && \
    mkdir -p /var/log/marm/$PROJECT_NAME/cron/archive && \
    mkdir -p /var/log/marm/$PROJECT_NAME/service/archive && \
    mkdir -p /var/log/marm/integrator/box-requests/$PROJECT_NAME/archive

RUN chgrp devs /var/log/marm -R && chmod g+rw /var/log/marm -R

VOLUME /var/log/marm
