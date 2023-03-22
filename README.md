# owncloud-dockerfile
This repository contains configuration of owncloud 8.2 and git

## Quick Start


## Build and Deploy with Dockerfile

This command is used to build docker image locally.

``` bash
docker build -t k_owncloud_img .
```

This command is used to run locally baked image.

``` bash
docker run -p 80:80 --name kashan_owncloud k_owncloud_img
```