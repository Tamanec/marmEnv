FROM marm-app:latest

MAINTAINER Denis Sidorov <denis.sidorov@altarix.ru>

RUN apt-get update -q && apt-get install -qy openjdk-7-jre

ADD LibreOffice_5.2.0_Linux_x86-64_deb_langpack_ru.tar.gz LibreOffice_5.2.0_Linux_x86-64_deb.tar.gz /tmp/

RUN dpkg -i /tmp/LibreOffice_5.2.0.4_Linux_x86-64_deb/DEBS/*.deb && \
    dpkg -i /tmp/LibreOffice_5.2.0.4_Linux_x86-64_deb_langpack_ru/DEBS/*.deb

COPY libs/* /opt/libreoffice5.2/program/classes/