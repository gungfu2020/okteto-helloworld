FROM --platform=${TARGETPLATFORM} alpine:latest
LABEL maintainer "Community"

WORKDIR /root
ARG TARGETPLATFORM
ARG TAG
COPY start.sh /root/start.sh
COPY helloworld.json /root/helloworld.json

RUN set -ex \
	&& apk add --no-cache tzdata openssl ca-certificates \
	&& chmod +x /root/start.sh \
	&& /root/start.sh "${TARGETPLATFORM}" "${TAG}"

CMD [ "/usr/bin/helloword", "run", "-c", "/usr/bin/helloworld.json", ">", "/dev/null", "2>&1" ]
