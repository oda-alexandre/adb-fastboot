FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
locales \
usbutils \
android-tools* \
fastboot \
heimdall-flash \
heimdall-flash-frontend

# SELECTION DE LA LANGUE FRANCAISE
ENV LANG fr_FR.UTF-8
RUN echo fr_FR.UTF-8 UTF-8 > /etc/locale.gen && locale-gen

# AJOUT UTILISATEUR
RUN useradd -d /home/android -m android && \
passwd -d android && \
adduser android sudo

# SELECTION UTILISATEUR
USER android

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/android

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
ENTRYPOINT /bin/bash
