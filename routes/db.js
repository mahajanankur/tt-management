var mysql = require('mysql');
var connection = mysql.createConnection({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'project',
  multipleStatements: true
});

connection.connect((err) => {
  if (!err) {
    console.log("connected");
  } else {
    console.log("Connection Failed", err);
  }

});
module.exports = connection;