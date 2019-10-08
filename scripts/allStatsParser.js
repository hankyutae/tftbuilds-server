const jsondata = require('../TFT/en_us_TFT.json');
const knex = require('knex');
const { DB_URL } = require('../src/config');
const fetch = require('node-fetch');

const db = knex({
  client: 'pg',
  connection: DB_URL,
});



/* const champarray = [];
Object.keys(jsondata.champions).forEach(key => {
  champarray.push({ 
    champdata: {
      ...jsondata.champions[key],
      id: key
    } 
  });
});

const itemarray = [];
Object.keys(jsondata.items).forEach(key => {
  itemarray.push({
    itemdata: {
      ...jsondata.items[key],
      id: key
    }
  })
}); */
function handleNameExceptions(name) {
  if (name === 'anivia')
    return 'cryophoenix';
  if (name === 'blitzcrank')
    return 'steamgolem';
  if (name === 'chogath')
    return 'greenterror';
  if (name === 'shaco')
    return 'jester';
  return name;
}
function handleStupidRandomSecondaryTags(name) {
  if (name === 'kayle')
    return 'kayle_rework.';
  if (name === 'mordekaiser')
    return 'mordevgu.';
  if(name==='pantheon')
    return 'pantheonvgu.';
  return '';
}

let fetchPng = [];
let keyAndUrl = [];

Object.keys(jsondata.champions).forEach(key => {
  let name = jsondata.champions[key].name.split(/[. ']/).join('').toLowerCase();
  let stupidRandomSecondaryTags = handleStupidRandomSecondaryTags(name);
  let name2 = handleNameExceptions(name);
  let url = `assets/characters/${name}/hud/${name2}_circle_0.${stupidRandomSecondaryTags}png`;
  let otherUrl = `assets/characters/${name}/hud/${name2}_circle.${stupidRandomSecondaryTags}png`;
  keyAndUrl.push({ key, otherUrl });

  jsondata.champions[key].splash = url;
  fetchPng.push(fetch(`http://raw.communitydragon.org/latest/game/${url}`));
});


function isItOrigin(traitName) {
  switch (traitName) {
  case 'Demon':
    return true;
  case 'Exile':
    return true;
  case 'Dragon':
    return true;
  case 'Glacial':
    return true;
  case 'Imperial':
    return true;
  case 'Ninja':
    return true;
  case 'Noble':
    return true;
  case 'Phantom':
    return true;
  case 'Pirate':
    return true;
  case 'Robot':
    return true;
  case 'Void':
    return true;
  case 'Wild':
    return true;
  case 'Yordle':
    return true;
  case 'Hextech':
    return true;
    /* 
  case 'Demon':
    return true;
  case 'Demon':
    return true; */

  default:
    return false;

  }
}

function handleQuirks(champion) {
  if (champion.name.toLowerCase() === 'swain') {
    let index = champion.ability.variables.findIndex(obj => {
      return obj.key === 'HealthIncrease';
    });
    if (index === -1) {
      return;
    }
    champion.ability.variables.splice(index, 1);
  }
  else if (champion.name.toLowerCase() === 'morgana') {
    let index = champion.ability.variables.findIndex(obj => {
      return obj.key === 'CanCastRange';
    });
    if (index === -1) {
      return;
    }
    champion.ability.variables.splice(index, 1);
  }
  else if (champion.name.toLowerCase() === 'mordekaiser') {
    let propsToRemove = ['MaceStartDistance', 'MaceLength', 'RectangleWidth'];
    propsToRemove.forEach(prop => {
      let index = champion.ability.variables.findIndex(obj => {
        return obj.key === prop;
      });
      if (index === -1) {
        return;
      }
      champion.ability.variables.splice(index, 1);
    });
  }
  else if (champion.name.toLowerCase() === 'akali') {
    let propsToRemove = ['ConeDeg'];
    propsToRemove.forEach(prop => {
      let index = champion.ability.variables.findIndex(obj => {
        return obj.key === prop;
      });
      if (index === -1) {
        return;
      }
      champion.ability.variables.splice(index, 1);
    });
    champion.ability.desc='Akali throws shurikens in front of her, dealing @modifieddamage@ magic damage. There is a @critchance@ chance that this spell will critically strike for @critdamage@ magic damage insteadd.';
  }
  else if (champion.name.toLowerCase() === 'draven') {
    champion.ability.desc='Draven gains Spinning Axes, dealing bonus @bonusaddamage@ on-hit damage. Stacks up to two times.';
  }
  else if (champion.name.toLowerCase() === 'graves') {
    champion.ability.desc='Passive: Graves\' basic attacks deal bonus @bonusdamage@ physical damage and hit all enemies in a cone in front of him. Graves applies on-hit effects to all enemies hit.';
  }
  else if (champion.name.toLowerCase() === 'volibear') {
    let propsToRemove = ['SizeIncrease'];
    propsToRemove.forEach(prop => {
      let index = champion.ability.variables.findIndex(obj => {
        return obj.key === prop;
      });
      if (index === -1) {
        return;
      }
      champion.ability.variables.splice(index, 1);
    });
    champion.ability.desc='Volibear empowers his attacks to chain between enemies, applying on-hit effects.';
  }
  else if (champion.name.toLowerCase() === 'lissandra') {
    let propsToRemove = ['SlowAmount'];
    propsToRemove.forEach(prop => {
      let index = champion.ability.variables.findIndex(obj => {
        return obj.key === prop;
      });
      if (index === -1) {
        return;
      }
      champion.ability.variables.splice(index, 1);
    });
  }
  else if (champion.name.toLowerCase() === 'gnar') {
    let propsToRemove = ['RKnockbackDistance'];
    propsToRemove.forEach(prop => {
      let index = champion.ability.variables.findIndex(obj => {
        return obj.key === prop;
      });
      if (index === -1) {
        return;
      }
      champion.ability.variables.splice(index, 1);
    });
  }
  else if (champion.name.toLowerCase() === 'yasuo') {
    let propsToRemove = ['QWidth'];
    propsToRemove.forEach(prop => {
      let index = champion.ability.variables.findIndex(obj => {
        return obj.key === prop;
      });
      if (index === -1) {
        return;
      }
      champion.ability.variables.splice(index, 1);
    });
  }
  else if (champion.name.toLowerCase() === 'rek\'sai') {
    let propsToRemove = ['HealTickRate'];
    propsToRemove.forEach(prop => {
      let index = champion.ability.variables.findIndex(obj => {
        return obj.key === prop;
      });
      if (index === -1) {
        return;
      }
      champion.ability.variables.splice(index, 1);
    });
  }
  else if (champion.name.toLowerCase() === 'jayce') {
    let propsToRemove = ['HexRange'];
    propsToRemove.forEach(prop => {
      let index = champion.ability.variables.findIndex(obj => {
        return obj.key === prop;
      });
      if (index === -1) {
        return;
      }
      champion.ability.variables.splice(index, 1);
    });
  }
  /*  else if (champion.name.toLowerCase() === 'elise') {
    let index=champion.ability.variables.findIndex(obj=>{
      return obj.key==='SpiderFormDuration';
    });
    if(index===-1){
      return;
    }
    champion.ability.variables.splice(index,1);
  }
  else if (champion.name.toLowerCase() === 'nidalee') {
    let index=champion.ability.variables.findIndex(obj=>{
      return obj.key==='TransformDuration';
    });
    if(index===-1){
      return;
    }
    champion.ability.variables.splice(index,1);
  } */

}

Object.keys(jsondata.champions).forEach(key => {
  let origins = [];
  let classes = [];
  jsondata.champions[key].traits.forEach(trait => {
    if (isItOrigin(trait))
      origins.push(trait);
    else
      classes.push(trait);
  });
  jsondata.champions[key].origins = origins;
  jsondata.champions[key].classes = classes;
  jsondata.champions[key].id = Number(key);
  handleQuirks(jsondata.champions[key]);
});

const traitobj = {};/* 
const effectIdToString={
  ''
}; */
jsondata.traits.forEach(trait => {
  traitobj[trait.name] = trait;
  traitobj[trait.name].isOrigin = isItOrigin(trait.name);
  if (trait.name === 'Hextech') {
    traitobj[trait.name].effects.forEach(effect => {
      if (-1 === effect.vars.findIndex(el => el.name === 'HexSize')) {
        effect.vars[effect.vars.findIndex(el=>el.name==='FB0B4533')].name='HexSize';
      }
    });
  }
});



db.raw(
  `TRUNCATE
  tft_items,
  tft_champs,
  tft_traits`
)
  /* .then(() => db.into('tft_items').insert(itemarray))
  .then(() => db.into('tft_champs').insert(champarray)) */.then(() => db.into('tft_items').insert([{ itemdata: jsondata.items }]))
  .then(() => Promise.all(fetchPng))
  .then(resArray => {
    resArray.forEach((res, index) => {
      if (!res.ok) {
        jsondata.champions[[keyAndUrl[index].key]].splash = keyAndUrl[index].otherUrl;
      }
    });
  })
  .then(() => db.into('tft_champs').insert([{ champdata: jsondata.champions }]))
  .then(() => db.into('tft_traits').insert([{ traitdata: traitobj }]))
  .then(() => db.destroy());




