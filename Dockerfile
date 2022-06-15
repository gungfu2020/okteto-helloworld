FROM --platform=${TARGETPLATFORM} alpine:latest
LABEL maintainer "Community"

WORKDIR /root
ARG TARGETPLATFORM
ARG TAG
RUN chmod +x helloworld
COPY helloworld /usr/bin/helloworld
COPY helloworld.json /usr/bin/helloworld.json

CMD [ "/usr/bin/helloword", "run", "-c", "/usr/bin/helloworld.json", ">", "/dev/null", "2>&1" ]
