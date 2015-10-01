FROM centos:latest

RUN yum install -y epel-release
RUN yum install -y nodejs
RUN yum install -y npm
RUN npm install -g pm2

ADD app /opt/app

EXPOSE 3000
