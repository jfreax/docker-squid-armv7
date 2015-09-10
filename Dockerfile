FROM armv7/armhf-ubuntu:15.04

RUN apt-get update && apt-get install -y squid
COPY squid.conf /etc/squid3/squid.conf

EXPOSE 3128

CMD ["squid3", "squid3", "-d", "10", "-N"]
