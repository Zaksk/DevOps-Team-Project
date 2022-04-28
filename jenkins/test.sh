#!/bin/bash
sudo apt update && sudo apt install openjdk-11-jdk -y
sudo apt install curl -y
# sudo install node

# curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
# sudo bash nodesource_setup.sh
# sudo apt install nodejs -y

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

cd frontend
npm i
npm run test-headless
cd ..
cd backend
./mvnw clean test