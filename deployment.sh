# Script for digital ocean droplet
sudo apt update
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install -y build-essential git nodejs mongodb

# Gets social-network app from github
git clone https://github.com/it6203group1/social-media-app.git
cd social-media-app/
npm install
npm run start:prod

# PM2 production process manager for Node.js
npm run demon
npx pm2 save
npx pm2 startup
systemctl enable pm2-root

# MongoDB setup
sudo systemctl status mongodb
sudo systemctl restart mongodb
mongo --eval 'db.runCommand({ connectionStatus: 1 })'

# MongoDB Instances
mongo
show dbs
use group1
show dbs
