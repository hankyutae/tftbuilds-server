const express = require('express');
const path = require('path');
const BuildsService = require('./builds-service');
const { requireAuth } = require('../middleware/jwt-auth');
const isUUID = require('is-uuid');
const statsService = require('../game_info_routers/stats-service');

const buildsRouter = express.Router();
const jsonBodyParser = express.json();

buildsRouter
  .route('/')
  .all(requireAuth)
  .get((req, res, next) => {
    BuildsService.getAllByUserId(
      req.app.get('db'),
      req.user.id
    )
      .then(Builds => {
        Builds.sort((a,b)=>{
          let aTime =new Date (a.date_created).getTime();
          let bTime =new Date (b.date_created).getTime();
          return bTime-aTime;
        });
        res.status(200).json(Builds.map(Build => BuildsService.serializeBuild(Build)));
      })
      .catch(next);
  })
  .post(jsonBodyParser, (req, res, next) => {
    const { build_data } = req.body;
    if (build_data === undefined) {
      return res.status(400).json({
        error: 'Missing \'build_data\' in request body'
      });
    }
    if (!Array.isArray(build_data)) {
      return res.status(400).json({
        error: 'build_data must be an array'
      });
    }

    const newBuild = { build_data: [] };
    Promise.all([
      statsService.getChampsData(req.app.get('db')),
      statsService.getItemsData(req.app.get('db')),
    ])
      .then(statsData => {
        for (let i = 0; i < build_data.length; i++) {
          const champ = build_data[i];
          const { id, items, stars } = champ;
          if (typeof id !== typeof 4) {
            return res.status(400).json({
              error: 'id in build_data must be a number'
            });
          }
          if (statsData[0][id] === undefined) {
            return res.status(400).json({
              error: 'id in build_data must correspond to a valid champion in our database'
            });
          }
          if (!Array.isArray(items)) {
            return res.status(400).json({
              error: 'items in build_data must be an array'
            });
          }
          if (items.length > 3) {
            return res.status(400).json({
              error: 'Cannot have more than 3 items on each champ'
            });
          }
          items.forEach((item) => {
            if (typeof item !== typeof 4) {
              return res.status(400).json({
                error: 'items in build_data must contain numbers only'
              });
            }
            if (statsData[1][item] === undefined) {
              return res.status(400).json({
                error: 'items in build_data must be valid items in our database'
              });
            }
          });
          if (stars !== 1 && stars !== 2 && stars !== 3) {
            return res.status(400).json({
              error: 'stars in build_data must be 1, 2, or 3'
            });
          }
          newBuild.build_data.push({ id, items, stars });
        }
        newBuild.user_id = req.user.id;
        newBuild.build_data = JSON.stringify(newBuild.build_data);
        return BuildsService.insertBuild(
          req.app.get('db'),
          newBuild
        )
          .then(Build => {
            return res
              .status(201)
              .location(path.posix.join(req.originalUrl, `/${Build.id}`))
              .json(BuildsService.serializeBuild(Build));
          });
      })
      .catch(next);
    /* } */

  });

buildsRouter
  .route('/:id')
  .all(requireAuth)
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
        if(Build.user_id!==req.user.id){
          return res.status(403).json({ error: 'Forbidden' });
        }
        res.build = Build; // save the build for the next middleware
        next(); // don't forget to call next so the next middleware happens!
        return null;
      })
      .catch(next);
  })
  .delete((req, res, next) => {
    const db = req.app.get('db');
    const id = req.params.id;
    BuildsService.deleteById(db, id)
      .then(actual => {
        return res.status(204).end();
      })
      .catch(next);
  });


buildsRouter
  .route('/make-public/:id')
  .all(requireAuth)
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
        if(Build.user_id!==req.user.id){
          return res.status(403).json({ error: 'Forbidden' });
        }
        res.build = Build; // save the build for the next middleware
        next(); // don't forget to call next so the next middleware happens!
      })
      .catch(next);
  })
  .patch((req, res, next) => {
    BuildsService.makePublic(req.app.get('db'), req.params.id)
      .then(actual => {
        return res.status(204).end();
      })
      .catch(next);
  });
module.exports = buildsRouter;