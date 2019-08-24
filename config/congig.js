require('dotenv').config(); // this is important!
module.exports = {
  "development": {
    "username": "djamware",
    "password": "dj@mw@r3",
    "database": "node_sequelize",
    "host": "127.0.0.1",
    "dialect": "postgres"
  },
  "test": {
    "username": process.env["POSTGRES_USER"],
    "password": process.env["POSTGRES_PASSWORD"],
    "database": process.env["POSTGRES_DATABASE"],
    "host": process.env["POSTGRESQL_SERVICE_HOST"],
    "dialect": "postgres"
  },
  "production": {
    "username": "root",
    "password": "dj@mw@r3",
    "database": "node_sequelize",
    "host": "127.0.0.1",
    "dialect": "postgres"
  }
};
