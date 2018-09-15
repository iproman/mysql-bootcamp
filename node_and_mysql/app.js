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
 * Generates:
 * faker.internet.email() or
 * faker.date.past()
 * @param type
 * @returns {*}
 */
function generateFaker(type) {
    if(type === 'date'){
        return faker.date.past();
    } else if(type === 'email') {
        return faker.internet.email();
    }else {
        return faker.internet.email();
    }
}

/**
 * Run mysql query one string
 * @param query string
 */
function runMysqlQueryOne(query = '') {
    connection.query('INSERT INTO users SET ?', query, function (err, result) {
        if (err) throw err;
        con(result);
    });
    connection.end();
}

/**
 * Run mysql query
 * @param data array
 */
function runMysqlQuery(data = []) {
    connection.query('INSERT INTO users VALUES ?', [data], function (err, result) {
        if (err) throw err;
        con(result);
    });
    connection.end();
}
/* Functions end */