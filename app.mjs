import express from 'express';

import connectToDatabase from './helpers.mjs'

const app = express();

app.get('/', (req, res) => {
  res.send('<h2>Hi there!</h2>');
});

// top-level await - node 14.3+
await connectToDatabase();

app.listen(3000);
