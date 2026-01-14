const { createServer } = require('node:http');

const hostname = '0.0.0.0';
const port = 3000;
const podName = process.env.POD_NAME || 'unknown'; //(1)!

const server = createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end(`Hello World from pod ${podName}`); //(2)!
});

server.listen(port, hostname, () => {
  console.log(`Server running on pod ${podName} at http://${hostname}:${port}/`); //(3)!
});
