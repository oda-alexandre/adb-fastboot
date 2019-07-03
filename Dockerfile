FROM alpine:edge

MAINTAINER https://www.oda-alexandre.com/

ENV DEBIAN_FRONTEND noninteractive

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
apk --update-cache --progress --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add \
usbutils \
android-tools \
fastboot

RUN echo -e '\033[36;1m ******* CLEANING ******** \033[0m' && \
apk --purge  && \
apk autoclean

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR /root

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD /bin/bash \
