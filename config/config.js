require('dotenv').config(); // this is important!
module.exports = {
    "username": process.env["DATABASE_USER"],
    "password": process.env["DATABASE_PASSWORD"],
    "database": process.env["DATABASE_NAME"],
    "host": process.env["DATABASE_SERVICE_NAME"],
    "dialect": "postgres"
};
