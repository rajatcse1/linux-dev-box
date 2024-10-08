#!/bin/bash

# Update and install necessary packages
sudo apt update && sudo apt upgrade -y

# Install Git
sudo apt install git -y

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install node  # Install latest Node.js

# Install Java
sudo apt install openjdk-11-jdk -y

# Install Python
sudo apt install python3 python3-pip -y

# Install VS Code
sudo snap install code --classic

# Install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce -y

# Install pgAdmin
curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add -
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
sudo apt update
sudo apt install pgadmin4 -y

# Install MongoDB Client (MongoDB Compass)
wget -qO - https://www.mongodb.com/static/pgp/6D90D2E6.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.com/compass/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mongodb-compass.list
sudo apt update
sudo apt install mongodb-compass -y

# Install PyCharm (Community Edition)
sudo snap install pycharm-community --classic

echo "Installation complete!"

