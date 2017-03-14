FROM alpine
MAINTAINER Gyengus <gyengus@gmail.com>

RUN apk update && apk upgrade && apk add mosquitto mosquitto-clients\
	&& rm -f /var/cache/apk/*

ADD mosquitto.conf /etc/mosquitto/

EXPOSE 1883
EXPOSE 1884
CMD /usr/sbin/mosquitto -c /conf/mosquitto.conf
