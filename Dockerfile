ARG GOCD_VERSION=v19.2.0
FROM gocd/gocd-agent-debian-8:${GOCD_VERSION}
MAINTAINER Volodmyr Mykhailyk <volodymyr.mykhailyk@gmail.com>

USER root

# Install ansible requirements
RUN apt-get update && apt-get -y install --no-install-recommends \
    python git-core curl && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py

# Install ansible
ARG ANSIBLE_VERSION
RUN pip install pyyaml && \
    pip install ansible==${ANSIBLE_VERSION}

