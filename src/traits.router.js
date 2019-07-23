const express = require('express');
const traitsRouter=express.Router();
const fs = require('fs');
let rawdata = fs.readFileSync('./en_us_TFT');
let data = JSON.parse(rawdata);
const logger=require('./logger');

traitsRouter
  .route('/')
  .get((req,res)=>{
    res.send('Oh, traits?');
  });

  
module.exports=traitsRouter;