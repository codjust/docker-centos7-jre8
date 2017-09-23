FROM centos:7
MAINTAINER codejust <hcwzqmail@gmail.com>

ENV JAVA_VERSION 8u144
ENV BUILD_VERSION b01

# Upgrading system
RUN yum -y update && \
    yum -y install wget && \
    mkdir -p /tmp/package && \
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/090f390dda5b47b9b721c7dfaa008135/jre-$JAVA_VERSION-linux-x64.rpm -P /tmp/package && \
    rpm -ivh /tmp/package/jre-$JAVA_VERSION-linux-x64.rpm && \
    rm -rf /tmp/package/*.rpm

ENV JAVA_HOME /usr/java/latest
