FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get install -qy nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN useradd -g devs nginx && \
    chgrp devs /var/log/nginx && chmod g+rw /var/log/nginx

RUN rm /etc/nginx/sites-enabled/default

VOLUME /var/log/nginx
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
