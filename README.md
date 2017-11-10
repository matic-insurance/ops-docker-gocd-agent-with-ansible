# ops-docker-gocd-agent-with-ansible
Docker image for GoCD agent with Ansible

[![Build Status](https://travis-ci.org/matic-insurance/ops-docker-gocd-agent-with-ansible.svg?branch=master)](https://travis-ci.org/matic-insurance/ops-docker-gocd-agent-with-docker)

## GoCD

GoCD agent docker file is used as base image 

## Image Usage

Please referer to the [GoCD repository](https://github.com/gocd/docker-gocd-agent)
for usage instructions

## Ansible Usage

Just run ansible commands during your build

## Docker Hub

Docker images hosted on [Docker Hub](https://hub.docker.com/r/maticinsurance/gocd-agent-with-ansible/)

## Build process

Travis is used to build docker files. Master branch build pushing 
docker files to Docker Hub. Pull request verifies that docker files 
can be built 

## Current built versions

- **Debian**: 8
  - **GOCD**: v17.4.0 
    - **ANSIBLE**: 2.4.1.0
  - **GOCD**: v17.11.0 
    - **DOCKER**: 2.4.1.0
    
## Contribution and support

Feel free to submit pull requests or request new versions used in 
your environment via issues
