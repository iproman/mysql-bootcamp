let express = require('express');
let app = express();

app.get('/', function (request, response) {
    // will work in terminal
    console.log('Another request. Time: ' + new Date());

    // will respond to browser
    response.send('<h1>hey world</h1>');
});

app.listen(5555, function () {
    console.log('Server running on 5555!')
});