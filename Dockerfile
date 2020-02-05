FROM mhart/alpine-node:12.4.0

# If you have native dependencies, add these extra tools
# RUN apk add --no-cache make gcc g++ python

ENV TERM=xterm

RUN apk add --update --no-cache python \
    python2-dev \
    py-pip \
    git \
    nano \
    openssh-client \
    pixman \
    curl \
 && rm -rf /var/cache/apk/* \
 && pip install awscli \
 && npm install -g pino-pretty
