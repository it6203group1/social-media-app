# SocialMediaApp - KSU

Social media project for KSU IT6203 Group 1.

Demo & Resources
===================
- [Demo](http://social-ksu.ddns.net/)
- [Server IP](157.230.60.35) 

Development server
===================

## Installation
1. Clone this repo: `git clone https://github.com/it6203group1/social-media-app.git`
2. `cd` into the folder of the repo you just cloned
3. Install npm dependencies `npm install`
4. Start a MongoDB instance `brew services start mongodb`
5. You're ready to go; `npm start` to run the application.

Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.
API endpoint is on `http://localhost:3000/` using Express 4 server with nodemon for live restart.

- Windows users please use [Git Bash](https://stackoverflow.com/a/37478310) or [Cmder](http://cmder.net/) to run the commands.

## Deployment

### Node scripts for production:

+ `npm run start:prod` - Build the Angular project into the dist folder and Launch in production env Node.js server.
+ `npm run server` - Launch in production env Node.js server.
+ `npm run build` - Build the ng project into the dist folder. In production you will just start the server.js file

### Deployment to Digital Ocean:

Digital ocean is a great option to deploy a MEAN app, here is the script to deploy to a mongodb droplet:

```
# Script for digital ocean droplet
sudo apt update

curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install -y build-essential git nodejs

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
```

Stack Technologies
===================
### Back-end
+ Node.js
+ Express 4
+ Dotenv
+ ES6 & Types
+ Mongoose to handle MongoDB connections

### Front-end
+ Angular + Angular Material
+ Angular Cli
+ TypeScript
+ Oauth passport.js

#### Development modules
+ Nodemon for live server restart
+ Concurrently for running and handling multiple npm packages
+ Morgan as logging library
+ Angular-cli to handle all the angular stuff
