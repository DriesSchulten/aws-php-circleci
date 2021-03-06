FROM circleci/php:7.3-cli-node

MAINTAINER Dries Schulten

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /
RUN sudo apt-get update && \
		sudo apt-get install -y python-pip && \
 		sudo pip install -q awscli --upgrade && \
 		sudo rm -rf /var/lib/apt/lists/* && \
 		sudo docker-php-ext-install pcntl
