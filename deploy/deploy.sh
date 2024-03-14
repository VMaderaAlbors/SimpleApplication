#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is a production process manager for Node.js with a built-in load balancer.
sudo npm install -g pm2
# stop any instances of our application running currently
pm2 stop SimpleApplication
# change directory into folder where application is dowloaded
cd SimpleApplication
# Install application dependencies 
npm install
# Start the application with the process name SimpleApplication using pm2
pm2 start ./bin/www --name SimpleApplication
