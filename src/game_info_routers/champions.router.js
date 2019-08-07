const express = require('express');
const championsRouter = express.Router();
const logger = require('../logger');
const statsService = require('./stats-service');


championsRouter
  .route('/')
  .get((req, res, next) => {
    statsService.getChampsData(req.app.get('db'))
      .then(champs => res.json(champs))
      .catch(next);
  });

module.exports = championsRouter;