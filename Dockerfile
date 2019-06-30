FROM debian:stretch-slim

MAINTAINER https://www.oda-alexandre.com/

ENV DEBIAN_FRONTEND noninteractive

RUN echo -e '\033[36;1m' ******* INSTALL PACKAGES ******** '\033[0m' && \
apt-get update && apt-get install -y --no-install-recommends \
usbutils \
android-tools-* \
fastboot

RUN echo -e '\033[36;1m' ******* CLEANING ******** '\033[0m' && \
apt-get --purge autoremove -y && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/*

ENTRYPOINT /bin/bash \
