/*
 * app.js
 * Copyright (C) 2019 red <red@red-Swift-SF113-31>
 *
 * Distributed under terms of the MIT license.
 */

const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World\n');

});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
