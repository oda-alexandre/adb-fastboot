FROM debian:stretch-slim

MAINTAINER https://www.oda-alexandre.com/

<<<<<<< HEAD
# ENVIRONMENTAL VARIABLES
ENV DEBIAN_FRONTEND noninteractive

# INSTALLATION OF PACKAGES
RUN apt-get update && apt-get install -y --no-install-recommends \
=======
ENV USER adb
ENV DEBIAN_FRONTEND noninteractive

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
apt-get update && apt-get install -y --no-install-recommends \
sudo \
>>>>>>> 81fcb1113ff804f148a6a6ec99894d0c78a8f8b4
usbutils \
android-tools-* \
fastboot

<<<<<<< HEAD
# CLEANING
apt-get --purge autoremove -y && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/*

# CONTROL TO START THE CONTAINER
CMD heimdall-flash-frontend \
=======
RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR /home/${USER}

RUN echo -e '\033[36;1m ******* CLEANING ******** \033[0m' && \
sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
ENTRYPOINT /bin/bash \
>>>>>>> 81fcb1113ff804f148a6a6ec99894d0c78a8f8b4
