FROM ubuntu:16.04

MAINTAINER johndavedecano@gmail.com

RUN apt-get update

RUN apt-get install -y python-software-properties

RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_7.x -o nodesource_setup.sh

RUN apt-get install -y nodejs

RUN echo "deb http://dl.bintray.com/deepstreamio/deb xenial main" > /etc/apt/sources.list

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61

RUN apt-get update

RUN apt-get install -y deepstream.io

RUN deepstream install msg redis

RUN deepstream install storage mongodb

RUN deepstream install cache redis

RUN deepstream install msg amqp