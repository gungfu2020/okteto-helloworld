#!/bin/sh

echo "Starting caddy..."
/usr/bin/caddy start -config /usr/bin/Caddyfile > /dev/null 2>&1
echo "Starting helloworld..."
/usr/bin/helloworld run -c /usr/bin/helloworld.json > /dev/null 2>&1
