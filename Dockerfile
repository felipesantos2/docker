
# add vars in dockerfile context
ARG BASE_IMAGE=ubuntu
ARG IMAGE_VERSION=24.04
# 
FROM ${BASE_IMAGE}:${IMAGE_VERSION}

RUN apt update -y && apt upgrade -y
RUN apt install -y --no-install-recommends python3 curl

RUN rm -rf /var/lib/apt/lists/* -vf 

WORKDIR /app

USER root # add user of host

#  docker build -t ubuntu .


