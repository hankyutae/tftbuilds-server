/* const fs = require('fs');
let rawdata = fs.readFileSync(__dirname+'/en_us_TFT.json');
let data = JSON.parse(rawdata); */

const statsService = {
  /* getAllData(db) {
    return db('tft_stats').select('data');
  }, */
  getChampsData(db) {
    return db('tft_champs').select('champdata')
      .then(res => res[0]['champdata']);
  },
  getItemsData(db) {
    return db('tft_items').select('itemdata')
      .then(res => res[0]['itemdata']);
  },
  getTraitsData(db) {
    return db('tft_traits').select('traitdata')
      .then(res => res[0]['traitdata']);
  },
};

module.exports = statsService;