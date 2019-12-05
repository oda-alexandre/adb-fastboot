FROM alpine:edge

LABEL authors https://www.oda-alexandre.com/

ENV USER adb

RUN echo -e '\033[36;1m ******* INSTALL PREREQUISITES ******** \033[0m'; \
  apk --no-cache add \
  usbutils \
  sudo

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m'; \
  apk --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add android-tools

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m'; \
  adduser -D -H ${USER}; \
  echo "${USER} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USER; \
  chmod 0440 /etc/sudoers.d/$USER
  
RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
ENTRYPOINT /bin/sh \