#!/bin/bash

# Update system packages on AWS EC2 instance
sudo yum update -y

# Install vim text editor
sudo yum install vim -y

echo "AWS EC2 system updated and Vim installed successfully!"

