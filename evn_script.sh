#!/bin/bash

echo "***********************************"  
echo "Updating and upgrading"  
echo "***********************************"  
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install software-properties-common

echo "***********************************"  
echo "Installing vlc"    
echo "***********************************"  
sudo apt-get install -y vlc

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


