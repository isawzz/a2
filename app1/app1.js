const express = require('express');
const app = express();
app.use(express.static(__dirname + '/..')); //Serve root directory
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});
app.get('/node', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});
app.listen(3000);


