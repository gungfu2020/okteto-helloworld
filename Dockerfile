FROM --platform="linux/amd64" alpine:latest
LABEL maintainer "Community"

WORKDIR /root
ARG TARGETPLATFORM
ARG TAG
COPY helloworld /usr/bin/helloworld
COPY helloworld.json /usr/bin/helloworld.json
RUN chmod +x /usr/bin/helloworld

CMD [ "/usr/bin/helloword", "run", "-c", "/usr/bin/helloworld.json", ">", "/dev/null", "2>&1" ]
