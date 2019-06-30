FROM debian:stretch-slim

MAINTAINER https://www.oda-alexandre.com/

ENV COLORIN echo -e '\033[36;1m'
ENV COLOROUT '\033[0m'
ENV DEBIAN_FRONTEND noninteractive

RUN ${COLORIN} ******* INSTALL PACKAGES ******** ${COLOROUT}
RUN apt-get update && apt-get install -y --no-install-recommends \
usbutils \
android-tools-* \
fastboot

RUN ${COLORIN} ******* CLEANING ******** ${COLOROUT}
RUN apt-get --purge autoremove -y && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/*

ENTRYPOINT /bin/bash \
