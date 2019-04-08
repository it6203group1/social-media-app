# SocialMediaApp - KSU

Social media project for KSU IT6203 Group 1.

Demo & Resources
===================
- [Demo](https://it6203group1.github.io/social-media-app/)

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

## Deployment to Production
+ `npm run start:prod` - Build the Angular project into the dist folder and Launch in production env Node.js server.
+ `npm run server` - Launch in production env Node.js server.
+ `npm run build` - Build the ng project into the dist folder. In production you will just start the server.js file

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
