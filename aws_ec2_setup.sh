#!/bin/bash

# Update, upgrade, and install Vim and Git
sudo yum update -y && sudo yum upgrade -y && sudo yum install vim -y && sudo yum install git -y && git --version
