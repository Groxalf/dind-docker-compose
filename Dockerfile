FROM docker:20.10.17-dind-alpine3.16

RUN apk add -U make python2 python2-dev docker-compose libffi-dev openssl-dev gcc libc-dev make git curl gettext libintl git bash
RUN python2 -m ensurepip --default-pip
RUN cp /usr/bin/envsubst /usr/local/bin/envsubst
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN pip install awscli