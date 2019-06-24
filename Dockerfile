# IMAGE TO USE
FROM debian:stretch-slim

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# ENVIRONMENTAL VARIABLES
ENV USER android

# INSTALLATION OF PACKAGES
ADD packages.txt .
RUN cat packages.txt | xargs apt-get update && apt-get install -y --no-install-recommends && \
rm packages.txt && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo && \

# CLEANING
apt-get --purge autoremove -y && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/*

# USER SELECTION
USER ${USER}

# SELECTION WORKING SPACE
WORKDIR /home/${USER}

# CONTROL TO START THE CONTAINER
ENTRYPOINT /bin/bash
