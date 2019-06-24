# ANDROID ROOT TOOLS


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/android-root-tools/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/android-root-tools/commits/master)
[![coverage report](https://gitlab.com/oda-alexandre/android-root-tools/badges/master/coverage.svg)](https://gitlab.com/oda-alexandre/android-root-tools/commits/master)


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
