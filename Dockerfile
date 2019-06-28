# IMAGE TO USE
FROM debian:stretch-slim

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# ENVIRONMENTAL VARIABLES
ENV DEBIAN_FRONTEND noninteractive

# INSTALL OF PACKAGES
RUN apt-get update && apt-get install -y --no-install-recommends \
usbutils \
android-tools-* \
fastboot \
heimdall-flash \
heimdall-flash-frontend && \

# CLEANING
apt-get --purge autoremove -y && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/*

# START THE CONTAINER
ENTRYPOINT /bin/bash
