FROM mhart/alpine-node:12.4.0

# If you have native dependencies, add these extra tools
# RUN apk add --no-cache make gcc g++ python

ENV TERM=xterm

RUN apk --no-cache add ca-certificates wget \
 && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
 && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.30-r0/glibc-2.30-r0.apk \
 && apk add glibc-2.30-r0.apk \
 && apk add --update --no-cache python \
    python2-dev \
    py-pip \
    git \
    nano \
    openssh-client \
    curl \
 && rm -rf /var/cache/apk/* \
 && pip install awscli \
 && npm install -g pino-pretty
