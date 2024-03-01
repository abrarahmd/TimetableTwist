const dotenv = require('dotenv');
dotenv.config();

const mysql = require('mysql');

//Database Connection
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
});

db.connect( (error) => {
  if(error) {
      console.log(error)
  } else {
      console.log("MYSQL Connected...")
  }
});

module.exports = db;
