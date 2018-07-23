FROM alpine:latest

ENV DOMAIN=""
VOLUME /.caddy /znc-data

RUN /bin/sh -c 'echo "0 3 1 * * /bin/sh /copy-cert" | crontab -'

COPY entry.sh /entry
COPY copy-cert.sh /copy-cert

ENTRYPOINT ["/bin/sh", "/entry"]
