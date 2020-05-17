#!/bin/sh
certbot certonly --standalone -d trackportfol.io,trackportfol.io --email dan@lynchy.co.nz -n --agree-tos --expand
/usr/sbin/nginx -g "daemon off;"