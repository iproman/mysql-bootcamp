/* Variables begin*/
let mysql = require('mysql');
let faker = require('faker');
let connection = mysql.createConnection({
    host: 'testing',
    user: 'root',
    password: '',
    database: 'mb_node_and_mysql',
});

/* Variables end*/

let person = {
    email: generateFaker(),
    created_at: generateFaker('date.pass'),
};


runMysqlQuery(person);


/* Functions begin */
/**
 * console.log
 * @param e
 * @returns {boolean}
 */
function con(e) {
    console.log(e);
    return false;
}

/**
 * Generates random fake email address
 * @param type
 * @param times
 * @returns {*}
 */
function generateFaker(type = 'email', times = 1) {
    if(type === 'date.past'){
        return faker.date.past();
    } else {
        return faker.internet.email();
    }
}

/**
 * Run mysql query
 * @param query
 */
function runMysqlQuery(query = '') {
    connection.query('INSERT INTO users SET ?', query, function (err, result) {
        if (err) throw err;
        con(result);
    });
    connection.end();
}

/* Functions end */