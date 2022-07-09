#!/bin/bash
echo "Starting gen caddyfile..."
cat << EOF > /app/Caddyfile
:$PORT
reverse_proxy /ray 127.0.0.1:8089
EOF
echo "Starting caddy..."
/app/caddy run -config /app/Caddyfile
