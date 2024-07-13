#!/bin/bash

# Enable EPEL repo for RHEL 8

sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
sudo yum update
yum search htop
sudo yum install htop