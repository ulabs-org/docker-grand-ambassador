FROM golang:alpine

ADD . /go/src/github.com/cpuguy83/docker-grand-ambassador

WORKDIR /go/src/github.com/cpuguy83/docker-grand-ambassador

RUN apk --update add git \
    && go get \
    && go build \
    && cp docker-grand-ambassador /usr/bin/grand-ambassador \
    && apk del git \
    && rm -rf /usr/local/go \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/grand-ambassador"]
