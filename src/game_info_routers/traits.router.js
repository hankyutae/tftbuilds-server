const express = require('express');
const traitsRouter=express.Router();
const logger=require('../logger');
const statsService = require('./stats-service');

traitsRouter
  .route('/')
  .get((req, res, next) => {
    statsService.getTraitsData(req.app.get('db'))
      .then(traits => res.json(traits))
      .catch(next);
  });

  
module.exports=traitsRouter;