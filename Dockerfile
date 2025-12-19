
# add vars in dockerfile context ARG]
# ARG name

FROM ubuntu:24.04

RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker

RUN DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt upgrade -y
RUN apt install -y python3 \ 
    python3-pip \
    python3-dev \ 
    python3-venv  \
    curl \
    wget \
    git \
    build-essential \
    libssl-dev \
    libffi-dev \
    wget \
    curl

RUN apt install -y nodejs npm

RUN rm -rf /var/lib/apt/lists/* -vf 

WORKDIR /app

RUN useradd -ms /bin/bash apprunner
USER apprunner

# https://octopus.com/blog/using-ubuntu-docker-image
# https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-programming-environment-on-an-ubuntu-22-04-server
# https://stackoverflow.com/questions/25267372/correct-way-to-detach-from-a-container-without-stopping-it
#  docker build -t ubuntu .


