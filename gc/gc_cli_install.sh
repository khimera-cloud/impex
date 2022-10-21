#!/bin/sh

sudo apt install apt-transport-https ca-certificates gnupg

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
| sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list

wget https://packages.cloud.google.com/apt/doc/apt-key.gpg
sudo mv apt-key.gpg /usr/share/keyrings/cloud.google.gpg

sudo apt update
sudo apt install google-cloud-cli

gcloud init --console-only
