FROM centos:6
MAINTAINER Linjiang Li "lilinj2000@gmail.com"
ENV REFRESHED_AT 2017-10-10

ADD libs/ /usr/lib64/

ADD zap/ /zap
ADD qatar/ /qatar
ADD mass/ /mass

ENV TZ "Asia/Shanghai"

