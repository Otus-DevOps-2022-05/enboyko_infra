#!/bin/bash
sleep 30
set -e
APP_DIR=${1:-$HOME}

#Update system
echo 'sudo apt-get update'
echo "$(sudo apt-get update)"

#Sleep fo 50 seconds
echo 'Sleep fo 50 seconds: sleep 50'
echo "$(sleep 50)"

#Check, if there's apt already running
echo 'Check, if there is apt already running'
echo 'ps aux | grep -i apt'
echo "$(ps aux | grep -i apt)"

sudo apt-get install -y git

sleep 30

git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma

