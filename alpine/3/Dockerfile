FROM alpine:3

RUN apk update
RUN apk upgrade

RUN apk add --no-cache curl
RUN apk add --no-cache ca-certificates
RUN apk add --no-cache libc6-compat
RUN apk add --update tzdata

RUN update-ca-certificates
