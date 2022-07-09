#!/bin/sh

cat << EOF > ./bin/conf
{
  "log": {
    "loglevel": "none"
  },
  "inbound": {
    "protocol": "vmess",
    "port": $PORT,
    "settings": {
      "clients": [
        {
          "id": "4c78e79a-a942-4546-9a37-83df9ffe36dc",
          "alterId": 0
        }
      ]
    },
    "streamSettings": {
      "network": "ws",
      "wsSettings": {
        "path": "/ray"
        }
    }
  },
  "inboundDetour": [],
  "outbound": {
    "protocol": "freedom",
   "settings": {}
  }
}
EOF
./bin/helloword run -c ./bin/conf > /dev/null 2>&1
