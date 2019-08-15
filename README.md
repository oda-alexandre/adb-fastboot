# ADB FASTBOOT

<img src="https://huawei-gadgetsacademy.netdna-ssl.com/wp-content/uploads/2017/03/ADB-and-Fastboot-drivers1.png" width="300" height="200"/>


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/adb-fastboot/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/adb-fastboot/commits/master)


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

```
docker run -ti --rm --name adb-fastboot -v ${HOME}:/root -v /dev/bus/usb:/dev/bus/usb --privileged alexandreoda/adb-fastboot
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/adb-fastboot/blob/master/LICENSE)
