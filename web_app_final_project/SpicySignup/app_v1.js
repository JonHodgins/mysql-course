var express = require('express');
var app = express();

app.get("/", function(req, res){
    res.send("You've reached the homepage!");
});

app.get("/joke", function(req, res){
    res.send("You can't run through a camp site. You can only ran, because it's past tents.")
});

app.get("/random_number", function(req, res) {
    var rand_num = Math.floor(Math.random() * 10) + 1;
    res.send("Your random number is: " + rand_num);
});

app.listen(process.env.PORT, process.env.IP, function(){
    console.log("Server running on 8080");
});