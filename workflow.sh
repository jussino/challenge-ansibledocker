#!/bin/bash

# launch Dockerhost server
#ansible-playbook ./launch-ec2.yml

# Create inventory file for environment
sed -i '/targets/!d' inventory
ansible-inventory -i dyn-inventory_aws_ec2.yml --list --yaml|grep -i public_dns_name|awk {'print $2'}|uniq >> inventory

# Install Dokcerhost
ansible-playbook ./install-docker.yml

# Build Application and Docker image
ansible-playbook ./docker-container.yml
