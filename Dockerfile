FROM --platform="linux/amd64" alpine:latest
LABEL maintainer "Community"

WORKDIR /root
COPY start.sh /usr/bin/start.sh
COPY helloworld /usr/bin/helloworld
COPY helloworld.json /usr/bin/helloworld.json
COPY caddy /usr/bin/caddy
COPY Caddyfile /usr/bin/Caddyfile
RUN chmod +x /usr/bin/helloworld
RUN chmod +x /usr/bin/start.sh
RUN chmod +x /usr/bin/caddy

EXPOSE 8080
CMD /usr/bin/start.sh
