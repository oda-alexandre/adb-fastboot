# ANDROID ROOT TOOLS

[![dockeri.co](https://dockeri.co/image/alexandreoda/android-root-tools)](https://hub.docker.com/r/alexandreoda/android-root-tools)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/android-root-tools.svg)](https://microbadger.com/images/alexandreoda/android-root-tools)
[![size](https://images.microbadger.com/badges/image/alexandreoda/android-root-tools.svg)](https://microbadger.com/images/alexandreoda/android-root-tools")
[![build](https://img.shields.io/docker/build/alexandreoda/android-root-tools.svg)](https://hub.docker.com/r/alexandreoda/android-root-tools)
[![automated](https://img.shields.io/docker/automated/alexandreoda/android-root-tools.svg)](https://hub.docker.com/r/alexandreoda/android-root-tools)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [fatsboot](https://www.phonandroid.com/adb-fastboot-android-a-quoi-ca-sert-comment-telecharger.html)
- [heimdall](http://heimdall-download.com/)

mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/android-root-tools/).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -ti --rm --name android-root-tools -v ${HOME}:/home/android -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/bus/usb:/dev/bus/usb --privileged --env=QT_X11_NO_MITSHM=1 -v ${XAUTHORITY}:/xauthority:ro -e XAUTHORITY='/xauthority' -e DISPLAY alexandreoda/android-root-tools
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/android-root-tools/blob/master/LICENSE)
