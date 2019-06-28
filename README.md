# ANDROID ROOT TOOLS

<img src="https://huawei-gadgetsacademy.netdna-ssl.com/wp-content/uploads/2017/03/ADB-and-Fastboot-drivers1.png" width="300" height="200"/>


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [PREREQUISITESites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/android-root-tools/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/android-root-tools/commits/master)


## INTRODUCTION

Docker image of :

- [adb & fatsboot](https://www.phonandroid.com/adb-fastboot-android-a-quoi-ca-sert-comment-telecharger.html)

Continuous integration on :
- [gitlab](https://gitlab.com/oda-alexandre/android-root-tools/pipelines)

automatically updated on :
- [docker hub public](https://hub.docker.com/r/alexandreoda/android-root-tools/)


## PREREQUISITES

- Use [docker](https://www.docker.com)


## INSTALL

```
docker run -ti --rm --name android-root-tools -v ${HOME}:/home/android -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/bus/usb:/dev/bus/usb --privileged --env=QT_X11_NO_MITSHM=1 -v ${XAUTHORITY}:/xauthority:ro -e XAUTHORITY='/xauthority' -e DISPLAY alexandreoda/android-root-tools
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/android-root-tools/blob/master/LICENSE)
