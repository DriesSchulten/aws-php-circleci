FROM circleci/php:7.3-stretch-node-browsers-legacy

MAINTAINER Dries Schulten

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /
RUN sudo apt-get install -y python-dev python-pip && \
 		sudo pip install -q awscli --upgrade && \
 		sudo rm -rf /var/lib/apt/lists/* && \
 		sudo docker-php-ext-install zip pcntl
