/* Variables begin*/
let express = require('express');
let app = express();
let mysql = require('mysql');
let faker = require('faker');
let bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + '/public'));
let connection = mysql.createConnection({
    host: 'testing',
    user: 'root',
    password: '',
    database: 'mb_node_and_mysql',
});
app.set('view engine', 'ejs');
/* Variables end*/

app.get('/', function (request, response) {
    // will work in terminal
    con('Another request to /. Time: ' + new Date());

    let query = 'SELECT COUNT(*) AS count FROM users';
    connection.query(query, function (error, results) {
        if (error) throw error;
        let count = results[0].count;
        response.render('home', {count: count});
    });
});

app.get("/joke", function (req, res) {
    let joke = 'What you call a dog that does magic tricks? A labracadabrador';
    res.send(joke);
});

app.post("/register", function (req, res) {
    // will work in terminal
    con(req.body);
    con('POST request. Email: ' + req.body.email);
    let person = {
        email: req.body.email,
    };
    connection.query('INSERT INTO users SET ?', person, function (err, result) {
        if (err) throw err;
        res.redirect('/');
    });
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

/* Functions end */