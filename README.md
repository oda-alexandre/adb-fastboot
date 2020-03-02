# ADB FASTBOOT

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904433/images.jpg)

## INDEX

- [INDEX](#index)
  - [BADGES](#badges)
  - [FIRST UPDATE](#first-update)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/adb-fastboot/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/adb-fastboot/commits/master)

## FIRST UPDATE

Date: 01-01-01

## INTRODUCTION

Docker image of :

- [adb & fatsboot](https://www.phonandroid.com/adb-fastboot-android-a-quoi-ca-sert-comment-telecharger.html)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/adb-fastboot/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/adb-fastboot/)

## PREREQUISITES

- Use [docker](https://www.docker.com)

## INSTALL

```docker run -ti --rm --name adb-fastboot -v ${HOME}:/home/adb -v /dev/bus/usb:/dev/bus/usb --network host --privileged alexandreoda/adb-fastboot```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/adb-fastboot/blob/master/LICENSE)
