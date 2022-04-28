#!/bin/bash
apt update && sudo apt install openjdk-11-jdk -y
apt install curl -y
install node -y

curl -sL https://deb.nodesource.com/setip_16.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt install nodejs -y

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb -y

npm i
npm run test-headless

./mvnw clean test