// server/db/index.js
// port 8080

const express = require('express');
const app = express();

var bodyParser = require('body-parser')
app.use(bodyParser.json())

const cors = require('cors')
app.use(cors);

const port = 8080;

console.log('i: Entering');

console.log('i: Exiting');

app.listen(port, () => console.log(`Server is running on port ${port}`));

// //// original code
// const express = require('express');
// const cors = require('cors')

// const app = express();
// const port = 8080;
