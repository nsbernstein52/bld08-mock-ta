// server/db/index.js
// port 8080

const express = require('express');
const cors = require('cors')

const app = express();
const port = 8080;

app.listen(port, () => console.log(`Server is running on port ${port}`));

// //// original code
// const express = require('express');
// const cors = require('cors')

// const app = express();
// const port = 8080;
