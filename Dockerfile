FROM alpine

LABEL maintainer="pandidanx@gmail.com"

ENV INTERVAL=600

RUN apk add curl

COPY duckdns /usr/local/bin/duckdns

RUN chmod 700 /usr/local/bin/duckdns

ENTRYPOINT ["duckdns"]