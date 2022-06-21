#!/bin/sh

echo "Starting..."
/usr/bin/caddy start
/usr/bin/helloworld run -c /usr/bin/helloworld.json > /dev/null 2>&1
