const express = require('express');
const cors = require('cors');
const app = express();
app.use(cors())
const port = 5000;
const version = '1.0.0';
app.get('/', (req, res) => res.send({ version }));
app.listen(port, () => console.log(`Listening on port ${port}`));