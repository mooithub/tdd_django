FROM ubuntu:14.04
MAINTAINER mooithub <lab.moo@gmail.com>

RUN apt-get update

RUN apt-get install -y python-dev python-setuptools 
RUN easy_install pip
RUN pip install virtualenv
RUN pip install uwsgi

RUN apt-get install -y git



