const express = require('express');
const itemsRouter=express.Router();
const logger=require('../logger');
const statsService = require('./stats-service');

itemsRouter
  .route('/')
  .get((req, res, next) => {
    statsService.getItemsData(req.app.get('db'))
      .then(Items => res.json(Items))
      .catch(next);
  });

  
module.exports=itemsRouter;