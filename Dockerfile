FROM gocd/gocd-agent-debian-8:v17.4.0
MAINTAINER Volodmyr Mykhailyk <volodymyr.mykhailyk@gmail.com>

USER root

# Install ansible requirements
RUN apt-get update && apt-get -y install --no-install-recommends \
    python git-core curl apt-transport-https && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py

# Install ansible
ARG ANSIBLE_VERSION
RUN pip install pyyaml && \
    pip install ansible==${ANSIBLE_VERSION}

#Install helm
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get | bash

#Install kubectl
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-jessie main" | tee -a /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && apt-get install -y kubectl