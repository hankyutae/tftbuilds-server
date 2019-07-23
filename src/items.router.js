const express = require('express');
const itemsRouter=express.Router();
const fs = require('fs');
let rawdata = fs.readFileSync('./en_us_TFT');
let data = JSON.parse(rawdata);
const logger=require('./logger');

itemsRouter
  .route('/')
  .get((req,res)=>{
    res.send('Oh, items?');
  });

  
module.exports=itemsRouter;