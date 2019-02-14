#!/bin/bash
echo 'Updating System...'
sudo apt update
echo 'Configuring Ansible PPA...'
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
echo 'Installing Ansible...'
sudo apt install ansible
