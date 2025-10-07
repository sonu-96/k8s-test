const http = require('http');
const port = process.env.PORT || 3000;
const version = process.env.APP_VERSION || 'v0.0.0';

const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type':'text/plain'});
  res.end(`Hello from POC success test app - ${version}\n`);
});

server.listen(port, () => {
  console.log(`App listening on port ${port}, version ${version}`);
});

