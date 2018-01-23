# This is for a Docker hub auto build
FROM ubuntu:16.04

LABEL maintainer="e_ben_75-python@yahoo.com" \
      description="This is a Ansible container" \
      package-name="ansible" \
      image-version="1.2" \
      ansible-version="2.4.2.0" \
      python-version="2.7.12" \
      git-version="2.7.4"

WORKDIR /ansible

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && apt-add-repository ppa:ansible/ansible \
    && apt-get update \
    && apt-get install -y python \
    python-pip \
    python-dev \
    ansible \
    nano \
    tree \
    ssh \
    sshpass \
    jq \
    git \
    && apt-get clean \
    && pip install --upgrade pip \
    && pip install --upgrade ansible
