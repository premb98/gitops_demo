FROM rockylinux:9.3

RUN yum update -qy 
RUN yum install --assumeyes python3-pip
RUN yum -y install git

RUN pip3 install Flask 

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

WORKDIR /app

COPY . /app
