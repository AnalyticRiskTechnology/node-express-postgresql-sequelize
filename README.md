# Node.js, Express.js, Sequelize.js and PostgreSQL RESTful API deployed on Openshift

This project includes a template for deploying node and postgres onto openshift
It also shows how to run a migration as an initContainer.
This is mildly tricky as we have to get it to resolve the same image as an initContainer and give it a working environment to connect to the database.

This js source code is part of [Node.js, Express.js, Sequelize.js and PostgreSQL RESTful API](https://www.djamware.com/post/5b56a6cc80aca707dd4f65a9/nodejs-expressjs-sequelizejs-and-postgresql-restful-api) tutorial.

To deploy:
* login in to openshift `oc login ...`
* select a project `oc project ...`
* deploy from the template `./deploy.sh`

To run locally:

* Make sure you have install and run PostgreSQL server
* Create database with the name same as in config file
* Run `npm install` or `yarn install`
* Run `sequelize db:migrate`
* Run `nodemon` or `npm start`
