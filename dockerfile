#Getting base image from CentOS 7
FROM centos
MAINTAINER myself Arivu
LABEL Remarks="This is a Dockerfile for CentOS System"
#Update Software Repository
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install nginx
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
