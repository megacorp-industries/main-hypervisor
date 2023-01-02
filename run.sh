#!/bin/bash
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
mkdir roles
git clone https://github.com/megacorp-industries/ansible-install-pip.git roles/ansible-install-pip
git clone https://github.com/megacorp-industries/ansible-install-docker.git roles/ansible-install-docker
git clone https://github.com/megacorp-industries/ansible-install-kvm.git roles/ansible-install-kvm
git clone https://github.com/megacorp-industries/ansible-deploy-jenkins.git roles/ansible-deploy-jenkins
