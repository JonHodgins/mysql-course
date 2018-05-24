var express = require('express');
var mysql = require('mysql');
var app = express();

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'jonhodgins',
    database: 'spicy_signup'
});


app.get("/", function(req, res){
    var q = 'SELECT Count(*) AS count FROM users';
    connection.query(q, function(error, results) {
    if (error) throw error;
    res.send("There are " + results[0].count + " users in the database");
    });
});

app.get("/joke", function(req, res){
    res.send("You can't run through a camp site. You can only ran, because it's <strong>past tents.</strong>")
});

app.listen(process.env.PORT, process.env.IP, function(){
    console.log("Server running on port " + process.env.PORT);
});