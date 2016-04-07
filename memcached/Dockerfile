FROM marm-os:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get install -qy memcached

EXPOSE 11211

USER memcache

CMD ["memcached", "-m", "64"]
