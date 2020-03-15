FROM alexandreoda/starfighter

LABEL authors https://www.oda-alexandre.com

ENV USER adb
ENV HOME /home/${USER}
ENV PORTS 5037
ENV DEBIAN_FRONTEND noninteractive

RUN echo -e '\033[36;1m ******* INSTALL PREREQUISITES ******** \033[0m' && \
  apt-get update && apt-get install --no-install-recommends -y \
  sudo \
  ca-certificates \
  curl \
  usbutils \
  android-tools-* \ 
  fastboot && \
  rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
  useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER} && \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR ${HOME}

RUN echo -e '\033[36;1m ******* OPENING PORTS ******** \033[0m'
EXPOSE ${PORTS}

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
ENTRYPOINT /bin/bash \