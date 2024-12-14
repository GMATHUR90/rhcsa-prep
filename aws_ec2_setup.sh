#!/bin/bash

# Update, upgrade, and install Vim and Git in RHEL instances
sudo yum update -y && sudo yum upgrade -y && sudo yum install vim -y && sudo yum install git -y && git --version
