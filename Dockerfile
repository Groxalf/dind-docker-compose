FROM docker:20.10.17-dind-alpine3.16

RUN apk add -U docker-compose libffi-dev openssl-dev gcc libc-dev make git curl gettext libintl git bash