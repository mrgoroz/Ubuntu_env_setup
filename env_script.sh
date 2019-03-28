#!/bin/bash

echo "***********************************"  
echo "Updating and upgrading"  
echo "***********************************"  
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install software-properties-common

echo "***********************************"  
echo "Installing Git"    
echo "***********************************"  
sudo apt install -y git

echo "***********************************"  
echo "Installing vlc"    
echo "***********************************"  
sudo apt-get install -y vlc

echo "***********************************"  
echo "Installing Docker"    
echo "***********************************"  
sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo "***********************************"  
echo "Adding current user to Docker group"    
echo "***********************************"
sudo groupadd docker
sudo usermod -aG docker $USER
su -
docker ps


echo "***********************************"  
echo "Installing Terminator"    
echo "***********************************"  
sudo apt-get install -y terminator

echo "***********************************"  
echo "Installing Ansible"    
echo "***********************************"  
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y

echo "***********************************"  
echo "Installing chrome browser"    
echo "***********************************"  
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb -y
rm google-chrome-stable_current_amd64.deb 

echo "***********************************"  
echo "Installing Visual Studio Code"
echo "***********************************"  
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install -y code

echo "***********************************"  
echo "Installing VirtualBox"
echo "***********************************"  
sudo apt install virtualbox

echo "***********************************"  
echo "Installing Vim"
echo "***********************************"  
sudo apt install -y vim

echo "***********************************"  
echo "Installing pip3 for Python"
echo "***********************************"  
sudo apt install -y python3-pip

echo "***********************************"  
echo "Installing the Twisted library for Python"
echo "***********************************"  
pip3 install Twisted


