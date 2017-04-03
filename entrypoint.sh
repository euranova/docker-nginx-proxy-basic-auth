#!/bin/sh
cat /nginx.conf | envsubst > /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
