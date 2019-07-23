const express = require('express');
const fs = require('fs');
let rawdata = fs.readFileSync('./en_us_TFT');
let data = JSON.parse(rawdata);
const championsRouter=express.Router();
const logger=require('./logger');

championsRouter
  .route('/')
  .get((req,res)=>{
    res.send('Oh, champions?');
  });

module.exports=championsRouter;