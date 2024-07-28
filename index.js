const express = require("express");
require('dotenv').config();

const app = express();

const port = process.env.PORT || 3000;
console.log(process.env.PORT); 

app.get('/', (req, res) => {
    res.send('Hello World! This is my Node.js app.');
});

app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});
  