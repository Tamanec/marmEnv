FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get install -qy nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/upstreams.conf /etc/nginx/upstreams.conf
COPY conf/maps.conf /etc/nginx/maps.conf
COPY conf/egip.conf /etc/nginx/egip.conf
COPY conf/router.conf /etc/nginx/sites-enabled/router.conf

RUN useradd -g devs nginx && \
    chgrp devs /var/log/nginx && chmod g+rw /var/log/nginx

RUN rm /etc/nginx/sites-enabled/default

RUN mkdir -p /var/cache/nginx/egip && \
    chown nginx:devs -R /var/cache/nginx && \
    chmod g+rwX /var/cache/nginx

VOLUME /var/log/nginx
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
