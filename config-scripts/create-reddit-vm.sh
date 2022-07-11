#!/bin/bash

#Create new instance with Yandex.Cloud CLI:
echo 'Create instance with packer'
yc compute instance create \
  --name reddit-packer-app \
  --hostname reddit-packer-app \
  --memory=4 \
  --create-boot-disk image-id=fd8jl7l9i6q7d9au6ope,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/id_ed25519

