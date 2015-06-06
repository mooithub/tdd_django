FROM ubuntu:14.04
MAINTAINER mooithub <lab.moo@gmail.com>

RUN apt-get update

RUN apt-get install -y python-dev python-setuptools 
RUN easy_install pip
RUN pip install virtualenv
RUN pip install uwsgi

RUN apt-get install -y git

WORKDIR /var/www
RUN git clone https://github.com/mooithub/tdd_django.git

WORKDIR /var/www/tdd_django
RUN virtualenv --no-site-packages --distribute ~/.venv/tdd
RUN . ~/.venv/tdd/bin/activate
RUN pip install -r pip-requirements.txt

