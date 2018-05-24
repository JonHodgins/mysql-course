// INSERTING DATA V.1

// var mysql = require('mysql');
// var faker = require('faker');

// var connection = mysql.createConnection( {
//     host     : 'localhost',
//     user     : 'jonhodgins',
//     database : 'join_us'
// })

// var q = 'INSERT INTO users SET ?';
// var person = {
//     email: faker.internet.email(),
//     created_at: faker.date.past()
// };

// connection.query(q, person, function (error, results, fields) {
//     if (error) throw error;
//     console.log(results);
// });

// connection.end();

// INSERTING DATA V.2

// var mysql = require('mysql');
// var faker = require('faker');

// var connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'jonhodgins',
//     database: 'join_us'
// })

// var q = 'INSERT INTO users (email, created_at) VALUES ?';
// var data = [
//     [faker.internet.email(),
//         faker.date.past()
//     ],
//     [faker.internet.email(),
//         faker.date.past()
//     ],
//     [faker.internet.email(),
//         faker.date.past()
//     ]
// ];

// connection.query(q, [data], function(error, results, fields) {
//     if (error) throw error;
//     console.log(results);
// });

// connection.end();

// INSERTING LOTS OF DATA

var mysql = require('mysql');
var faker = require('faker');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'jonhodgins',
    database: 'join_us'
})

var data = [];
for (var i = 0; i < 500; i++) {
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}

var q = 'INSERT INTO users (email, created_at) VALUES ?';

connection.query(q, [data], function(error, results) {
    console.log(error);
    console.log(results);
});

connection.end();
