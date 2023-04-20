#!/bin/bash

# Initial Update
sudo apt update
# upgrade installed packages
sudo apt upgrade -y

# ------------------ Install Essentials ------------------
# install basic packages
sudo apt install -y build-essential curl git unzip vim vim-gui-common
# Note: 
echo "NOTE:: Add 'syntax on' to ~/.vimrc to enable syntax. -----"

# ------------------ Firewall & Security ------------------
# install and configure firewall (ufw)
sudo apt install -y ufw
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable

# set up fail2ban for SSH protection [Optional]
sudo apt install -y fail2ban
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

# **Configure Fail2ban to protect SSH from brute-force attacks
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sudo sed -i 's/# bantime = 10m/bantime = 1h/' /etc/fail2ban/jail.local
sudo sed -i 's/# maxretry = 5/maxretry = 3/' /etc/fail2ban/jail.local
sudo systemctl restart fail2ban

# SSL certificates with Let's Encrypt
add-apt-repository -y ppa:certbot/certbot
sudo apt-get update
sudo apt-get install -y certbot python3-certbot-nginx

# ------------------ Timezone ------------------
# Timezone for India
timedatectl set-timezone Asia/Kolkata

# cleanup
sudo apt autoremove -y
sudo apt clean

echo "Basic Setup Done..."