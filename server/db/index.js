const { Client } = require('pg');

const client = new Client({
  host: 'localhost',
  user: 'wooseokjang',
  port: 5432,
  password: '',
  database: 'reviews',
});

client.connect();

module.exports = client;
