[![Gratipay User](https://img.shields.io/gratipay/user/gyengus.svg?style=flat)](https://gratipay.com/~gyengus/) [![Docker Stars](https://img.shields.io/docker/automated/gyengus/alpine-mosquitto.svg?style=flat)](https://hub.docker.com/r/gyengus/alpine-mosquitto/) [![Docker Stars](https://img.shields.io/docker/stars/gyengus/alpine-mosquitto.svg?style=flat)](https://hub.docker.com/r/gyengus/alpine-mosquitto/) [![Docker Pulls](https://img.shields.io/docker/pulls/gyengus/alpine-mosquitto.svg?style=flat)](https://hub.docker.com/r/gyengus/alpine-mosquitto/) 
# Mosquitto MQTT broker in Alpine Docker container

## Usage

1. The conf/mosquitto.conf file is a default config for Mosquitto. If you want, modify it.
2. Create a docker-compose.yml file, for example:
```yml
version: "2"

services:
  mosquitto:
    image: gyengus/alpine-mosquitto
    restart: always
    hostname: mqtt
    volumes:
      - ./conf:/conf
      - ./logs:/var/log
    ports:
    - "1883:1883"
    - "1884:1884"
```
3. You can run the container by the
```bash
docker-compose up -d
```
command.
