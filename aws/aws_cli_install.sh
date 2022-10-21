#!/bin/sh

sudo apt install groff
wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
unzip awscli-exe-linux-x86_64.zip
sudo ./aws/install
rm -rf ./aws
mkdir -p ~/.aws
cp ./config ./credentials ~/.aws
echo Fill ~/.aws/credentials!
