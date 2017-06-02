FROM ubuntu:xenial

MAINTAINER Mamut3D

LABEL Description="Openstack client tools"

RUN apt-get update && apt-get install -y \
  mc \
  vim \
  iputils-ping \
  apt-utils \
  python-dev \
  python-pip \
  python-setuptools \
  ca-certificates \
  gcc \
  libssl-dev \
  musl-dev \
  && pip install --upgrade --no-cache-dir pip setuptools python-openstackclient python-keystoneclient \ 
  && pip install --upgrade --no-cache-dir python-heatclient python-neutronclient python-ceilometerclient shade \
  && pip install os-client-config==1.26.0
  && rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
