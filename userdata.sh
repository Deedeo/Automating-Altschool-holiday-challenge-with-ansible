#!/bin/bash

########################################
##### USE THIS WITH AMAZON LINUX 2 #####
########################################

# install httpd (Linux 2 version)

yum update -y
amazon-linux-extras install nginx1.12
systemctl start nginx
systemctl enable nginx
echo "<h1>Hello World from $(hostname -f)</h1>" > /usr/share/nginx/html/index.html
