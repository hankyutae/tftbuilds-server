require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const helmet = require('helmet');
const logger= require('./logger');
const championsRouter=require('./champions.router');
const itemsRouter=require('./items.router');
const traitsRouter=require('./traits.router');
const validateBearerToken=require('./validateBearerToken');
const errorHandler=require('./errorHandler');

const app = express();
const{NODE_ENV}=require('./config');

const morganOption = (NODE_ENV === 'production')
  ? 'tiny'
  : 'common';

app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());
app.use(validateBearerToken);

app.get('/', (req, res) => {
  res.send('Hello, boilerplate!');
});

app.use('/champions',championsRouter);
app.use('/traits',traitsRouter);
app.use('/items',itemsRouter);

app.use(errorHandler);


module.exports = app;