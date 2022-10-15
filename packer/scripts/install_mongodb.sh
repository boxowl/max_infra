#!/bin/bash
set -e

# Install MongoDB
sudo apt-get install -y wget
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
# sudo apt-get install gnupg
# wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org=4.4.17 mongodb-org-server=4.4.17 mongodb-org-shell=4.4.17 mongodb-org-mongos=4.4.17 mongodb-org-tools=4.4.17
sudo systemctl enable mongod
sudo systemctl start mongod
