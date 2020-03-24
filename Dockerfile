FROM docker:latest

RUN apk add -U make py-pip python-dev libffi-dev openssl-dev gcc libc-dev make
RUN pip install docker-compose