#!/bin/bash

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

#Install ruby
echo 'sudo apt-get install -y ruby-full ruby-bundler build-essential'
echo "$(sudo apt-get install -y ruby-full ruby-bundler build-essential)"

#Sleep fo 20 seconds
echo 'Sleep fo 20 seconds: sleep 20'
echo "$(sleep 20)"

#Get ruby status
echo 'sudo ruby -v'
echo "$(sudo ruby -v)"

#Get bundler status
echo 'sudo bundler -v'
echo "$(sudo bundler -v)"

