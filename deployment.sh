# Script for digital ocean droplet
sudo apt update

curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh

sudo apt install -y build-essential git nodejs npm

git clone https://github.com/it6203group1/social-media-app.git
npm install
npm run start:prod
