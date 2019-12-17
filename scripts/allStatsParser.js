let jsondata = require('../TFT/Cdragon.json');
const knex = require('knex');
const { DB_URL } = require('../src/config');
const fetch = require('node-fetch');

const db = knex({
  client: 'pg',
  connection: DB_URL,
});

let tempItems=jsondata.items;
let itemEffectsHash={};
itemEffectsHash['{ce132611}']='APPercentAmp';
itemEffectsHash['{4724fc58}']='AD';
itemEffectsHash['{eac3d5c4}']='CriticalStrikeAmp';
itemEffectsHash['{3abb8549}']='CritChance';
itemEffectsHash['{2275757b}']='ChanceOnHitToSilence';
itemEffectsHash['{dc44b1d7}']='HealthRestore';
itemEffectsHash['{8f954b18}']='HPThreshold';
itemEffectsHash['{510fdb6a}']='BanishDuration';
itemEffectsHash['{1a97299e}']='Mana';
itemEffectsHash['{c4b5579c}']='DodgeChance';
itemEffectsHash['{6688a0d5}']='DamageReflect';
itemEffectsHash['{d0088170}']='ASSlowPercentage';
itemEffectsHash['{0e4779e5}']='DodgeChancePercent';
itemEffectsHash['{a79cf66e}']='CurrentHPPhysicalDamage';
itemEffectsHash['{a8ca7859}']='AttackSpeedPercent';
itemEffectsHash['{57706a69}']='BurnPercent';
itemEffectsHash['{97e52ce8}']='BurnDuration';
itemEffectsHash['{ae49cc70}']='TraitMultiplier';
itemEffectsHash['{c425872e}']='StasisDuration';
itemEffectsHash['{03494ad0}']='ManaRestore';
itemEffectsHash['{276ba2c8}']='MultiplierForDamage';
itemEffectsHash['{69fff1ab}']='ManaPercentRestore';
itemEffectsHash['{93d13af6}']='ExtraBounces';
itemEffectsHash['{9b1e8f37}']='HexRange';
itemEffectsHash['{2426ea7e}']='ChanceOnHitToDisarm';
itemEffectsHash['{aa03e0b1}']='AttackSpeedPerStack';
itemEffectsHash['{cb57edb0}']='CritChancePerStack';
itemEffectsHash['{ec9a04d1}']='MaxArmySizeIncrease';
itemEffectsHash['{e93233aa}']='CleanseICD';
itemEffectsHash['{ad68ce80}']='StartingStacks';
itemEffectsHash['{f1d43b01}']='ADPerStack';
itemEffectsHash['{337a0cca}']='BouncesTooltip';
itemEffectsHash['{ad16f688}']='OmniVamp';
itemEffectsHash['{1bb18b94}']='HPPerRound';
itemEffectsHash['']='';
itemEffectsHash['']='';
itemEffectsHash['']='';
itemEffectsHash['']='';
itemEffectsHash['']='';
let finalItems={};
tempItems.forEach(item=>{
  Object.keys(item.effects).forEach(effectKey=>{
    let realEffectName=itemEffectsHash[effectKey];
    if(realEffectName){
      item.effects[  realEffectName ] =item.effects[effectKey];
      delete (item.effects[effectKey]);
    }
  });
  finalItems[item.id]=item;
});








jsondata=jsondata.sets['2'];
let set2ChampDescChanges={
  'Ashe':'Ashe gains @AttackSpeed*100@% Attack Speed for @Duration@ seconds, and her Basic Attacks fire a flurry of @NumArrows@ arrows with each arrow dealing @PercentADPerArrow*100@% of her AD in physical damage.',
  'Annie':'Annie summons Tibbers near her target, dealing @ModifiedStunDamage@ magic damage to all adjacent enemies. Tibbers fights for the rest of the round or until killed, dealing @ModifiedTibbersDamage@ magic damage with each Basic Attack.<br><br>Annie can\'t gain mana while Tibbers is active.',
  'Azir':'Azir summons a Sand Soldier near a random enemy. Sand Soldiers attack nearby enemies whenever Azir attacks, dealing @ModifiedSoldierDamage@ magic damage in a line, and last @SoldierDuration@ seconds.',
  'Diana': 'Diana creates @Orbs@ flame orbs which rotate around her and explode for @ModifiedOrbDamage@ magic damage when they collide with an enemy. She also shields herself for @ShieldDuration@ seconds, absorbing the next @ModifiedShieldValue@ damage she would take.',
  'Dr. Mundo' : 'Dr. Mundo creates a toxic cloud around him for @Duration@ seconds. The cloud deals @ModifiedBaseDamage@ + @HealthPercent@% of Dr. Mundo\'s maximum health as magic damage to nearby enemies each second, and heals him for @HealRatio*100@% of that value.',
  'Ezreal': 'Ezreal fires a shard of ice at the lowest-health enemy, dealing @ModifiedBaseDamage@ magic damage and applying on-hit effects.',
  'Ivern': 'Ivern shields the lowest-health ally for @Duration@ seconds, absorbing the next @ModifiedShieldAmount@ damage.',
  'Janna': 'Janna summons a Monsoon around her, healing allies for @ModifiedHealAmountPercent@% of their max health over @Duration@ seconds. Nearby enemies are knocked back and stunned for @StunDuration@ second.',
  'Malzahar': 'Malzahar summons @NumVoidlings@ Shadow Spawn, who hit for @ModifiedVoidlingDamage@ magic damage each attack.<br><br>Shadow Spawn benefit from active Shadow trait bonuses.',
  'Maokai' : 'Passive: After being damaged by an enemy spell, Maokai\'s next attack heals him for @ModifiedHealAmount@.',
  'Master Yi':'Master Yi meditates, becoming untargetable for @MeditateDuration@ seconds and healing @ModifiedHealAmount@ of his max health over the duration.<br><br>After Master Yi finishes meditating, he gains @AttackSpeed*100@% Attack Speed and deals @ModifiedDamage@ bonus magic damage on hit for @BuffDuration@ seconds.',
  'Nami': 'Nami summons a massive tidal wave which deals @ModifiedDamage@ magic damage to all enemies hit, knocking up and stunning them for @StunDuration@ seconds. Allies hit are empowered, and their Basic Attacks deal an additional @ModifiedAllyDamageBonus@ magic damage for the next @AllyBuffDuration@ seconds.',
  'Nocturne': 'Passive - Every three hits Nocturne\'s attack deals damage and applys on-hit effects to all adjacent units. It also heals for @ModifiedHealPercent*100@% of the damage dealt.',
  'Renekton': 'Renekton swings his blade, dealing @ModifiedBaseDamage@ magic damage to nearby enemies and healing himself for @ModifiedHealAmount@ per enemy hit.',
  'Singed' : 'Passive: Singed leaves a toxic cloud wherever he moves, poisoning enemies who stand in it for @ModifiedTotalDamage@ magic damage over @PoisonDuration@ seconds.',
  'Skarner' : 'Skarner gains a shield against @ModifiedShieldAmount@ damage for @Duration@ seconds. While the shield persists, Skarner gains @AttackSpeed*100@% attack speed.',
  'Yorick' : 'Yorick blesses his @NumAlliesToTarget@ lowest-health allies (except Minions of Light). When they die they are resurrected as a Minion of Light with @GhoulHealth@ health and @ModifiedGhoulAD@ attack damage.<br><br>Minions of Light benefit from active Light trait bonuses.',
  'Zyra' : 'Zyra summons @NumPlants@ Flame Spitters at random locations on the edge of the arena. They attack the nearest enemy for @PlantDuration@ seconds, dealing @ModifiedPlantAD@ magic damage per attack a total of @PlantAmmo@ times.',
  'Vayne' : 'Passive: Whenever Vayne Basic Attacks the same target 3 times, she deals @ModifiedPercentDamage@ of her target\'s maximum health as true damage.',
  'Warwick' : 'Warwick pounces on the weakest enemy, stunning them for @Duration@ seconds and striking them @Hits@ times, dealing @ModifiedBaseDamage@ magic damage. Each strike triggers on-hit effects and heals Warwick for 100% of the damage dealt.',
  'Qiyana' : 'Qiyana blasts a short line in front of her, stunning enemies for @CCDuration@ seconds and dealing @ModifiedBaseDamage@ magic damage.',
  'Lucian' : 'Lucian fires @NumShots@ + (8 * Attacks Per Second) bullets in a direction over @Duration@ seconds, each attacking for @TADRatio*100@% of his AD, applying on-hits, and dealing @ModifiedBaseDamage@ magic damage.<br><br>Lucian will dash during the Culling to keep hitting enemies.',
  'Senna' : 'Senna fires a beam through her furthest ally, dealing @ModifiedDamage@ magic damage to enemies, and buffing allies\' on-hits for @AllyBuffDuration@ seconds to deal @ModifiedAllyDamageBonus@ magic damage from Senna.',
  'Amumu' : 'Amumu explodes in an infernal tantrum, dealing @ModifiedRDamage@ magic damage to all enemies within @RRange@ Hexes and stunning them for @RDuration@ seconds.',
  'Thresh': 'Thresh throws his lantern to the lowest-health ally, shielding them and nearby allies against @ModifiedShieldAmount@ damage for @Duration@ seconds.',
  'Sivir' : 'For the next @Duration@ seconds, Sivir\'s attacks bounce up to @NumBounces@ times, dealing @PercentDamage*100@% AD physical damage to enemies hit and applying on-hit effects.',
  'Twitch' : 'Twitch gains infinite range and has @ADAmp*100@% Attack Damage for @Duration@ seconds. During this time his attacks travel their full range and hit every enemy they pass through. This also applies on-hit effects.'
};

let championsHash={};
jsondata.champions.forEach((championObj,index)=>{

  championsHash[index]=championObj;
  championsHash[index].id=index;
  let potentiallyNewAbilityDesc=set2ChampDescChanges[championObj.name];
  if(potentiallyNewAbilityDesc){
    championsHash[index].ability.desc=potentiallyNewAbilityDesc;
  }
});

jsondata.champions = championsHash;



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
  if (name === 'mordekaiser')
    return 'mordevgu.';
  if(name==='pantheon')
    return 'pantheonvgu.';
  if(name==='senna')
    return 'senna.';
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
  case 'Cloud':
    return true;
  case 'Crystal':
    return true;
  case 'Desert':
    return true;
  case 'Electric':
    return true;
  case 'Glacial':
    return true;
  case 'Inferno':
    return true;
  case 'Light':
    return true;
  case 'Mountain':
    return true;
  case 'Ocean':
    return true;
  case 'Poison':
    return true;
  case 'Shadow':
    return true;
  case 'Steel':
    return true;
  case 'Woodland':
    return true;
  case 'Lunar':
    return true;

  default:
    return false;

  }
}

function handleQuirks(champion) {
  //set2
  if( champion.name.toLowerCase() === 'neeko'){
    let index=champion.ability.variables.findIndex(obj=>{
      return obj.name==='Radius1';
    });
    if(index===-1){
      return;
    }
    champion.ability.variables.splice(index,1);
  }
  if( champion.name.toLowerCase() === 'vladimir'){
    let index=champion.ability.variables.findIndex(obj=>{
      return obj.name==='HealthThreshold';
    });
    if(index===-1){
      return;
    }
    champion.ability.variables.splice(index,1);
  }
  if( champion.name.toLowerCase() === 'vladimir'){
    let index=champion.ability.variables.findIndex(obj=>{
      return obj.name==='HealingAmp';
    });
    if(index===-1){
      return;
    }
    champion.ability.variables.splice(index,1);
  }

  //Was from set1
  /*
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
  else if (champion.name.toLowerCase() === 'elise') {
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




let traitEffectsHash={};

traitEffectsHash['{b4a90a5d}']='ProcChance';
traitEffectsHash['{8f954b18}']='HPThreshold';
traitEffectsHash['{5119f0ff}']='ADBonus';
traitEffectsHash['{cca74473}']='DamageThreshold';
traitEffectsHash['{6003afce}']='ProcPercent';
traitEffectsHash['{538d2e86}']='ASMultTooltip';
traitEffectsHash['{1b812333}']='ProcRate';
traitEffectsHash['{4e5f79b7}']='HealthPercentThreshold';
traitEffectsHash['{d165d743}']='ImmunityDuration';
traitEffectsHash['{268f634e}']='CritAmpPercent';
traitEffectsHash['{9f2eb1e2}']='CritChanceAmpPercent';
traitEffectsHash['{360f62b5}']='SummonDurationBoost';
traitEffectsHash['{471b1a16}']='TickRate';
traitEffectsHash['{d0539890}']='ManaPerTick';
traitEffectsHash['{04bbf4a5}']='ArmorPercentIncrease';
traitEffectsHash['{d04eb593}']='ZoneDuration';
traitEffectsHash['{cb6b5298}']='PercentBonusDamage';
traitEffectsHash['{e97e931e}']='NumZones';
traitEffectsHash['{4c67d4fe}']='DamageAmp';
traitEffectsHash['{e7acd68a}']='ArmorPercentReduction';
traitEffectsHash['{a8ca7859}']='AttackSpeedPercent';
traitEffectsHash['{a861afa0}']='CostIncrease';
traitEffectsHash['']='';
const traitobj = {};/* 
const effectIdToString={
  ''
}; */
jsondata.traits.forEach(trait => {
  traitobj[trait.name] = trait;
  traitobj[trait.name].isOrigin = isItOrigin(trait.name);
  traitobj[trait.name].effects.forEach(effect => {
    Object.keys(effect.variables).forEach(varKey=>{
      let newEffectName=traitEffectsHash[varKey];
      if(newEffectName){
        effect.variables[newEffectName] = effect.variables[varKey];
        delete (effect.variables[varKey]);
      }
    });
  });
  
});


db.raw(
  `TRUNCATE
  tft_items,
  tft_champs,
  tft_traits`
)
  /* .then(() => db.into('tft_items').insert(itemarray))
  .then(() => db.into('tft_champs').insert(champarray)) */.then(() => db.into('tft_items').insert([{ itemdata: finalItems }]))
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




