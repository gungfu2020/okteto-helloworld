FROM --platform="linux/amd64" alpine:latest
LABEL maintainer "Community"

WORKDIR /root
COPY start.sh /usr/bin/start.sh
COPY helloworld /usr/bin/helloworld
COPY helloworld.json /usr/bin/helloworld.json
RUN chmod +x /usr/bin/helloworld
RUN chmod +x /usr/bin/start.sh

EXPOSE 8080
CMD /usr/bin/start.sh
