# IMAGE TO USE
FROM debian:stretch-slim

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# ENVIRONMENTAL VARIABLES
ENV DEBIAN_FRONTEND noninteractive

# INSTALLATION OF PACKAGES
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

# CONTROL TO START THE CONTAINER
CMD heimdall-flash-frontend \
