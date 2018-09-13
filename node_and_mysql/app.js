/* Variables begin*/
let faker = require('faker');
let mysql = require('mysql');
let connection = mysql.createConnection({
    host: 'testing',
    user: 'root',
    password: '',
    database: 'ig_clone'
});
let query;

/* Variables end*/


genAdd();

/* Functions */
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
 * Generates fake address
 * @param times
 * @returns {boolean}
 */
function genAdd(times = 1) {
    for (let i = 0; i < times; i++) {
        con(faker.address.streetAddress());
        con(faker.address.city());
        con(faker.address.state());
    }
    return false;
}

/**
 * Run mysql query
 * @param query
 */
function mysqlRunQuery(query = '') {
    connection.connect();
    connection.query(query, function (error, results, fields) {
        if (error) throw error;
        console.log(results);
    });
    connection.end();
}

/* Functions end */