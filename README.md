
# Mosquitto MQTT broker in Alpine Docker container

[![Docker Build](https://img.shields.io/docker/automated/gyengus/alpine-mosquitto.svg?style=flat)](https://hub.docker.com/r/gyengus/alpine-mosquitto/) 
[![Docker Stars](https://img.shields.io/docker/stars/gyengus/alpine-mosquitto.svg?style=flat)](https://hub.docker.com/r/gyengus/alpine-mosquitto/) 
[![Docker Pulls](https://img.shields.io/docker/pulls/gyengus/alpine-mosquitto.svg?style=flat)](https://hub.docker.com/r/gyengus/alpine-mosquitto/)

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

## Tips
- Bitcoin: bc1qx4q5epl7nsyu9mum8edrvp2my8tut0enrz7kcn
- EVM compatible (Ethereum, Fantom, Polygon, etc.): 0x9F0a70A7306DF3fc072446cAF540F6766a4CC4E8
- Litecoin: ltc1qk2gf43u3lw6vzhvah03wns0nkgetg2c7ea0w5r
- Solana: 14SHwk3jTNYdMkEvpbq1j7Eu9iUJ3GySnaBF4kqBR8Ah
- Flux: t1T3x4HExm4nWD7gN68px9zCF3ZFQyneFSK
