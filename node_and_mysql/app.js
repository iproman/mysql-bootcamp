var faker = require('faker');


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