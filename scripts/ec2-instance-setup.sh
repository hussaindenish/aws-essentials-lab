#!/bin/bash
# EC2 instance setup script

sudo apt update -y
sudo apt install -y docker git
sudo systemctl start docker
sudo systemctl enable docker
