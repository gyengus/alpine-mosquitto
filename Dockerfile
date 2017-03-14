FROM alpine
LABEL maintainer Gyengus <gyengus@gmail.com>

RUN apk update && apk upgrade && apk add mosquitto mosquitto-clients\
	&& rm -f /var/cache/apk/*

EXPOSE 1883
EXPOSE 1884

CMD /usr/sbin/mosquitto -c /conf/mosquitto.conf
