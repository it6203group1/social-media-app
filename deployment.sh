# Script for digital ocean droplet
sudo apt update

curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh

sudo apt install -y build-essential git nodejs

git clone https://github.com/it6203group1/social-media-app.git
cd social-media-app/
npm install
npm run start:prod

systemctl enable pm2-root
npx pm2 save
npx pm2 startup
