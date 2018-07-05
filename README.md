
# Mosquitto MQTT broker in Alpine Docker container

[![Docker Build](https://img.shields.io/docker/automated/gyengus/alpine-mosquitto.svg?style=flat)](https://hub.docker.com/r/gyengus/alpine-mosquitto/) [![Docker Stars](https://img.shields.io/docker/stars/gyengus/alpine-mosquitto.svg?style=flat)](https://hub.docker.com/r/gyengus/alpine-mosquitto/) [![Docker Pulls](https://img.shields.io/docker/pulls/gyengus/alpine-mosquitto.svg?style=flat)](https://hub.docker.com/r/gyengus/alpine-mosquitto/) [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=K5PAV5V7WGWFL)

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

## Donations
- PayPal: https://paypal.me/gyengus
- Bitcoin: 1QJzLBK9uQP4RthmKJRQwy3v5sd4XS4S7P
- Bitcoin Cash: qp04tazu4fe7lv6zr99suu40swqqp747nsm0kcfckv
- Ethereum: 0x2bD68120A56acBf6Dbd11da2060228b8912C1e3C
