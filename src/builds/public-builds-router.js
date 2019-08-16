const express = require('express');
const path = require('path');
const BuildsService = require('./builds-service');
/* const { requireAuth } = require('../middleware/jwt-auth'); */
const isUUID = require('is-uuid');

const publicBuildsRouter = express.Router();
const jsonBodyParser = express.json();

publicBuildsRouter
  .route('/:id')
  .all((req, res, next) => {
    BuildsService.getById(
      req.app.get('db'),
      req.params.id
    )
      .then(Build => {
        if (!Build) {
          return res.status(404).json({
            error: { message: 'Build doesn\'t exist' }
          });
        }
        res.build = Build; // save the article for the next middleware
        next(); // don't forget to call next so the next middleware happens!
      })
      .catch(next);
  })
  .get((req,res,next)=>{
    if(res.build['is_public']){
      return res.status(200).json(res.build);
    }
    res.status(403).json({
      error: 'Forbidden'
    }).end();
  });

module.exports = publicBuildsRouter;