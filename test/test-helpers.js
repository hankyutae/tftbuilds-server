const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');


//id/key is 1
function makeBfItemSample() {
  return {
    'desc': ' +@AD@ Attack Damage',
    'from': [],
    'icon': 'ASSETS/Maps/Particles/TFT/Icon_BFSword.TFT.dds',
    'name': 'B. F. Sword',
    'effects': [
      {
        'name': 'AD',
        'value': 20
      }
    ]
  };
}

//id/key is 4
function makeTfChampSample() {
  return {
    'id': 4,
    'cost': 2,
    'name': 'Twisted Fate',
    'stats': {
      'hp': 450,
      'mana': 50,
      'armor': 20,
      'range': 3,
      'damage': 40,
      'critChance': 0.25,
      'initalMana': 0,
      'attackSpeed': 0.7,
      'magicResist': 20,
      'hpScaleFactor': 1.8,
      'critMultiplier': 1.5,
      'damageScaleFactor': 1.25
    },
    'splash': 'assets/characters/twistedfate/hud/twistedfate_circle_0.png',
    'traits': [
      'Pirate',
      'Sorcerer'
    ],
    'ability': {
      'desc': 'Twisted Fate throws a card that either stuns, deals damage around his target, or restores mana to himself and nearby allies',
      'icon': 'ASSETS/Characters/TFT_TwistedFate/HUD/Icons2D/TFT_TwistedFate_Spell.TFT.dds',
      'name': 'Pick a Card',
      'variables': [
        {
          'key': 'RedCardDamage',
          'values': [
            50,
            150,
            250,
            350,
            450,
            550,
            650
          ]
        },
        {
          'key': 'BlueCardDamage',
          'values': [
            50,
            150,
            250,
            350,
            450,
            550,
            650
          ]
        },
        {
          'key': 'BlueCardManaRestore',
          'values': [
            5,
            20,
            35,
            50,
            65,
            80,
            95
          ]
        },
        {
          'key': 'GoldCardStunDuration',
          'values': [
            1,
            2,
            3,
            4,
            5,
            6,
            7
          ]
        },
        {
          'key': 'GoldCardDamage',
          'values': [
            50,
            150,
            250,
            350,
            450,
            550,
            650
          ]
        }
      ]
    },
    'classes': [
      'Sorcerer'
    ],
    'origins': [
      'Pirate'
    ]
  };
}

function makeUsersArray() {
  return [
    {
      id: '0429cadf-3783-41f2-b7ab-4fd0186068a3',
      user_name: 'test-user-1',
      email: 'TU1@gmail.com',
      password: 'password',
      date_created: new Date('2029-01-22T16:28:32.615Z'),
      date_modified: new Date('2029-01-22T16:28:32.615Z'),
    },
    {
      id: 'a931cafc-dd9e-463c-bf72-e2d78960e9df',
      user_name: 'test-user-2',
      email: 'TU2@gmail.com',
      password: 'password',
      date_created: new Date('2029-01-22T16:28:32.615Z'),
      date_modified: new Date('2029-01-22T16:28:32.615Z'),
    },
    {
      /* id: 3, */
      user_name: 'test-user-3',
      email: 'TU3@gmail.com',
      password: 'password',
      date_created: new Date('2029-01-22T16:28:32.615Z'),
      date_modified: new Date('2029-01-22T16:28:32.615Z'),
    },
    {
      /* id: 4, */
      user_name: 'test-user-4',
      email: 'TU4@gmail.com',
      password: 'password',
      date_created: new Date('2029-01-22T16:28:32.615Z'),
      date_modified: new Date('2029-01-22T16:28:32.615Z'),
    },
  ];
}

function makeBuildsArray(users) {
  return [
    //The first build always has to be owned by users[0]
    {
      'id': '28208e13-629f-4eb9-9a82-c2ee91fc6c3b',
      'user_id': users[0].id,
      'date_created': new Date('2029-01-22T16:28:32.615Z'),
      'date_modified': new Date('2029-01-22T16:28:32.615Z'),
      'is_public': true,
      'build_data': [
        {
          'id': 38,
          'items': [
            16,
            15,
            5
          ],
          'stars': 1
        },
        {
          'id': 103,
          'items': [
            5,
            17,
            25
          ],
          'stars': 3
        },
        {
          'id': 25,
          'items': [],
          'stars': 1
        },
        {
          'id': 136,
          'items': [],
          'stars': 1
        },
        {
          'id': 30,
          'items': [],
          'stars': 1
        },
        {
          'id': 421,
          'items': [],
          'stars': 1
        },
        {
          'id': 31,
          'items': [],
          'stars': 1
        }
      ]
    },
    //Second build needs to be is_public:false
    {
      'id': '5812433b-1948-41ca-9ff1-b55c98f2c2db',
      'user_id': users[1].id,
      'date_created': new Date('2029-01-22T16:28:32.615Z'),
      'date_modified': new Date('2029-01-22T16:28:32.615Z'),
      'is_public': false,
      'build_data': [
        {
          'id': 18,
          'items': [],
          'stars': 1
        }
      ]
    },
    {
      "id": "599a5eb5-48c8-404c-b769-9444e9512755",
      "user_id": users[0].id,
      "date_created": new Date('2029-01-22T16:28:32.615Z'),
      "date_modified": new Date('2029-01-22T16:28:32.615Z'),
      "is_public": true,
      "build_data": [
          {
              "id": 38,
              "items": [
                  15,
                  14,
                  16
              ],
              "stars": 1
          },
          {
              "id": 60,
              "items": [],
              "stars": 1
          }
      ]
  }
  ];
}

function getArrayOfUsersBuilds(user){
  return makeBuildsArray(makeUsersArray()).filter(build=>build.user_id===user.id);
}

function makeExpectedBuild(build){/* 
  const user = users
    .find(user => user.id === build.user_id) */
  return{
    id:build.id,
    user_id:build.user_id,
    date_created:build.date_created.toISOString(),
    date_modified:build.date_modified.toISOString(),
    is_public:build.is_public,
    build_data:build.build_data,
  }
}

function makeFixtures() {
  const testUsers = makeUsersArray();
  const testBuilds = makeBuildsArray(testUsers);
  return { testUsers, testBuilds };
}

function seedUsers(db, users) {
  const preppedUsers = users.map(user => ({
    ...user,
    password: bcrypt.hashSync(user.password, 1)
  }))
  return db.into('users').insert(preppedUsers)
}

function seedBuilds(db, users, builds) {
  return seedUsers(db, users)
    .then(() =>
      db
        .into('builds')
        .insert(builds.map(build=>{
          return{
            ...build,
            build_data:JSON.stringify(build.build_data)
          };
        }))
    )
}

function makeAuthHeader(user, secret = process.env.JWT_SECRET) {
  const token = jwt.sign({ user_id: user.id }, secret, {
    subject: user.user_name,
    algorithm: 'HS256',
  })
  return `Bearer ${token}`
}

function cleanTables(db) {
  return db.raw(
    `TRUNCATE
      builds,
      users
      RESTART IDENTITY CASCADE`
  )
}

module.exports = {
  makeUsersArray,
  makeBuildsArray,
  makeFixtures,
  makeAuthHeader,
  makeExpectedBuild,

  makeTfChampSample,
  makeBfItemSample,
  getArrayOfUsersBuilds,

  seedBuilds,
  seedUsers,
  cleanTables,
};