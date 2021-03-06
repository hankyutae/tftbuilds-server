require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const helmet = require('helmet');
const logger = require('./logger');
const championsRouter = require('./game_info_routers/champions.router');
const itemsRouter=require('./game_info_routers/items.router');
const traitsRouter=require('./game_info_routers/traits.router');
//const validateBearerToken=require('./validateBearerToken');
const authRouter = require('./auth/auth-router');
const usersRouter = require('./users/users-router');
const buildsRouter = require('./builds/builds-router');
const errorHandler=require('./errorHandler');
const publicBuildsRouter=require('./builds/public-builds-router');

const app = express();
const{NODE_ENV}=require('./config');

const morganOption = (NODE_ENV === 'production')
  ? 'tiny'
  : 'common';

app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());
//app.use(validateBearerToken);

app.get('/', (req, res) => {
  res.send('Hello, boilerplate!');
});

app.use('/api/champions',championsRouter);
app.use('/api/traits',traitsRouter);
app.use('/api/items',itemsRouter);
app.use('/api/auth', authRouter);
app.use('/api/users', usersRouter);
app.use('/api/builds', buildsRouter);
app.use('/api/public-builds', publicBuildsRouter);

app.use(errorHandler);


module.exports = app;