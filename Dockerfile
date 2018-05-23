FROM gocd/gocd-agent-debian-8:v17.4.0
MAINTAINER Volodmyr Mykhailyk <volodymyr.mykhailyk@gmail.com>

USER root

RUN apt-get update && apt-get -y install --no-install-recommends \
    python git-core curl && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py

ARG ANSIBLE_VERSION
RUN pip install ansible==${ANSIBLE_VERSION}
