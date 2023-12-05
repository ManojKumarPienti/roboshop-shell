#!/bin/bash

# Install Nginx from Amazon Linux Extras
sudo amazon-linux-extras install nginx1 -y

# Create the directory if it doesn't exist
sudo mkdir -p /usr/share/nginx/html

# Download the frontend zip file
sudo curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

# Navigate to the Nginx HTML directory
cd /usr/share/nginx/html

# Unzip the frontend zip file without prompting
sudo unzip -o /tmp/frontend.zip

# Enable and start the Nginx service
sudo systemctl enable nginx
sudo systemctl start nginx
