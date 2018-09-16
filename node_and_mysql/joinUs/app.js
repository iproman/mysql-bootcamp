/* Variables begin*/
let express = require('express');
let app = express();
let mysql = require('mysql');
let faker = require('faker');
app.set('view engine', 'ejs');
let connection = mysql.createConnection({
    host: 'testing',
    user: 'root',
    password: '',
    database: 'mb_node_and_mysql',
});
let responseOfMysql;
/* Variables end*/

app.get('/', function (request, response) {
    // will work in terminal
    con('Another request to /. Time: ' + new Date());

    var query = 'SELECT COUNT(*) AS count FROM users';
    connection.query(query, function (error, results) {
        if(error) throw error;
        var responseOfMysql = results[0].count;

        // will respond to browser
        //response.send('<h1>We have ' + responseOfMysql + ' users in our DB</h1>');
        response.render('home');
    });

});

app.get("/joke", function (req, res) {
    let joke = 'What you call a dog that does magic tricks? A labracadabrador';
    res.send(joke);
});

app.get("/random-num", function (req, res) {
    let num = Math.floor(Math.random() * 10) + 1;
    res.send('Your lucky number is ' + num);
});

app.listen(5555, function () {
    console.log('Server running on 5555!')
});

/* Functions begin */

/**
 * console.log
 * @param e
 */
function con(e) {
    console.log(e);
}