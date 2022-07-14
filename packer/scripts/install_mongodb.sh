#!/bin/bash

#Sleep fo 30 seconds
echo 'Sleep fo 30 seconds: sleep 30'
echo "$(sleep 30)"

#Get key
echo 'sudo wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -'
echo "$(sudo wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -)"
echo "deb https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

#Sleep fo 30 seconds
echo 'Sleep fo 30 seconds: sleep 30'
echo "$(sleep 30)"

#Update system
echo 'sudo apt-get update'
echo "$(sudo apt-get update)"

#Sleep fo 50 seconds
echo 'Sleep fo 50 seconds: sleep 50'
echo "$(sleep 50)"

#Install mongodb
echo 'sudo apt-get install -y mongodb'
echo "$(sudo apt-get install -y mongodb)"

#Sleep fo 20 seconds
echo 'Sleep fo 20 seconds: sleep 20'
echo "$(sleep 20)"

#Run service mongodb
echo 'sudo systemctl start mongodb'
echo "$(sudo systemctl start mongodb)"

#Active autorun mongodb
echo 'sudo systemctl enable mongodb'
echo "$(sudo systemctl enable mongodb)"

#Get status mongodb
echo 'sudo systemctl status mongodb'
echo "$(sudo systemctl status mongodb)"
