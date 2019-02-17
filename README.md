# ANDROID ROOT TOOLS


![android-root-tools](https://raw.githubusercontent.com/oda-alexandre/android-root-tools/master/img/logo-android-root-tools.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/android-root-tools/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![android-root-tools docker build](https://img.shields.io/docker/build/alexandreoda/android-root-tools.svg)](https://hub.docker.com/r/alexandreoda/android-root-tools)


## INTRODUCTION

Ce repository contient le fichier Dockerfile avec [fatsboot](https://developer.android.com/studio) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/android-root-tools/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -ti --rm --name android-root-tools -v ${HOME}:/home/android -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/bus/usb:/dev/bus/usb --privileged --env=QT_X11_NO_MITSHM=1 -v ${XAUTHORITY}:/xauthority:ro -e XAUTHORITY='/xauthority' -e DISPLAY alexandreoda/android-root-tools
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/android-root-tools/blob/master/LICENSE)
