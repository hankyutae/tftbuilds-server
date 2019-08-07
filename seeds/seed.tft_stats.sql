insert into tft_stats (data, patch_version)
values
  ('{
  "champions": {
    "30": {
      "name": "Karthus",
      "cost": 5,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Karthus.dds",
      "stats": {
        "hp": 850.0,
        "hpScaleFactor": 1.8,
        "mana": 85.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 65.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 3
      },
      "traits": [
        "Phantom",
        "Sorcerer"
      ],
      "ability": {
        "name": "Requiem",
        "desc": "Karthus deals damage to @NumberOfTargets@ random enemies after a long channel",
        "icon": "ASSETS/Characters/Karthus/HUD/Icons2D/Karthus_R.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              100.0,
              350.0,
              600.0,
              850.0,
              1100.0,
              1350.0,
              1600.0
            ]
          },
          {
            "key": "NumberOfTargets",
            "values": [
              1.0,
              4.0,
              7.0,
              10.0,
              13.0,
              16.0,
              19.0
            ]
          }
        ]
      }
    },
    "121": {
      "name": "Kha''Zix",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Khazix.dds",
      "stats": {
        "hp": 500.0,
        "hpScaleFactor": 1.8,
        "mana": 50.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 1
      },
      "traits": [
        "Void",
        "Assassin"
      ],
      "ability": {
        "name": "Taste their Fear",
        "desc": "Kha''Zix slashes the closest enemy, dealing bonus damage to enemies that are alone",
        "icon": "ASSETS/Characters/KhaZix/HUD/Icons2D/Khazix_Q.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              50.0,
              150.0,
              250.0,
              350.0,
              450.0,
              550.0,
              650.0
            ]
          },
          {
            "key": "IsolationDamage",
            "values": [
              200.0,
              400.0,
              600.0,
              800.0,
              1000.0,
              1200.0,
              1400.0
            ]
          }
        ]
      }
    },
    "34": {
      "name": "Anivia",
      "cost": 5,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Anivia.dds",
      "stats": {
        "hp": 650.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 40.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 3
      },
      "traits": [
        "Glacial",
        "Elementalist"
      ],
      "ability": {
        "name": "Glacial Storm",
        "desc": "Anivia channels a large hailstorm, damaging and slowing the attack speed of enemies inside of it",
        "icon": "ASSETS/Characters/Anivia/HUD/Icons2D/Anivia_R.dds",
        "variables": [
          {
            "key": "TotalDamage",
            "values": [
              450.0,
              700.0,
              950.0,
              1200.0,
              1450.0,
              1700.0,
              1950.0
            ]
          },
          {
            "key": "AttackSpeedSlow",
            "values": [
              30.0,
              50.0,
              70.0,
              90.0,
              110.0,
              130.0,
              150.0
            ]
          },
          {
            "key": "StormDuration",
            "values": [
              8.0,
              8.0,
              8.0,
              8.0,
              8.0,
              8.0,
              8.0
            ]
          }
        ]
      }
    },
    "421": {
      "name": "Rek''Sai",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Reksai.dds",
      "stats": {
        "hp": 650.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 40.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 1
      },
      "traits": [
        "Void",
        "Brawler"
      ],
      "ability": {
        "name": "Burrow",
        "desc": "Rek''Sai burrows for a short duration becoming untargetable and healing. When Rek''Sai unburrows she deals damage and knocks up the closest enemy for @KnockUpDuration@s",
        "icon": "ASSETS/Characters/RekSai/HUD/Icons2D/RekSai_W1.dds",
        "variables": [
          {
            "key": "HealAmount",
            "values": [
              200.0,
              300.0,
              400.0,
              500.0,
              600.0,
              700.0,
              800.0
            ]
          },
          {
            "key": "BurrowDuration",
            "values": [
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0
            ]
          },
          {
            "key": "HealTickRate",
            "values": [
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5
            ]
          },
          {
            "key": "KnockupDuration",
            "values": [
              1.75,
              1.75,
              1.75,
              1.75,
              1.75,
              1.75,
              1.75
            ]
          },
          {
            "key": "KnockupDamage",
            "values": [
              50.0,
              150.0,
              250.0,
              350.0,
              450.0,
              550.0,
              650.0
            ]
          }
        ]
      }
    },
    "28": {
      "name": "Evelynn",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Evelyn.dds",
      "stats": {
        "hp": 600.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 1
      },
      "traits": [
        "Demon",
        "Assassin"
      ],
      "ability": {
        "name": "Last Caress",
        "desc": "Evelynn deals damage to the 3 closest enemies and teleports away. Damage is increased against low health enemies",
        "icon": "ASSETS/Characters/Evelynn/HUD/Icons2D/Evelynn_R.dds",
        "variables": [
          {
            "key": "CritMultiplier",
            "values": [
              1.0,
              3.0,
              5.0,
              7.0,
              9.0,
              11.0,
              13.0
            ]
          },
          {
            "key": "CritThreshold",
            "values": [
              0.65,
              0.65,
              0.65,
              0.65,
              0.65,
              0.65,
              0.65
            ]
          },
          {
            "key": "Damage",
            "values": [
              150.0,
              200.0,
              250.0,
              300.0,
              350.0,
              400.0,
              450.0
            ]
          },
          {
            "key": "BlinkBackDistance",
            "values": [
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          }
        ]
      }
    },
    "98": {
      "name": "Shen",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Shen.dds",
      "stats": {
        "hp": 650.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 65.0,
        "damageScaleFactor": 1.25,
        "armor": 30.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 1
      },
      "traits": [
        "Ninja",
        "Blademaster"
      ],
      "ability": {
        "name": "Spirit''s Refuge",
        "desc": "Shen creates a zone around himself, allowing allies inside to dodge all attacks",
        "icon": "ASSETS/Characters/Shen/HUD/Icons2D/Shen_W.dds",
        "variables": [
          {
            "key": "ZoneDuration",
            "values": [
              2.0,
              3.0,
              4.0,
              5.0,
              6.0,
              7.0,
              8.0
            ]
          }
        ]
      }
    },
    "82": {
      "name": "Mordekaiser",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Mordekaiser.dds",
      "stats": {
        "hp": 500.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 35.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.5,
        "range": 1
      },
      "traits": [
        "Phantom",
        "Knight"
      ],
      "ability": {
        "name": "Obliterate",
        "desc": "Mordekaiser slams his mace in front him, dealing damage to two enemies in a line",
        "icon": "ASSETS/Characters/Mordekaiser/HUD/Icons2D/MordekaiserQ.MordeVGU.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              75.0,
              200.0,
              325.0,
              450.0,
              575.0,
              700.0,
              825.0
            ]
          },
          {
            "key": "MaceStartDistance",
            "values": [
              400.0,
              400.0,
              400.0,
              400.0,
              400.0,
              400.0,
              400.0
            ]
          },
          {
            "key": "MaceLength",
            "values": [
              625.0,
              625.0,
              625.0,
              625.0,
              625.0,
              625.0,
              625.0
            ]
          },
          {
            "key": "RectangleWidth",
            "values": [
              160.0,
              160.0,
              160.0,
              160.0,
              160.0,
              160.0,
              160.0
            ]
          }
        ]
      }
    },
    "85": {
      "name": "Kennen",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Kennen.dds",
      "stats": {
        "hp": 550.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 70.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 2
      },
      "traits": [
        "Ninja",
        "Yordle",
        "Elementalist"
      ],
      "ability": {
        "name": "Slicing Maelstrom",
        "desc": "Kennen summons a storm around him, dealing damage and stunning enemies inside of it for @StunDuration@s",
        "icon": "ASSETS/Characters/Kennen/HUD/Icons2D/Kennen_R.dds",
        "variables": [
          {
            "key": "TickRate",
            "values": [
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5
            ]
          },
          {
            "key": "Duration",
            "values": [
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          },
          {
            "key": "Damage",
            "values": [
              150.0,
              400.0,
              650.0,
              900.0,
              1150.0,
              1400.0,
              1650.0
            ]
          },
          {
            "key": "StunDuration",
            "values": [
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5
            ]
          }
        ]
      }
    },
    "84": {
      "name": "Akali",
      "cost": 4,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Akali.dds",
      "stats": {
        "hp": 700.0,
        "hpScaleFactor": 1.8,
        "mana": 25.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 70.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.75,
        "range": 1
      },
      "traits": [
        "Ninja",
        "Assassin"
      ],
      "ability": {
        "name": "Five Point Strike",
        "desc": "Akali throws shurikens in front of her, dealing damage. This spell can critically strike",
        "icon": "ASSETS/Characters/Akali/HUD/Icons2D/Akali_Q.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              25.0,
              200.0,
              375.0,
              550.0,
              725.0,
              900.0,
              1075.0
            ]
          },
          {
            "key": "ConeHexLength",
            "values": [
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0
            ]
          }
        ]
      }
    },
    "117": {
      "name": "Lulu",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Lulu.dds",
      "stats": {
        "hp": 500.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 2
      },
      "traits": [
        "Yordle",
        "Sorcerer"
      ],
      "ability": {
        "name": "Wild Growth",
        "desc": "Lulu grants an ally bonus Health, knocking up enemies near them for @CCDuration@s",
        "icon": "ASSETS/Characters/Lulu/HUD/Icons2D/Lulu_GiantGrowth.dds",
        "variables": [
          {
            "key": "BonusHealth",
            "values": [
              125.0,
              300.0,
              475.0,
              650.0,
              825.0,
              1000.0,
              1175.0
            ]
          },
          {
            "key": "ExtraTargets",
            "values": [
              -1.0,
              0.0,
              1.0,
              2.0,
              3.0,
              4.0,
              5.0
            ]
          },
          {
            "key": "BuffDuration",
            "values": [
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0
            ]
          },
          {
            "key": "CCDuration",
            "values": [
              1.25,
              1.25,
              1.25,
              1.25,
              1.25,
              1.25,
              1.25
            ]
          }
        ]
      }
    },
    "107": {
      "name": "Rengar",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Rengar.dds",
      "stats": {
        "hp": 550.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 55.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.55,
        "range": 1
      },
      "traits": [
        "Wild",
        "Assassin"
      ],
      "ability": {
        "name": "Savagery",
        "desc": "Rengar leaps to the lowest health enemy and stabs them for bonus on-hit damage. After dealing damage, Rengar gains Attack Speed and @CritBuff*100@% Critical Strike Chance",
        "icon": "ASSETS/Characters/Rengar/HUD/Icons2D/RengarQ.dds",
        "variables": [
          {
            "key": "ADMult",
            "values": [
              1.0,
              2.0,
              3.0,
              4.0,
              5.0,
              6.0,
              7.0
            ]
          },
          {
            "key": "ASBuff",
            "values": [
              0.1,
              0.3,
              0.5,
              0.7,
              0.9,
              1.1,
              1.3
            ]
          },
          {
            "key": "CritBuff",
            "values": [
              0.25,
              0.25,
              0.25,
              0.25,
              0.25,
              0.25,
              0.25
            ]
          },
          {
            "key": "BuffDuration",
            "values": [
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0
            ]
          }
        ]
      }
    },
    "104": {
      "name": "Graves",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Graves.dds",
      "stats": {
        "hp": 500.0,
        "hpScaleFactor": 1.8,
        "mana": 0.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 55.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.5,
        "range": 1
      },
      "traits": [
        "Pirate",
        "Gunslinger"
      ],
      "ability": {
        "name": "Buckshot",
        "desc": "Innate: Graves'' attacks deal increased damage and hit all enemies in front of him",
        "icon": "ASSETS/Characters/Graves/HUD/Icons2D/BuckshotOld.dds",
        "variables": [
          {
            "key": "DamageMultiplier",
            "values": [
              0.0,
              0.05,
              0.1,
              0.15,
              0.2,
              0.25,
              0.3
            ]
          }
        ]
      }
    },
    "50": {
      "name": "Swain",
      "cost": 5,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Swain.dds",
      "stats": {
        "hp": 850.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 65.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 2
      },
      "traits": [
        "Imperial",
        "Demon",
        "Shapeshifter"
      ],
      "ability": {
        "name": "Demonflare",
        "desc": "Swain transforms, draining health from all nearby enemies. At the end of his transformation, Swain sends out a burst of energy dealing damage to nearby enemies",
        "icon": "ASSETS/Characters/Swain/HUD/Icons2D/Swain_R.dds",
        "variables": [
          {
            "key": "TransformDuration",
            "values": [
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0
            ]
          },
          {
            "key": "DamagePerTick",
            "values": [
              0.0,
              50.0,
              100.0,
              150.0,
              200.0,
              250.0,
              300.0
            ]
          },
          {
            "key": "HealPerTick",
            "values": [
              10.0,
              50.0,
              90.0,
              130.0,
              170.0,
              210.0,
              250.0
            ]
          },
          {
            "key": "SoulFlareDamage",
            "values": [
              0.0,
              300.0,
              600.0,
              900.0,
              1200.0,
              1500.0,
              1800.0
            ]
          },
          {
            "key": "HealthIncrease",
            "values": null
          }
        ]
      }
    },
    "113": {
      "name": "Sejuani",
      "cost": 4,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Sejuani.dds",
      "stats": {
        "hp": 850.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 45.0,
        "damageScaleFactor": 1.25,
        "armor": 35.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.55,
        "range": 1
      },
      "traits": [
        "Glacial",
        "Knight"
      ],
      "ability": {
        "name": "Glacial Prison",
        "desc": "Sejuani creates a large glacial storm, stunning enemies within it after a short delay",
        "icon": "ASSETS/Characters/Sejuani/HUD/Icons2D/Sejuani_R.dds",
        "variables": [
          {
            "key": "ExplosionDelay",
            "values": [
              0.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0
            ]
          },
          {
            "key": "Damage",
            "values": [
              25.0,
              100.0,
              175.0,
              250.0,
              325.0,
              400.0,
              475.0
            ]
          },
          {
            "key": "StunDuration",
            "values": [
              0.5,
              2.0,
              3.5,
              5.0,
              6.5,
              8.0,
              9.5
            ]
          }
        ]
      }
    },
    "102": {
      "name": "Shyvana",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Shyvana.dds",
      "stats": {
        "hp": 650.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.7,
        "range": 1
      },
      "traits": [
        "Dragon",
        "Shapeshifter"
      ],
      "ability": {
        "name": "Dragon''s Descent",
        "desc": "Shyvana dashes and transforms, gaining Attack Damage and Attack Range. When transformed, her attacks set enemies on fire",
        "icon": "ASSETS/Characters/Shyvana/HUD/Icons2D/ShyvanaDragonsDescent.dds",
        "variables": [
          {
            "key": "TransformDuration",
            "values": [
              60.0,
              60.0,
              60.0,
              60.0,
              60.0,
              60.0,
              60.0
            ]
          },
          {
            "key": "ADWhileDragon",
            "values": [
              50.0,
              100.0,
              150.0,
              200.0,
              250.0,
              300.0,
              350.0
            ]
          },
          {
            "key": "BurnDuration",
            "values": [
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          },
          {
            "key": "BurnDamage",
            "values": [
              125.0,
              250.0,
              375.0,
              500.0,
              625.0,
              750.0,
              875.0
            ]
          }
        ]
      }
    },
    "53": {
      "name": "Blitzcrank",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Blitzcrank.dds",
      "stats": {
        "hp": 600.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 35.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.5,
        "range": 1
      },
      "traits": [
        "Robot",
        "Brawler"
      ],
      "ability": {
        "name": "Rocket Grab",
        "desc": "Blitzcrank pulls the furthest enemy to him and stuns them for @StunDuration@s",
        "icon": "ASSETS/Characters/Blitzcrank/HUD/Icons2D/Blitzcrank_RocketGrab.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              -250.0,
              100.0,
              450.0,
              800.0,
              1150.0,
              1500.0,
              1850.0
            ]
          },
          {
            "key": "StunDuration",
            "values": [
              2.5,
              2.5,
              2.5,
              2.5,
              2.5,
              2.5,
              2.5
            ]
          }
        ]
      }
    },
    "555": {
      "name": "Pyke",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Pyke.dds",
      "stats": {
        "hp": 600.0,
        "hpScaleFactor": 1.8,
        "mana": 125.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 60.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 1
      },
      "traits": [
        "Pirate",
        "Assassin"
      ],
      "ability": {
        "name": "Phantom Undertow",
        "desc": "Pyke dashes behind the furthest enemy, creating an afterimage that stuns enemies it passes through",
        "icon": "ASSETS/Characters/Pyke/HUD/Icons2D/PykeE.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              100.0,
              150.0,
              200.0,
              250.0,
              300.0,
              350.0,
              400.0
            ]
          },
          {
            "key": "StunDuration",
            "values": [
              1.5,
              2.0,
              2.5,
              3.0,
              3.5,
              4.0,
              4.5
            ]
          },
          {
            "key": "StunDelay",
            "values": [
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0
            ]
          }
        ]
      }
    },
    "4": {
      "name": "Twisted Fate",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_TwistedFate.dds",
      "stats": {
        "hp": 450.0,
        "hpScaleFactor": 1.8,
        "mana": 50.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 40.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.75,
        "range": 3
      },
      "traits": [
        "Pirate",
        "Sorcerer"
      ],
      "ability": {
        "name": "Pick a Card",
        "desc": "Twisted Fate throws a card that either stuns, deals damage around his target, or restores mana to himself and nearby allies",
        "icon": "ASSETS/Characters/TFT_TwistedFate/HUD/Icons2D/TFT_TwistedFate_Spell.TFT.dds",
        "variables": [
          {
            "key": "RedCardDamage",
            "values": [
              50.0,
              100.0,
              150.0,
              200.0,
              250.0,
              300.0,
              350.0
            ]
          },
          {
            "key": "BlueCardDamage",
            "values": [
              50.0,
              100.0,
              150.0,
              200.0,
              250.0,
              300.0,
              350.0
            ]
          },
          {
            "key": "BlueCardManaRestore",
            "values": [
              5.0,
              20.0,
              35.0,
              50.0,
              65.0,
              80.0,
              95.0
            ]
          },
          {
            "key": "GoldCardStunDuration",
            "values": [
              1.0,
              2.0,
              3.0,
              4.0,
              5.0,
              6.0,
              7.0
            ]
          },
          {
            "key": "GoldCardDamage",
            "values": [
              50.0,
              100.0,
              150.0,
              200.0,
              250.0,
              300.0,
              350.0
            ]
          }
        ]
      }
    },
    "22": {
      "name": "Ashe",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Ashe.dds",
      "stats": {
        "hp": 550.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 60.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.7,
        "range": 4
      },
      "traits": [
        "Glacial",
        "Ranger"
      ],
      "ability": {
        "name": "Enchanted Crystal Arrow",
        "desc": "Ashe fires an arrow that stuns and damages the farthest enemy. The stun is longer the farther the enemy",
        "icon": "ASSETS/Characters/Ashe/HUD/Icons2D/Ashe_R.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              0.0,
              200.0,
              400.0,
              600.0,
              800.0,
              1000.0,
              1200.0
            ]
          },
          {
            "key": "StunDurationPerSquare",
            "values": [
              0.5,
              1.0,
              1.5,
              2.0,
              2.5,
              3.0,
              3.5
            ]
          }
        ]
      }
    },
    "266": {
      "name": "Aatrox",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Aatrox.dds",
      "stats": {
        "hp": 750.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 65.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 1
      },
      "traits": [
        "Demon",
        "Blademaster"
      ],
      "ability": {
        "name": "The Darkin Blade",
        "desc": "Aatrox cleaves the area in front of him, dealing damage to enemies inside it",
        "icon": "ASSETS/Characters/Aatrox/HUD/Icons2D/Aatrox_Q3.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              100.0,
              400.0,
              700.0,
              1000.0,
              1300.0,
              1600.0,
              1900.0
            ]
          }
        ]
      }
    },
    "103": {
      "name": "Ahri",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Ahri.dds",
      "stats": {
        "hp": 450.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.55,
        "range": 3
      },
      "traits": [
        "Wild",
        "Sorcerer"
      ],
      "ability": {
        "name": "Orb of Deception",
        "desc": "Ahri fires an orb in a line that returns to her, damaging enemies it passes through",
        "icon": "ASSETS/Characters/Ahri/HUD/Icons2D/Ahri_OrbofDeception.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              25.0,
              100.0,
              175.0,
              250.0,
              325.0,
              400.0,
              475.0
            ]
          }
        ]
      }
    },
    "203": {
      "name": "Kindred",
      "cost": 4,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Kindred.dds",
      "stats": {
        "hp": 600.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 55.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 3
      },
      "traits": [
        "Phantom",
        "Ranger"
      ],
      "ability": {
        "name": "Lamb''s Respite",
        "desc": "Kindred creates a zone around herself that prevents allies from dying",
        "icon": "ASSETS/Characters/Kindred/HUD/Icons2D/Kindred_R.dds",
        "variables": [
          {
            "key": "Duration",
            "values": [
              3.0,
              4.0,
              5.0,
              6.0,
              7.0,
              8.0,
              9.0
            ]
          },
          {
            "key": "MinHealth",
            "values": [
              0.0,
              300.0,
              600.0,
              900.0,
              1200.0,
              1500.0,
              1800.0
            ]
          }
        ]
      }
    },
    "106": {
      "name": "Volibear",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Volibear.dds",
      "stats": {
        "hp": 700.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 75.0,
        "damageScaleFactor": 1.25,
        "armor": 35.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 1
      },
      "traits": [
        "Glacial",
        "Brawler"
      ],
      "ability": {
        "name": "Thunder Claws",
        "desc": "Volibear empowers his attacks to chain between enemies, applying on-hit effects",
        "icon": "ASSETS/Characters/Volibear/HUD/Icons2D/VolibearR.dds",
        "variables": [
          {
            "key": "BuffDuration",
            "values": [
              20.0,
              20.0,
              20.0,
              20.0,
              20.0,
              20.0,
              20.0
            ]
          },
          {
            "key": "MaxBounces",
            "values": [
              1.0,
              2.0,
              3.0,
              4.0,
              5.0,
              6.0,
              7.0
            ]
          },
          {
            "key": "ChainADMult",
            "values": [
              0.7,
              0.8,
              0.9,
              1.0,
              1.1,
              1.2,
              1.3
            ]
          },
          {
            "key": "SizeIncrease",
            "values": [
              0.08,
              0.08,
              0.08,
              0.08,
              0.08,
              0.08,
              0.08
            ]
          },
          {
            "key": "HexRange",
            "values": [
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0
            ]
          }
        ]
      }
    },
    "89": {
      "name": "Leona",
      "cost": 4,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Leona.dds",
      "stats": {
        "hp": 750.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 45.0,
        "damageScaleFactor": 1.25,
        "armor": 55.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.55,
        "range": 1
      },
      "traits": [
        "Noble",
        "Guardian"
      ],
      "ability": {
        "name": "Solar Flare",
        "desc": "Leona calls down a solar ray that damages and slows enemies inside it. The enemy in the center is stunned",
        "icon": "ASSETS/Characters/Leona/HUD/Icons2D/LeonaSolarFlare.dds",
        "variables": [
          {
            "key": "DelayTime",
            "values": [
              0.625,
              0.625,
              0.625,
              0.625,
              0.625,
              0.625,
              0.625
            ]
          },
          {
            "key": "CCDuration",
            "values": [
              2.0,
              5.0,
              8.0,
              11.0,
              14.0,
              17.0,
              20.0
            ]
          },
          {
            "key": "Damage",
            "values": [
              100.0,
              175.0,
              250.0,
              325.0,
              400.0,
              475.0,
              550.0
            ]
          }
        ]
      }
    },
    "238": {
      "name": "Zed",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Zed.dds",
      "stats": {
        "hp": 500.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 60.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 1
      },
      "traits": [
        "Ninja",
        "Assassin"
      ],
      "ability": {
        "name": "Razor Shuriken",
        "desc": "Zed throws a shuriken, dealing damage to enemies in a line",
        "icon": "ASSETS/Characters/Zed/HUD/Icons2D/shadowninja_Q.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              100.0,
              200.0,
              300.0,
              400.0,
              500.0,
              600.0,
              700.0
            ]
          },
          {
            "key": "HexRange",
            "values": [
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0
            ]
          }
        ]
      }
    },
    "18": {
      "name": "Tristana",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Tristana.dds",
      "stats": {
        "hp": 500.0,
        "hpScaleFactor": 1.8,
        "mana": 50.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.7,
        "range": 4
      },
      "traits": [
        "Yordle",
        "Gunslinger"
      ],
      "ability": {
        "name": "Explosive Charge",
        "desc": "Tristana places a bomb on her current target that detonates after 3 attacks, damaging nearby enemies",
        "icon": "ASSETS/Characters/Tristana/HUD/Icons2D/Tristana_E.dds",
        "variables": [
          {
            "key": "ExplosiveChargeDuration",
            "values": [
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0
            ]
          },
          {
            "key": "ChargeBaseDamage",
            "values": [
              30.0,
              60.0,
              90.0,
              120.0,
              150.0,
              180.0,
              210.0
            ]
          },
          {
            "key": "PercentDamageIncreasePerStack",
            "values": [
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5
            ]
          }
        ]
      }
    },
    "60": {
      "name": "Elise",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Elise.dds",
      "stats": {
        "hp": 500.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 40.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 2
      },
      "traits": [
        "Demon",
        "Shapeshifter"
      ],
      "ability": {
        "name": "Spider Form",
        "desc": "Elise summons Spiderlings and transforms, gaining Lifesteal",
        "icon": "ASSETS/Characters/Elise/HUD/Icons2D/EliseR.DDS",
        "variables": [
          {
            "key": "NumSpiderlings",
            "values": [
              1.0,
              2.0,
              3.0,
              4.0,
              5.0,
              6.0,
              7.0
            ]
          },
          {
            "key": "Lifesteal",
            "values": [
              0.3,
              0.6,
              0.9,
              1.2,
              1.5,
              1.8,
              2.1
            ]
          },
          {
            "key": "SpiderFormDuration",
            "values": [
              60.0,
              60.0,
              60.0,
              60.0,
              60.0,
              60.0,
              60.0
            ]
          }
        ]
      }
    },
    "76": {
      "name": "Nidalee",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Nidalee.dds",
      "stats": {
        "hp": 500.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 3
      },
      "traits": [
        "Wild",
        "Shapeshifter"
      ],
      "ability": {
        "name": "Primal Surge",
        "desc": "Nidalee heals herself and the weakest ally, then transforms gaining Attack Damage",
        "icon": "ASSETS/Characters/Nidalee/HUD/Icons2D/Nidalee_R2.dds",
        "variables": [
          {
            "key": "HoTDuration",
            "values": [
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0
            ]
          },
          {
            "key": "HoTTotalHeal",
            "values": [
              -75.0,
              150.0,
              375.0,
              600.0,
              825.0,
              1050.0,
              1275.0
            ]
          },
          {
            "key": "ADInCougar",
            "values": [
              -30.0,
              20.0,
              70.0,
              120.0,
              170.0,
              220.0,
              270.0
            ]
          },
          {
            "key": "TransformDuration",
            "values": [
              60.0,
              60.0,
              60.0,
              60.0,
              60.0,
              60.0,
              60.0
            ]
          },
          {
            "key": "AnimTime",
            "values": [
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5
            ]
          }
        ]
      }
    },
    "67": {
      "name": "Vayne",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Vayne.dds",
      "stats": {
        "hp": 550.0,
        "hpScaleFactor": 1.8,
        "mana": 0.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 45.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 3
      },
      "traits": [
        "Noble",
        "Ranger"
      ],
      "ability": {
        "name": "Silver Bolts",
        "desc": "Innate: Vayne deals bonus true damage every third attack based on the enemy''s maximum health",
        "icon": "ASSETS/Characters/Vayne/HUD/Icons2D/Vayne_SilveredBolts.dds",
        "variables": [
          {
            "key": "PercentDamage",
            "values": [
              0.06,
              0.08,
              0.1,
              0.12,
              0.14,
              0.16,
              0.18
            ]
          }
        ]
      }
    },
    "25": {
      "name": "Morgana",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Morgana.dds",
      "stats": {
        "hp": 650.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 2
      },
      "traits": [
        "Demon",
        "Sorcerer"
      ],
      "ability": {
        "name": "Soul Shackles",
        "desc": "Morgana fires chains to nearby enemies, dealing damage and stunning after a short delay if they are still nearby",
        "icon": "ASSETS/Characters/Morgana/HUD/Icons2D/FallenAngel_Purgatory.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              225.0,
              300.0,
              375.0,
              450.0,
              525.0,
              600.0,
              675.0
            ]
          },
          {
            "key": "ChainDuration",
            "values": [
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          },
          {
            "key": "StunDuration",
            "values": [
              0.0,
              2.0,
              4.0,
              6.0,
              8.0,
              10.0,
              12.0
            ]
          },
          {
            "key": "SlowPercent",
            "values": [
              20.0,
              20.0,
              20.0,
              20.0,
              20.0,
              20.0,
              20.0
            ]
          },
          {
            "key": "CanCastRange",
            "values": [
              575.0,
              575.0,
              575.0,
              575.0,
              575.0,
              575.0,
              575.0
            ]
          }
        ]
      }
    },
    "136": {
      "name": "Aurelion Sol",
      "cost": 4,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_AurelionSol.dds",
      "stats": {
        "hp": 600.0,
        "hpScaleFactor": 1.8,
        "mana": 125.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 40.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 3
      },
      "traits": [
        "Dragon",
        "Sorcerer"
      ],
      "ability": {
        "name": "Voice of Light",
        "desc": "Aurelion Sol breathes a large blast of fire in a line, dealing damage to enemies",
        "icon": "ASSETS/Characters/AurelionSol/HUD/Icons2D/AurelionSol_R.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              50.0,
              250.0,
              450.0,
              650.0,
              850.0,
              1050.0,
              1250.0
            ]
          }
        ]
      }
    },
    "31": {
      "name": "Cho''Gath",
      "cost": 4,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Chogath.dds",
      "stats": {
        "hp": 1000.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 70.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.55,
        "range": 1
      },
      "traits": [
        "Void",
        "Brawler"
      ],
      "ability": {
        "name": "Rupture",
        "desc": "Cho''gath ruptures an area, stunning and damaging enemies inside of it",
        "icon": "ASSETS/Characters/Chogath/HUD/Icons2D/GreenTerror_SpikeSlam.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              0.0,
              200.0,
              400.0,
              600.0,
              800.0,
              1000.0,
              1200.0
            ]
          },
          {
            "key": "KnockDuration",
            "values": [
              1.0,
              1.5,
              2.0,
              2.5,
              3.0,
              3.5,
              4.0
            ]
          },
          {
            "key": "RuptureDelay",
            "values": [
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5
            ]
          }
        ]
      }
    },
    "63": {
      "name": "Brand",
      "cost": 4,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Brand.dds",
      "stats": {
        "hp": 700.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 60.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 3
      },
      "traits": [
        "Demon",
        "Elementalist"
      ],
      "ability": {
        "name": "Pyroclasm",
        "desc": "Brand launches a bouncing fireball, damaging enemies hit",
        "icon": "ASSETS/Characters/Brand/HUD/Icons2D/BrandR.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              25.0,
              175.0,
              325.0,
              475.0,
              625.0,
              775.0,
              925.0
            ]
          },
          {
            "key": "MaxBounces",
            "values": [
              4.0,
              4.0,
              6.0,
              20.0,
              20.0,
              20.0,
              20.0
            ]
          }
        ]
      }
    },
    "201": {
      "name": "Braum",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Braum.dds",
      "stats": {
        "hp": 750.0,
        "hpScaleFactor": 1.8,
        "mana": 50.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 40.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 1
      },
      "traits": [
        "Glacial",
        "Guardian"
      ],
      "ability": {
        "name": "Unbreakable",
        "desc": "Braum gains a barrier that blocks incoming damage",
        "icon": "ASSETS/Characters/Braum/HUD/Icons2D/Braum_E.dds",
        "variables": [
          {
            "key": "ShieldDR",
            "values": [
              60.0,
              70.0,
              80.0,
              90.0,
              100.0,
              110.0,
              120.0
            ]
          },
          {
            "key": "ShieldDuration",
            "values": [
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0
            ]
          }
        ]
      }
    },
    "236": {
      "name": "Lucian",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Lucian.dds",
      "stats": {
        "hp": 600.0,
        "hpScaleFactor": 1.8,
        "mana": 35.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 65.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 3
      },
      "traits": [
        "Noble",
        "Gunslinger"
      ],
      "ability": {
        "name": "Relentless Pursuit",
        "desc": "Lucian dashes away to safety and attacks an enemy twice, once with Attack Damage and once with Spell Damage",
        "icon": "ASSETS/Characters/Lucian/HUD/Icons2D/Lucian_E.dds",
        "variables": [
          {
            "key": "FirstShotRatio",
            "values": [
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0
            ]
          },
          {
            "key": "SecondShotDamage",
            "values": [
              50.0,
              150.0,
              250.0,
              350.0,
              450.0,
              550.0,
              650.0
            ]
          }
        ]
      }
    },
    "150": {
      "name": "Gnar",
      "cost": 4,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Gnar.dds",
      "stats": {
        "hp": 750.0,
        "hpScaleFactor": 1.8,
        "mana": 125.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 45.0,
        "damageScaleFactor": 1.25,
        "armor": 30.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.7,
        "range": 2
      },
      "traits": [
        "Wild",
        "Yordle",
        "Shapeshifter"
      ],
      "ability": {
        "name": "GNAR!",
        "desc": "Gnar transforms, gaining Health, Attack Damage and jumping behind the furthest enemy, damaging and stunning enemies nearby for @RCCDuration@s",
        "icon": "ASSETS/Characters/Gnar/HUD/Icons2D/GnarTransform.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              100.0,
              200.0,
              300.0,
              400.0,
              500.0,
              600.0,
              700.0
            ]
          },
          {
            "key": "RCCDuration",
            "values": [
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0
            ]
          },
          {
            "key": "RKnockbackDistance",
            "values": [
              500.0,
              500.0,
              500.0,
              500.0,
              500.0,
              500.0,
              500.0
            ]
          },
          {
            "key": "TransformDuration",
            "values": [
              60.0,
              60.0,
              60.0,
              60.0,
              60.0,
              60.0,
              60.0
            ]
          },
          {
            "key": "TransformHealth",
            "values": [
              0.0,
              300.0,
              600.0,
              900.0,
              1200.0,
              1500.0,
              1800.0
            ]
          },
          {
            "key": "TransformAD",
            "values": [
              0.0,
              30.0,
              60.0,
              90.0,
              120.0,
              150.0,
              180.0
            ]
          }
        ]
      }
    },
    "114": {
      "name": "Fiora",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Fiora.dds",
      "stats": {
        "hp": 400.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 40.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 1.0,
        "range": 1
      },
      "traits": [
        "Noble",
        "Blademaster"
      ],
      "ability": {
        "name": "Riposte",
        "desc": "Fiora becomes immune to damage and spells. After a short delay, she stuns and damages the closest enemy",
        "icon": "ASSETS/Characters/Fiora/HUD/Icons2D/Fiora_W.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              -50.0,
              100.0,
              250.0,
              400.0,
              550.0,
              700.0,
              850.0
            ]
          },
          {
            "key": "StunDuration",
            "values": [
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5
            ]
          },
          {
            "key": "BlockDuration",
            "values": [
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5
            ]
          }
        ]
      }
    },
    "45": {
      "name": "Veigar",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Veigar.dds",
      "stats": {
        "hp": 450.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 45.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.55,
        "range": 3
      },
      "traits": [
        "Yordle",
        "Sorcerer"
      ],
      "ability": {
        "name": "Primordial Burst",
        "desc": "Veigar blasts an enemy with magical energy, dealing damage. This spell instantly kills if the enemy is a lower star level than Veigar",
        "icon": "ASSETS/Characters/Veigar/HUD/Icons2D/VeigarPrimordialBurst.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              100.0,
              300.0,
              500.0,
              700.0,
              900.0,
              1100.0,
              1300.0
            ]
          },
          {
            "key": "LowerStarDamage",
            "values": [
              19999.0,
              19999.0,
              19999.0,
              19999.0,
              19999.0,
              19999.0,
              19999.0
            ]
          }
        ]
      }
    },
    "41": {
      "name": "Gangplank",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Gangplank.dds",
      "stats": {
        "hp": 700.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 55.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 1
      },
      "traits": [
        "Pirate",
        "Gunslinger",
        "Blademaster"
      ],
      "ability": {
        "name": "Powder Kegs",
        "desc": "Gangplank periodically creates barrels. On cast, Gangplank detonates the barrels, damaging nearby enemies. Applies on hit effects.",
        "icon": "ASSETS/Characters/Gangplank/HUD/Icons2D/Gangplank_E.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              75.0,
              200.0,
              325.0,
              450.0,
              575.0,
              700.0,
              825.0
            ]
          }
        ]
      }
    },
    "122": {
      "name": "Darius",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Darius.dds",
      "stats": {
        "hp": 600.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.5,
        "range": 1
      },
      "traits": [
        "Imperial",
        "Knight"
      ],
      "ability": {
        "name": "Decimate",
        "desc": "Darius swings his axe, damaging nearby enemies and healing himself based off enemies hit",
        "icon": "ASSETS/Characters/Darius/HUD/Icons2D/Darius_Icon_Decimate.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              100.0,
              150.0,
              200.0,
              250.0,
              300.0,
              350.0,
              400.0
            ]
          },
          {
            "key": "Heal",
            "values": [
              50.0,
              100.0,
              150.0,
              200.0,
              250.0,
              300.0,
              350.0
            ]
          }
        ]
      }
    },
    "55": {
      "name": "Katarina",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Katarina.dds",
      "stats": {
        "hp": 450.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 1
      },
      "traits": [
        "Imperial",
        "Assassin"
      ],
      "ability": {
        "name": "Death Lotus",
        "desc": "Katarina channels for @Duration@s and fires daggers at @NumberOfTargets@ nearby enemies, dealing damage and reducing healing",
        "icon": "ASSETS/Characters/Katarina/HUD/Icons2D/Katarina_R.dds",
        "variables": [
          {
            "key": "DamagePerTick",
            "values": [
              20.0,
              40.0,
              60.0,
              80.0,
              100.0,
              120.0,
              140.0
            ]
          },
          {
            "key": "TicksPerSecond",
            "values": [
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0
            ]
          },
          {
            "key": "Duration",
            "values": [
              2.5,
              2.5,
              2.5,
              2.5,
              2.5,
              2.5,
              2.5
            ]
          },
          {
            "key": "GrievousWoundsDuration",
            "values": [
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          },
          {
            "key": "NumberOfTargets",
            "values": [
              1.0,
              3.0,
              5.0,
              7.0,
              9.0,
              11.0,
              13.0
            ]
          }
        ]
      }
    },
    "86": {
      "name": "Garen",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Garen.dds",
      "stats": {
        "hp": 600.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 55.0,
        "damageScaleFactor": 1.25,
        "armor": 35.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.55,
        "range": 1
      },
      "traits": [
        "Noble",
        "Knight"
      ],
      "ability": {
        "name": "Judgement",
        "desc": "Garen spins his sword around for @SpinDuration@s, becoming immune to magic damage and dealing damage to nearby enemies",
        "icon": "ASSETS/Characters/Garen/HUD/Icons2D/Garen_E1.dds",
        "variables": [
          {
            "key": "SpinDuration",
            "values": [
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0
            ]
          },
          {
            "key": "ETotalTicks",
            "values": [
              9.0,
              9.0,
              9.0,
              9.0,
              9.0,
              9.0,
              9.0
            ]
          },
          {
            "key": "DamagePerTick",
            "values": [
              35.0,
              50.0,
              65.0,
              80.0,
              95.0,
              110.0,
              125.0
            ]
          }
        ]
      }
    },
    "127": {
      "name": "Lissandra",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Lissandra.dds",
      "stats": {
        "hp": 450.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 40.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 2
      },
      "traits": [
        "Glacial",
        "Elementalist"
      ],
      "ability": {
        "name": "Frozen Tomb",
        "desc": "Lissandra encases the target in ice for @EnemyStunDuration@s, dealing damage to nearby enemies. Below half HP, Lissandra instead encases herself, becoming untargetable for @SelfDuration@s",
        "icon": "ASSETS/Characters/Lissandra/HUD/Icons2D/Lissandra_R.dds",
        "variables": [
          {
            "key": "EnemyStunDuration",
            "values": [
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5
            ]
          },
          {
            "key": "SelfDuration",
            "values": [
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0
            ]
          },
          {
            "key": "Damage",
            "values": [
              100.0,
              150.0,
              200.0,
              250.0,
              300.0,
              350.0,
              400.0
            ]
          },
          {
            "key": "SlowDuration",
            "values": [
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          },
          {
            "key": "SlowAmount",
            "values": [
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0
            ]
          },
          {
            "key": "SlowFieldDuration",
            "values": [
              0.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          },
          {
            "key": "MaxHexRange",
            "values": [
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          },
          {
            "key": "SelfUltHealthPercent",
            "values": [
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5,
              0.5
            ]
          }
        ]
      }
    },
    "78": {
      "name": "Poppy",
      "cost": 3,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Poppy.dds",
      "stats": {
        "hp": 800.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 40.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.5,
        "range": 1
      },
      "traits": [
        "Yordle",
        "Knight"
      ],
      "ability": {
        "name": "Keeper''s Verdict",
        "desc": "Poppy swings her hammer, damaging and knocking up the closest enemy",
        "icon": "ASSETS/Characters/Poppy/HUD/Icons2D/Poppy_R.dds",
        "variables": [
          {
            "key": "DamagePart2",
            "values": [
              200.0,
              300.0,
              400.0,
              500.0,
              600.0,
              700.0,
              800.0
            ]
          },
          {
            "key": "KnockbackDurationPart2",
            "values": [
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0
            ]
          },
          {
            "key": "StunDuration",
            "values": [
              1.0,
              2.0,
              3.0,
              4.0,
              5.0,
              6.0,
              7.0
            ]
          },
          {
            "key": "PoppyAnimLockDuration",
            "values": [
              0.75,
              0.75,
              0.75,
              0.75,
              0.75,
              0.75,
              0.75
            ]
          },
          {
            "key": "NumberOfTargets",
            "values": [
              0.0,
              1.0,
              2.0,
              3.0,
              4.0,
              5.0,
              6.0
            ]
          }
        ]
      }
    },
    "19": {
      "name": "Warwick",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Warwick.dds",
      "stats": {
        "hp": 600.0,
        "hpScaleFactor": 1.8,
        "mana": 150.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 30.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.6,
        "range": 1
      },
      "traits": [
        "Wild",
        "Brawler"
      ],
      "ability": {
        "name": "Infinite Duress",
        "desc": "Warwick pounces onto the lowest health enemy, stunning them for @StunDuration@s, damaging them, and healing himself. Applies on-hit effects.",
        "icon": "ASSETS/Characters/Warwick/HUD/Icons2D/WarwickR.dds",
        "variables": [
          {
            "key": "Duration",
            "values": [
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5
            ]
          },
          {
            "key": "BaseDamage",
            "values": [
              75.0,
              150.0,
              225.0,
              300.0,
              375.0,
              450.0,
              525.0
            ]
          },
          {
            "key": "DashHexSpeed",
            "values": [
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0
            ]
          },
          {
            "key": "Hits",
            "values": [
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          }
        ]
      }
    },
    "10": {
      "name": "Kayle",
      "cost": 5,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Kayle.dds",
      "stats": {
        "hp": 800.0,
        "hpScaleFactor": 1.8,
        "mana": 100,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 70.0,
        "damageScaleFactor": 1.25,
        "armor": 35.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 1.1,
        "range": 3
      },
      "traits": [
        "Noble",
        "Knight"
      ],
      "ability": {
        "name": "Divine Judgement",
        "desc": "Kayle shields the weakest ally, making them immune to damage",
        "icon": "ASSETS/Characters/Kayle/HUD/Icons2D/Kayle_R.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              200.0,
              500.0,
              800.0,
              1100.0,
              1400.0,
              1700.0,
              2000.0
            ]
          },
          {
            "key": "ShieldDuration",
            "values": [
              1.0,
              2.0,
              3.0,
              4.0,
              5.0,
              6.0,
              7.0
            ]
          },
          {
            "key": "ExtraTargets",
            "values": [
              -1.0,
              0.0,
              1.0,
              2.0,
              3.0,
              4.0,
              5.0
            ]
          }
        ]
      }
    },
    "110": {
      "name": "Varus",
      "cost": 2,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Varus.dds",
      "stats": {
        "hp": 500.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 50.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.7,
        "range": 4
      },
      "traits": [
        "Demon",
        "Ranger"
      ],
      "ability": {
        "name": "Piercing Arrow",
        "desc": "Varus charges and fires an arrow, dealing damage to all enemies in a line",
        "icon": "ASSETS/Characters/Varus/HUD/Icons2D/VarusQ.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              200.0,
              400.0,
              600.0,
              800.0,
              1000.0,
              1200.0,
              1400.0
            ]
          },
          {
            "key": "HexRange",
            "values": [
              8.0,
              8.0,
              8.0,
              8.0,
              8.0,
              8.0,
              8.0
            ]
          }
        ]
      }
    },
    "157": {
      "name": "Yasuo",
      "cost": 5,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Yasuo.dds",
      "stats": {
        "hp": 700.0,
        "hpScaleFactor": 1.8,
        "mana": 25.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 65.0,
        "damageScaleFactor": 1.25,
        "armor": 35.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 1.0,
        "range": 1
      },
      "traits": [
        "Exile",
        "Blademaster"
      ],
      "ability": {
        "name": "Tempest Steel",
        "desc": "Yasuo stabs forward, damaging two enemies in a line. On third cast, Yasuo instead launches a tornado dealing damage and knocking up enemies in a line for @QKnockupDuration@s. Applies on hit effects",
        "icon": "ASSETS/Characters/Yasuo/HUD/Icons2D/Yasuo_Q1.dds",
        "variables": [
          {
            "key": "Damage",
            "values": [
              -50.0,
              150.0,
              350.0,
              550.0,
              750.0,
              950.0,
              1150.0
            ]
          },
          {
            "key": "QHexRange",
            "values": [
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0
            ]
          },
          {
            "key": "QEmpowerHexRange",
            "values": [
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0,
              6.0
            ]
          },
          {
            "key": "QCountForEmpower",
            "values": [
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0,
              2.0
            ]
          },
          {
            "key": "QWidth",
            "values": [
              75.0,
              75.0,
              75.0,
              75.0,
              75.0,
              75.0,
              75.0
            ]
          },
          {
            "key": "QKnockupDuration",
            "values": [
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5,
              1.5
            ]
          }
        ]
      }
    },
    "38": {
      "name": "Kassadin",
      "cost": 1,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Kassadin.dds",
      "stats": {
        "hp": 550.0,
        "hpScaleFactor": 1.8,
        "mana": 0.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 45.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.65,
        "range": 1
      },
      "traits": [
        "Void",
        "Sorcerer"
      ],
      "ability": {
        "name": "Nether Blade",
        "desc": "Kassadin''s attacks steal mana from enemies, converting it into a shield that lasts for @ShieldDuration@s",
        "icon": "ASSETS/Characters/Kassadin/HUD/Icons2D/Kassadin_W.dds",
        "variables": [
          {
            "key": "ShieldDuration",
            "values": [
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0,
              4.0
            ]
          },
          {
            "key": "ManaSteal",
            "values": [
              0.0,
              20.0,
              40.0,
              60.0,
              80.0,
              100.0,
              120.0
            ]
          }
        ]
      }
    },
    "21": {
      "name": "Miss Fortune",
      "cost": 5,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_MissFortune.dds",
      "stats": {
        "hp": 650.0,
        "hpScaleFactor": 1.8,
        "mana": 75.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 75.0,
        "damageScaleFactor": 1.25,
        "armor": 20.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.85,
        "range": 3
      },
      "traits": [
        "Pirate",
        "Gunslinger"
      ],
      "ability": {
        "name": "Bullet Time",
        "desc": "Miss Fortune channels for @ChannelDuration@s, firing several waves of bullets damaging enemies in a cone",
        "icon": "ASSETS/Characters/MissFortune/HUD/Icons2D/MissFortune_R.dds",
        "variables": [
          {
            "key": "Waves",
            "values": [
              14.0,
              14.0,
              14.0,
              14.0,
              14.0,
              14.0,
              14.0
            ]
          },
          {
            "key": "TotalDamage",
            "values": [
              350.0,
              800.0,
              1250.0,
              1700.0,
              2150.0,
              2600.0,
              3050.0
            ]
          },
          {
            "key": "ChannelDuration",
            "values": [
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0,
              3.0
            ]
          }
        ]
      }
    },
    "119": {
      "name": "Draven",
      "cost": 4,
      "splash": "ASSETS/UX/TFT/ChampionSplashes/TFT_Draven.dds",
      "stats": {
        "hp": 700.0,
        "hpScaleFactor": 1.8,
        "mana": 50.0,
        "initalMana": "unknown at this moment, sorry :(",
        "damage": 75.0,
        "damageScaleFactor": 1.25,
        "armor": 25.0,
        "magicResist": 20.0,
        "critMultiplier": 1.5,
        "critChance": 0.25,
        "attackSpeed": 0.75,
        "range": 3
      },
      "traits": [
        "Imperial",
        "Blademaster"
      ],
      "ability": {
        "name": "Spinning Axes",
        "desc": "Draven gains Spinning Axes, dealing bonus on-hit damage. Stacks up to two times",
        "icon": "ASSETS/Characters/Draven/HUD/Icons2D/Draven_SpinningAxe.dds",
        "variables": [
          {
            "key": "BuffDuration",
            "values": [
              5.75,
              5.75,
              5.75,
              5.75,
              5.75,
              5.75,
              5.75
            ]
          },
          {
            "key": "ADMult",
            "values": [
              1.0,
              1.5,
              2.0,
              2.5,
              3.0,
              3.5,
              4.0
            ]
          },
          {
            "key": "ASBuff",
            "values": [
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0,
              1.0
            ]
          }
        ]
      }
    }
  },
  "traits": [
    {
      "name": "Robot",
      "desc": "(@MinUnits@) Robots start combat at full mana",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Robot.dds",
      "effects": [
        {
          "minUnits": 1,
          "vars": []
        }
      ]
    },
    {
      "name": "Glacial",
      "desc": "Glacial attacks gain a chance to stun enemies for @StunDuration@s<br><br><expandRow>(@MinUnits@) @ProcPercent@% Chance to Stun</expandRow><br>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Glacial.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "ProcPercent",
              "value": 20.0
            },
            {
              "name": "StunDuration",
              "value": 2.0
            }
          ]
        },
        {
          "minUnits": 4,
          "vars": [
            {
              "name": "ProcPercent",
              "value": 30.0
            },
            {
              "name": "StunDuration",
              "value": 2.0
            }
          ]
        },
        {
          "minUnits": 6,
          "vars": [
            {
              "name": "ProcPercent",
              "value": 45.0
            },
            {
              "name": "StunDuration",
              "value": 2.0
            }
          ]
        }
      ]
    },
    {
      "name": "Knight",
      "desc": "Knights block damage from basic attacks.<br><br><expandRow>(@MinUnits@) @BlockAmount@ Damage Blocked</expandRow>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Knight.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "BlockAmount",
              "value": 20.0
            }
          ]
        },
        {
          "minUnits": 4,
          "vars": [
            {
              "name": "BlockAmount",
              "value": 40.0
            }
          ]
        },
        {
          "minUnits": 6,
          "vars": [
            {
              "name": "BlockAmount",
              "value": 80.0
            }
          ]
        }
      ]
    },
    {
      "name": "Noble",
      "desc": "Gain +@Armor@ Armor and heal @Heal@ health on-hit<br><br><row>(@MinUnits@) 1 Random Ally</row><br><row>(@MinUnits@) All Allies</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Noble.dds",
      "effects": [
        {
          "minUnits": 3,
          "vars": [
            {
              "name": "Armor",
              "value": 100.0
            },
            {
              "name": "Heal",
              "value": 35.0
            }
          ]
        },
        {
          "minUnits": 6,
          "vars": [
            {
              "name": "Armor",
              "value": 100.0
            },
            {
              "name": "Heal",
              "value": 35.0
            }
          ]
        }
      ]
    },
    {
      "name": "Exile",
      "desc": "<row>(@MinUnits@) If an Exile has no adjacent allies at the start of combat, they gain a shield equal to @ShieldPercent@% of their maximum Health</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Exile.dds",
      "effects": [
        {
          "minUnits": 1,
          "vars": [
            {
              "name": "ShieldPercent",
              "value": 100.0
            }
          ]
        }
      ]
    },
    {
      "name": "Elementalist",
      "desc": "Innate: Elementalists gain double mana from attacks<br><br><row>(@MinUnits@) At the start of combat, summon a Golem</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Elementalist.dds",
      "effects": [
        {
          "minUnits": 3,
          "vars": [
            {
              "name": "32FED486",
              "value": null
            },
            {
              "name": "558229DF",
              "value": null
            },
            {
              "name": "13EFE61D",
              "value": null
            }
          ]
        }
      ]
    },
    {
      "name": "Demon",
      "desc": "Attacks from Demons have a chance to burn all of an enemy''s mana and deal true damage equal to mana burned<br><br><expandRow>(@MinUnits@) @ProcChance@% Chance to Mana Burn</expandRow><br>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Demon.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "ProcChance",
              "value": 35.0
            },
            {
              "name": "DamagePercent",
              "value": 100.0
            }
          ]
        },
        {
          "minUnits": 4,
          "vars": [
            {
              "name": "ProcChance",
              "value": 60.0
            },
            {
              "name": "DamagePercent",
              "value": 100.0
            }
          ]
        },
        {
          "minUnits": 6,
          "vars": [
            {
              "name": "ProcChance",
              "value": 85.0
            },
            {
              "name": "DamagePercent",
              "value": 100.0
            }
          ]
        }
      ]
    },
    {
      "name": "Shapeshifter",
      "desc": "Shapeshifters gain bonus maximum Health when they transform<br><br><expandRow>(@MinUnits@) @HPPercent@% Bonus Maximum Health</expandRow><br>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Shapeshifter.dds",
      "effects": [
        {
          "minUnits": 3,
          "vars": [
            {
              "name": "HPPercent",
              "value": 100.0
            }
          ]
        }
      ]
    },
    {
      "name": "Ninja",
      "desc": "The Ninja Trait is only active when you have *exactly* 1 or all 4 Ninjas<br><br><row>(@MinUnits@) Ninja gains +@ADPercent@% Attack Damage</row><br><row>(@MinUnits@) All Ninjas gain +@ADPercent@% Attack Damage</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Ninja.dds",
      "effects": [
        {
          "minUnits": 1,
          "vars": [
            {
              "name": "ADPercent",
              "value": 40.0
            }
          ]
        },
        {
          "minUnits": 4,
          "vars": [
            {
              "name": "ADPercent",
              "value": 80.0
            }
          ]
        }
      ]
    },
    {
      "name": "Dragon",
      "desc": "<row>(@MinUnits@) Dragons gain immunity to Magic Damage</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Dragon.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": []
        }
      ]
    },
    {
      "name": "Void",
      "desc": "<row>(@MinUnits@) All ally basic attacks ignore @PercentArmorPen@% of the enemy''s Armor</row><br>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Void.dds",
      "effects": [
        {
          "minUnits": 3,
          "vars": [
            {
              "name": "PercentArmorPen",
              "value": 50.0
            }
          ]
        }
      ]
    },
    {
      "name": "Sorcerer",
      "desc": "Innate: Sorcerers gain double mana from attacks<br><br>All Allies have increased Spell Power<br><br><expandRow>(@MinUnits@) +@AP@% Spell Power</expandRow><br>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Sorcerer.dds",
      "effects": [
        {
          "minUnits": 3,
          "vars": [
            {
              "name": "AP",
              "value": 35.0
            }
          ]
        },
        {
          "minUnits": 6,
          "vars": [
            {
              "name": "AP",
              "value": 100.0
            }
          ]
        }
      ]
    },
    {
      "name": "Wild",
      "desc": "Attacks generate stacks of Fury (stacks up to 5 times). Each stack of Fury gives @AttackSpeedPercent@ Attack Speed<br><br><row>(@MinUnits@) Wild Allies Only</row><br><row>(@MinUnits@) All Allies</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Wild.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "AttackSpeedPercent",
              "value": 8.0
            }
          ]
        },
        {
          "minUnits": 4,
          "vars": [
            {
              "name": "AttackSpeedPercent",
              "value": 8.0
            }
          ]
        }
      ]
    },
    {
      "name": "Guardian",
      "desc": "<row>(@MinUnits@) Trigger: At the start of combat, all Guardians and each of their adjacent allies gain +@Armor@ Armor. This Armor can stack.</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Guardian.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "Armor",
              "value": 40.0
            }
          ]
        }
      ]
    },
    {
      "name": "Brawler",
      "desc": "Brawlers gain bonus maximum health<br><br><expandRow>(@MinUnits@) @BonusHealth@ Bonus Health</expandRow><br>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Brawler.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "BonusHealth",
              "value": 300.0
            }
          ]
        },
        {
          "minUnits": 4,
          "vars": [
            {
              "name": "BonusHealth",
              "value": 700.0
            }
          ]
        }
      ]
    },
    {
      "name": "Ranger",
      "desc": "Rangers gain a chance to double their attack speed every @ProcRate@s for the next @ProcRate@s <br><br><expandRow>(@MinUnits@) @ProcPercent@% Chance to Double Attack Speed</expandRow><br>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Ranger.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "ProcPercent",
              "value": 25.0
            },
            {
              "name": "ASMultiplier",
              "value": 2.0
            },
            {
              "name": "ProcRate",
              "value": 3.0
            }
          ]
        },
        {
          "minUnits": 4,
          "vars": [
            {
              "name": "ProcPercent",
              "value": 65.0
            },
            {
              "name": "ASMultiplier",
              "value": 2.0
            },
            {
              "name": "ProcRate",
              "value": 3.0
            }
          ]
        }
      ]
    },
    {
      "name": "Imperial",
      "desc": "Gain Double Damage<br><br><row>(@MinUnits@) 1 Random Imperial</row><br><row>(@MinUnits@) All Imperials</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Imperial.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "DamageMultiplier",
              "value": 2.0
            }
          ]
        },
        {
          "minUnits": 4,
          "vars": [
            {
              "name": "DamageMultiplier",
              "value": 2.0
            }
          ]
        }
      ]
    },
    {
      "name": "Blademaster",
      "desc": "Blademaster attacks have a @ProcChance@% chance to trigger additional attacks on-hit<br><br><row>(@MinUnits@) One Additional Attack</row><br><row>(@MinUnits@) Two Additional Attacks</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Blademaster.dds",
      "effects": [
        {
          "minUnits": 3,
          "vars": [
            {
              "name": "ProcChance",
              "value": 45.0
            },
            {
              "name": "extraAttacks",
              "value": 1.0
            }
          ]
        },
        {
          "minUnits": 6,
          "vars": [
            {
              "name": "ProcChance",
              "value": 45.0
            },
            {
              "name": "extraAttacks",
              "value": 2.0
            }
          ]
        }
      ]
    },
    {
      "name": "Pirate",
      "desc": "<row>(@MinUnits@) At the end of combat against another player, gain up to 4 additional gold</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Pirate.dds",
      "effects": [
        {
          "minUnits": 3,
          "vars": []
        }
      ]
    },
    {
      "name": "Gunslinger",
      "desc": "Gunslinger attacks gain a @ProcPercent@%  to trigger additional attacks on-hit<br><br><row>(@MinUnits@) Attack another random enemy</row><br><row>(@MinUnits@) Attack all other enemies in range</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Gunslinger.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "ProcPercent",
              "value": 50.0
            },
            {
              "name": "F768E185",
              "value": 1.0
            }
          ]
        },
        {
          "minUnits": 4,
          "vars": [
            {
              "name": "ProcPercent",
              "value": 50.0
            },
            {
              "name": "F768E185",
              "value": 2.0
            }
          ]
        }
      ]
    },
    {
      "name": "Phantom",
      "desc": "<row>(@MinUnits@) At the start of combat, curse a random enemy and set their HP to @HPToSet@</row>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Phantom.dds",
      "effects": [
        {
          "minUnits": 2,
          "vars": [
            {
              "name": "HPToSet",
              "value": 100.0
            }
          ]
        }
      ]
    },
    {
      "name": "Assassin",
      "desc": "Innate: At the start of combat, Assassins leap to the farthest enemy<br><br>Assassins gain bonus Critical Strike Damage<br><br><expandRow>(@MinUnits@) +@CritAmpPercent@% Critical Strike Damage</expandRow><br>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Assassin.dds",
      "effects": [
        {
          "minUnits": 3,
          "vars": [
            {
              "name": "CritAmpPercent",
              "value": 150.0
            }
          ]
        },
        {
          "minUnits": 6,
          "vars": [
            {
              "name": "CritAmpPercent",
              "value": 350.0
            }
          ]
        }
      ]
    },
    {
      "name": "Yordle",
      "desc": "Yordles gain a chance to dodge enemy attacks<br><br><expandRow>(@MinUnits@) @MissPercent@% Chance to Dodge</expandRow><br>",
      "icon": "ASSETS/UX/TraitIcons/Trait_Icon_Yordle.dds",
      "effects": [
        {
          "minUnits": 3,
          "vars": [
            {
              "name": "MissPercent",
              "value": 25.0
            }
          ]
        },
        {
          "minUnits": 6,
          "vars": [
            {
              "name": "MissPercent",
              "value": 60.0
            }
          ]
        }
      ]
    }
  ],
  "items": {
    "7": {
      "name": "Giant''s Belt",
      "desc": " +@Health@ Health",
      "icon": "ASSETS/Maps/Particles/TFT/Icon_GiantsBelt.TFT.dds",
      "from": [],
      "effects": [
        {
          "name": "Health",
          "value": 200.0
        }
      ]
    },
    "57": {
      "name": "Red Buff",
      "desc": "Attacks deal @BurnPercent@% of the enemy''s maximum Health as burn damage over @BurnDuration@s and prevent healing",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_RedBuff.TFT.dds",
      "from": [
        "5",
        "7"
      ],
      "effects": [
        {
          "name": "BurnPercent",
          "value": 13.0
        },
        {
          "name": "BurnDuration",
          "value": 5.0
        },
        {
          "name": "6DF27940",
          "value": 1.0
        },
        {
          "name": "MonsterCap",
          "value": 100.0
        }
      ]
    },
    "27": {
      "name": "Titanic Hydra",
      "desc": "Attacks deal @MaxHealth@% of the wearer''s max Health as splash damage",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_TitanicHydra.TFT.dds",
      "from": [
        "2",
        "7"
      ],
      "effects": [
        {
          "name": "MaxHealth",
          "value": 10.0
        }
      ]
    },
    "35": {
      "name": "Locket of the Iron Solari",
      "desc": "On start of combat, all adjacent allies gain a shield of @ShieldValue@",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_LocketOfTheIronSolari.TFT.dds",
      "from": [
        "3",
        "5"
      ],
      "effects": [
        {
          "name": "ShieldValue",
          "value": 300.0
        }
      ]
    },
    "24": {
      "name": "Statikk Shiv",
      "desc": "Every 3rd attack deals @Damage@ splash magical damage",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_StatikkShiv.TFT.dds",
      "from": [
        "2",
        "4"
      ],
      "effects": [
        {
          "name": "Damage",
          "value": 100.0
        },
        {
          "name": "337A0CCA",
          "value": 3.0
        }
      ]
    },
    "44": {
      "name": "Seraph''s Embrace",
      "desc": "Wearer regains @ManaRestore@ mana after spellcast",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_SeraphsEmbrace.TFT.dds",
      "from": [
        "4",
        "4"
      ],
      "effects": [
        {
          "name": "ManaRestore",
          "value": 20.0
        }
      ]
    },
    "18": {
      "name": "Youmuu''s Ghostblade",
      "desc": "Extra %i:scaleAD% +@AD@<br>Wearer is also an Assassin",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_YoumuusGhostblade.TFT.dds",
      "from": [
        "1",
        "8"
      ],
      "effects": [
        {
          "name": "AD",
          "value": 20.0
        }
      ]
    },
    "17": {
      "name": "Zeke''s Herald",
      "desc": "At the start of combat,  allies within the same row gain +@AttackSpeed@% Attack Speed for the rest of combat",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_ZekesHerald.TFT.dds",
      "from": [
        "1",
        "7"
      ],
      "effects": [
        {
          "name": "AttackSpeed",
          "value": 15.0
        }
      ]
    },
    "37": {
      "name": "Morellonomicon",
      "desc": "Spells deal burn damage equal to @BurnPercent@% of the enemy''s maximum health over @BurnDuration@s and prevent healing",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Morellonomicon.TFT.dds",
      "from": [
        "3",
        "7"
      ],
      "effects": [
        {
          "name": "BurnPercent",
          "value": 15.0
        },
        {
          "name": "6DF27940",
          "value": 1.0
        },
        {
          "name": "MonsterCap",
          "value": 100.0
        },
        {
          "name": "BurnDuration",
          "value": 5.0
        }
      ]
    },
    "13": {
      "name": "Hextech Gunblade",
      "desc": "Heal for @OmniVamp@% of all damage dealt",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_HextechGunblade.TFT.dds",
      "from": [
        "1",
        "3"
      ],
      "effects": [
        {
          "name": "OmniVamp",
          "value": 33.0
        }
      ]
    },
    "46": {
      "name": "Hush",
      "desc": "Attacks on-hit have a high chance to silence, preventing the enemy from casting spells for @SilenceDuration@s",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Hush.TFT.dds",
      "from": [
        "4",
        "6"
      ],
      "effects": [
        {
          "name": "2275757B",
          "value": 50.0
        },
        {
          "name": "SilenceDuration",
          "value": 5.0
        }
      ]
    },
    "8": {
      "name": "Spatula",
      "desc": "It must do <i>something</i>...",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Spatula.TFT.dds",
      "from": [],
      "effects": [
        {
          "name": "FE9818EF",
          "value": 5.0
        }
      ]
    },
    "11": {
      "name": "Infinity Edge",
      "desc": "Critical Strikes deal +@CriticalStrikeAmp@% damage",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_InfinityEdge.TFT.dds",
      "from": [
        "1",
        "1"
      ],
      "effects": [
        {
          "name": "CriticalStrikeAmp",
          "value": 100.0
        }
      ]
    },
    "14": {
      "name": "Spear of Shojin",
      "desc": "After casting, wearer gains @ManaPercentRestore@% of its max Mana per attack",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_SpearOfShojin.TFT.dds",
      "from": [
        "1",
        "4"
      ],
      "effects": [
        {
          "name": "ManaPercentRestore",
          "value": 15.0
        }
      ]
    },
    "34": {
      "name": "Luden''s Echo",
      "desc": "Spells deal @Damage@ splash damage on hit",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_LudensEcho.TFT.dds",
      "from": [
        "3",
        "4"
      ],
      "effects": [
        {
          "name": "Damage",
          "value": 200.0
        }
      ]
    },
    "66": {
      "name": "Dragon''s Claw",
      "desc": "Gain @MagicReduction@% resistance to magic damage",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_DragonsClaw.TFT.dds",
      "from": [
        "6",
        "6"
      ],
      "effects": [
        {
          "name": "MagicReduction",
          "value": 83.0
        }
      ]
    },
    "23": {
      "name": "Guinsoo''s Rageblade",
      "desc": "Attacks grant @AttackSpeedPerStack@% Attack Speed.  Stacks infinitely",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_GuinsoosRageblade.TFT.dds",
      "from": [
        "2",
        "3"
      ],
      "effects": [
        {
          "name": "AttackSpeedPerStack",
          "value": 4.0
        }
      ]
    },
    "541": {
      "name": "Mortal Reminder",
      "desc": "TFT_item_description_MortalReminder",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_MortalReminder.TFT.dds",
      "from": [],
      "effects": []
    },
    "78": {
      "name": "Frozen Mallet",
      "desc": "Extra %i:scaleHealth% +@Health@<br>Wearer is also a Glacial",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_FrozenMallet.TFT.dds",
      "from": [
        "8",
        "7"
      ],
      "effects": [
        {
          "name": "Health",
          "value": 200.0
        }
      ]
    },
    "56": {
      "name": "Sword Breaker",
      "desc": "Attacks have a chance to disarm for @DisarmDuration@s",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_SwordBreaker.TFT.dds",
      "from": [
        "5",
        "6"
      ],
      "effects": [
        {
          "name": "2426EA7E",
          "value": 25.0
        },
        {
          "name": "DisarmDuration",
          "value": 4.0
        }
      ]
    },
    "68": {
      "name": "Runaan''s Hurricane",
      "desc": "Summon a spirit who mirrors your attacks, dealing @MultiplierForDamage@% Damage",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_RunaansHurricane.TFT.dds",
      "from": [
        "6",
        "8"
      ],
      "effects": [
        {
          "name": "AdditionalTargets",
          "value": 1.0
        },
        {
          "name": "276BA2C8",
          "value": 25.0
        }
      ]
    },
    "1": {
      "name": "B. F. Sword",
      "desc": " +@AD@ Attack Damage",
      "icon": "ASSETS/Maps/Particles/TFT/Icon_BFSword.TFT.dds",
      "from": [],
      "effects": [
        {
          "name": "AD",
          "value": 20.0
        }
      ]
    },
    "67": {
      "name": "Zephyr",
      "desc": "On start of combat, banish an enemy for @BanishDuration@ seconds",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Zephyr.TFT.dds",
      "from": [
        "6",
        "7"
      ],
      "effects": [
        {
          "name": "BanishDuration",
          "value": 5.0
        }
      ]
    },
    "58": {
      "name": "Knight''s Vow",
      "desc": "Extra %i:scaleArmor% +@Armor@<br>Wearer is also a Knight",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_KnightsVow.TFT.dds",
      "from": [
        "5",
        "8"
      ],
      "effects": [
        {
          "name": "Armor",
          "value": 20.0
        }
      ]
    },
    "100": {
      "name": "Spatula",
      "desc": "It must do <i>something</i>...",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Unknown.TFT.dds",
      "from": [],
      "effects": []
    },
    "5": {
      "name": "Chain Vest",
      "desc": "+@Armor@ Armor",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_ChainVest.TFT.dds",
      "from": [],
      "effects": [
        {
          "name": "Armor",
          "value": 20.0
        }
      ]
    },
    "38": {
      "name": "Yuumi",
      "desc": "Extra %i:scaleAP% +@AP@<br>Wearer is also a Sorcerer",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Yuumi.TFT.dds",
      "from": [
        "3",
        "8"
      ],
      "effects": [
        {
          "name": "AP",
          "value": 20.0
        }
      ]
    },
    "36": {
      "name": "Ionic Spark",
      "desc": "Whenever an enemy casts a spell, they take @Damage@ damage",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_IonicSpark.TFT.dds",
      "from": [
        "3",
        "6"
      ],
      "effects": [
        {
          "name": "Damage",
          "value": 200.0
        }
      ]
    },
    "16": {
      "name": "The Bloodthirster",
      "desc": "Attacks heal for @Lifesteal@% of damage",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Bloodthirster.TFT.dds",
      "from": [
        "1",
        "6"
      ],
      "effects": [
        {
          "name": "Lifesteal",
          "value": 50.0
        }
      ]
    },
    "77": {
      "name": "Warmog''s Armor",
      "desc": "Wearer regenerates @HealthRegen@% max Health per second",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_WarmogsArmor.TFT.dds",
      "from": [
        "7",
        "7"
      ],
      "effects": [
        {
          "name": "HealthRegen",
          "value": 6.0
        }
      ]
    },
    "2": {
      "name": "Recurve Bow",
      "desc": " +@AS@% Attack Speed",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_RecurveBow.TFT.dds",
      "from": [],
      "effects": [
        {
          "name": "AS",
          "value": 20.0
        }
      ]
    },
    "88": {
      "name": "Force of Nature",
      "desc": " Gain +@MaxArmySizeIncrease@ team size",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_ForceOfNature.TFT.dds",
      "from": [
        "8",
        "8"
      ],
      "effects": [
        {
          "name": "MaxArmySizeIncrease",
          "value": 1.0
        }
      ]
    },
    "22": {
      "name": "Rapid Firecannon",
      "desc": "Wearer''s attacks cannot be dodged. Attack Range is doubled",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_RapidFirecannon.TFT.dds",
      "from": [
        "2",
        "2"
      ],
      "effects": []
    },
    "47": {
      "name": "Redemption",
      "desc": "On crossing below @HPThreshold@% Health, heal all nearby allies for @HealthRestore@ Health",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Redemption.TFT.dds",
      "from": [
        "4",
        "7"
      ],
      "effects": [
        {
          "name": "HealthRestore",
          "value": 1000.0
        },
        {
          "name": "HPThreshold",
          "value": 25.0
        },
        {
          "name": "5FFBBD48",
          "value": 50.0
        },
        {
          "name": "1E0630E9",
          "value": 25.0
        }
      ]
    },
    "26": {
      "name": "Cursed Blade",
      "desc": "Attacks on-hit have a low chance to reduce enemy''s star level by 1 for the rest of combat",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_CursedBlade.TFT.dds",
      "from": [
        "2",
        "6"
      ],
      "effects": [
        {
          "name": "A56E0A21",
          "value": 25.0
        }
      ]
    },
    "55": {
      "name": "Thornmail",
      "desc": "Reflect @DamageReflect@% of damage mitigated from attacks",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Thornmail.TFT.dds",
      "from": [
        "5",
        "5"
      ],
      "effects": [
        {
          "name": "DamageReflect",
          "value": 100.0
        }
      ]
    },
    "3": {
      "name": "Needlessly Large Rod",
      "desc": " +@AP@% Spell Power",
      "icon": "ASSETS/Maps/Particles/TFT/Icon_NeedlesslyLargeRod.TFT.dds",
      "from": [],
      "effects": [
        {
          "name": "AP",
          "value": 20.0
        }
      ]
    },
    "25": {
      "name": "Phantom Dancer",
      "desc": "Wearer dodges all Critical Strikes",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_PhantomDancer.TFT.dds",
      "from": [
        "2",
        "5"
      ],
      "effects": []
    },
    "33": {
      "name": "Rabadon''s Deathcap",
      "desc": "Wearer''s Spell Power stat is amplified by @APPercentAmp@%",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_RabadonsDeathcap.TFT.dds",
      "from": [
        "3",
        "3"
      ],
      "effects": [
        {
          "name": "APPercentAmp",
          "value": 50.0
        }
      ]
    },
    "28": {
      "name": "Blade of the Ruined King",
      "desc": "Extra %i:scaleAS% +@AS@<br>Wearer is also a Blademaster",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_BladeOfTheRuinedKing.TFT.dds",
      "from": [
        "2",
        "8"
      ],
      "effects": [
        {
          "name": "AS",
          "value": 20.0
        }
      ]
    },
    "15": {
      "name": "Guardian Angel",
      "desc": "Wearer revives with @HealthRestore@ Health",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_GuardianAngel.TFT.dds",
      "from": [
        "1",
        "5"
      ],
      "effects": [
        {
          "name": "HealthRestore",
          "value": 1000.0
        }
      ]
    },
    "48": {
      "name": "Darkin",
      "desc": "Extra %i:scaleMana% +@Mana@<br>Wearer is also a Demon",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_Darkin.TFT.dds",
      "from": [
        "4",
        "8"
      ],
      "effects": [
        {
          "name": "Mana",
          "value": 20.0
        }
      ]
    },
    "45": {
      "name": "Frozen Heart",
      "desc": "Adjacent enemies lose @AttackSpeedSlow@% Attack Speed",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_FrozenHeart.TFT.dds",
      "from": [
        "4",
        "5"
      ],
      "effects": [
        {
          "name": "AttackSpeedSlow",
          "value": 25.0
        }
      ]
    },
    "12": {
      "name": "Sword of the Divine",
      "desc": "Each second, the wearer has a @ChanceToProc@% chance to gain 100% Critical Strike",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_SwordOfTheDivine.TFT.dds",
      "from": [
        "1",
        "2"
      ],
      "effects": [
        {
          "name": "ChanceToProc",
          "value": 5.0
        }
      ]
    },
    "6": {
      "name": "Negatron Cloak",
      "desc": "+@MagicResist@ Magic Resist",
      "icon": "ASSETS/Maps/Particles/TFT/TFT_Item_NegatronCloak.TFT.dds",
      "from": [],
      "effects": [
        {
          "name": "MagicResist",
          "value": 20.0
        }
      ]
    },
    "4": {
      "name": "Tear of the Goddess",
      "desc": " +@Mana@ Mana",
      "icon": "ASSETS/Maps/Particles/TFT/Icon_TearOfTheGoddess.TFT.dds",
      "from": [],
      "effects": [
        {
          "name": "Mana",
          "value": 20.0
        }
      ]
    }
  }
}','9.14a');