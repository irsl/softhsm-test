FROM debian:buster

RUN apt-get update && \
    apt-get install -y softhsm2 opensc && \
	apt-get clean -y

ADD softhsm.sh /usr/local/bin/softhsm.sh

ENTRYPOINT /usr/local/bin/softhsm.sh
