FROM gocd/gocd-agent-debian-8:GOCD_VERSION
MAINTAINER Volodmyr Mykhailyk <volodymyr.mykhailyk@gmail.com>

ARG ANSIBLE_VERSION

USER root

# Install ansible environment
RUN apt-get update && \
    apt-get -y install python-yaml python-jinja2 python-httplib2 python-keyczar \
    python-paramiko python-setuptools python-pkg-resources git-core python-pip && \
    pip install ansible $ANSIBLE_VERSION
