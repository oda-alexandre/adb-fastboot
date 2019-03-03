FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.com

# VARIABLES D'ENVIRONNEMENT
ENV LANG fr_FR.UTF-8
ENV USER android

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
RUN echo ${LANG} > /etc/locale.gen && locale-gen

# AJOUT UTILISATEUR
RUN useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
ENTRYPOINT /bin/bash
