//Database establishment of connection
const mysql = require('mysql');
//const prompt = require('prompt-sync')();

const mariadb = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'todo'
})
mariadb.connect()

mariadb.query('SELECT "test"', function(err, rows, fields) {
    if (err) {
        console.log(err.message)
        return
    }
    if (rows[0])
        if (rows[0].test == "test") {
            console.log("********************Server is ready********************")
            console.log("")
            console.log("System Log: ")
        }
})

module.exports = mariadb;