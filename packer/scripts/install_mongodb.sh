#!/bin/bash

#Get key
echo 'sudo wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -'
echo "$(sudo wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -)"
echo "deb https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

#Update system
echo 'sudo apt update'
echo "$(sudo apt-get update)"

#Install mongodb
echo 'sudo apt install -y mongodb'
echo "$(sudo apt install -y mongodb)"

#Run service mongodb
echo 'sudo systemctl start mongodb'
echo "$(sudo systemctl start mongodb)"

#Active autorun mongodb
echo 'sudo systemctl enable mongodb'
echo "$(sudo systemctl enable mongodb)"

#Get status mongodb
echo 'sudo systemctl status mongodb'
echo "$(sudo systemctl status mongodb)"
