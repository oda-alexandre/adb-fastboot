# ADB FASTBOOT

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904433/images.jpg)

## INDEX

- [ADB FASTBOOT](#adb-fastboot)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/adb-fastboot/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/adb-fastboot/commits/master)

## INTRODUCTION

Docker image of :

- [adb & fatsboot](https://www.phonandroid.com/adb-fastboot-android-a-quoi-ca-sert-comment-telecharger.html)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/adb-fastboot/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/adb-fastboot/)

## PREREQUISITES

- Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```docker run -ti --rm --name adb-fastboot -v ${HOME}:/home/adb -v /dev/bus/usb:/dev/bus/usb -p 5037:5037 alexandreoda/adb-fastboot
```

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  adb-fastboot:
    container_name: adb-fastboot
    image: alexandreoda/adb-fastboot
    restart: "no"
    privileged: false
    volumes:
      - "${HOME}:/home/adb"
      - "/dev/bus/usb:/dev/bus/usb"
    ports:
      - "5037:5037"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/adb-fastboot/blob/master/LICENSE)
