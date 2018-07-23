#!/bin/sh
cat "/.caddy/acme/acme-v02.api.letsencrypt.org/sites/${DOMAIN}/${DOMAIN}.key" > /znc-data/znc.pem
cat "/.caddy/acme/acme-v02.api.letsencrypt.org/sites/${DOMAIN}/${DOMAIN}.crt" >> /znc-data/znc.pem
