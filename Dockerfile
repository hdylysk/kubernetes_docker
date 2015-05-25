FROM golang:1.4
MAINTAINER tobe tobeg3oogle@gmail.com

RUN apt-get update -y

RUN apt-get install -y vim




ADD . /kubernetes_docker
WORKDIR /kubernetes_docker

CMD /bin/bash
#CMD hack/local-up-cluster.sh