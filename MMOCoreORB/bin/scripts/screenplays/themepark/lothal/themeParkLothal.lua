THEME_PARK_LOTHAL_BADGE = 157


ryder_missions =
  {
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Lieutenant" }
      },
      secondarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Corporal" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Corporal" }
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 5000 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Lieutenant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" }
      },
      secondarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" }
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 15000 }
      }
    },
    {
      missionType = "escort",
      primarySpawns =
      {
        { npcTemplate = "theme_park_lothal_escort", planetName = "lothal", npcName = "A Lothal Brigade Commander" }
      },
      secondarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 30000 }      
      }
    }
  }


sabine_missions =
  {
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Captain" }
      },
      secondarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 5000 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "valarian_courier", planetName = "lothal", npcName = "a Lothal Brigade Major" }
      },
      secondarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
      },
      itemSpawns =
      {
        { itemTemplate = "object/tangible/loot/misc/ledger_s01.iff", itemName = "Datapad" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 15550 },
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Colonel" }
      },
      secondarySpawns = {},
      itemSpawns =
      {
        { itemTemplate = "object/tangible/loot/misc/ledger_s01.iff", itemName = "Datapad" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 15550 },           
      }
    }
  }

hera_missions =
  {
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "tatooine_mynock", planetName = "lothal", npcName = "a Mynock" }
      },
      secondarySpawns =
      {
        { npcTemplate = "tatooine_mynock", planetName = "lothal", npcName = "a Mynock" },
        { npcTemplate = "tatooine_mynock", planetName = "lothal", npcName = "a Mynock" },
      },
      itemSpawns = {
        {}
      },
      rewards =
      {
        { rewardType = "credits", amount = 16650 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Colonel" }
      },
      secondarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade Sergeant" },
      },
      itemSpawns = {
        { itemTemplate = "object/tangible/loot/misc/damaged_datapad.iff", itemName = "a Broken Datapad" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 17750 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "pirate", planetName = "lothal", npcName = "a Lothal Brigade General" }
      },
      secondarySpawns =
      {},
      itemSpawns = {
        { itemTemplate = "object/tangible/loot/misc/damaged_datapad.iff", itemName = "a Broken Datapad" }
      },
      rewards =
      {            
        { rewardType = "credits", amount = 18000 }
      }
    }
  }


ahsoka_missions =
  {
    {
      missionType = "escort",
      primarySpawns =
      {
        { npcTemplate = "theme_park_lothal_escort", planetName = "lothal", npcName = "a Lothal Brigade Commander" }
      },
      secondarySpawns =
      {
        { npcTemplate = "sith_shadow_mercenary", planetName = "lothal", npcName = "a Sith Shadow Mercenary" },
        { npcTemplate = "sith_shadow_outlaw", planetName = "lothal", npcName = "a Sith Shadow Outlaw" },
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 21350 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "sith_shadow_mercenary", planetName = "lothal", npcName = "a Sith Shadow Mercenary" }
      },
      secondarySpawns =
      {
        { npcTemplate = "sith_shadow_mercenary", planetName = "lothal", npcName = "a Sith Shadow Mercenary" },
        { npcTemplate = "sith_shadow_mercenary", planetName = "lothal", npcName = "a Sith Shadow Mercenary" },
        { npcTemplate = "sith_shadow_mercenary", planetName = "lothal", npcName = "a Sith Shadow Mercenary" },
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 42450 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "dark_adept", planetName = "lothal", npcName = "an Inquisitor" }
      },
      secondarySpawns =
      {
        { npcTemplate = "sith_shadow_thug", planetName = "lothal", npcName = "a Sith Shadow Thug" },
        { npcTemplate = "sith_shadow_thug", planetName = "lothal", npcName = "a Sith Shadow Thug" },
        { npcTemplate = "sith_shadow_thug", planetName = "lothal", npcName = "a Sith Shadow Thug" },
      },      
      rewards =
      {
        { rewardType = "loot", lootGroup = "crystal_ahsokas_purity"},
        { rewardType = "badge", badge = THEME_PARK_LOTHAL_BADGE },      
        { rewardType = "credits", amount = 32000 }
      }
    },
  }

npcMapLothal =
  {
    {
      spawnData = { planetName = "lothal", npcTemplate = "ryder_azadi", x = 35.0, z = 1.3, y = -2.5, direction = -101, cellID = 58000260, position = STAND },
      worldPosition = { x = -1057, y = -2992 },
      npcNumber = 1,
      stfFile = "@theme_park_lothal/ryder_azadi",
      missions = ryder_missions
    },
    {
      spawnData = { planetName = "lothal", npcTemplate = "sabine_wren", x = 383, z = 28, y = -3144, direction = -90, cellID = 0, position = STAND },
      worldPosition = { x = 383, y = -3144},
      npcNumber = 2,
      stfFile = "@theme_park_lothal/sabine_wren",
      missions = sabine_missions
    },
   -- Need to create Hera NPC
    {
      spawnData = { planetName = "lothal", npcTemplate = "hera_syndulla", x = -2797.8, z = 75.2, y = 7297.7, direction = -158, cellID = 0, position = STAND },
      worldPosition = { x = -2796, y = 7301 },
      npcNumber = 4,
      stfFile = "@theme_park_lothal/hera_syndulla",
      missions = hera_missions
    },
    {
      spawnData = { planetName = "lothal", npcTemplate = "ahsoka_tano", x = 104, z = 39.5, y = 4183.6, direction = -89, cellID = 0, position = STAND },
      worldPosition = { x = 104, y = 4183.6 },
      npcNumber = 8,
      stfFile = "@theme_park_lothal/ahsoka_tano",
      missions = ahsoka_missions
    },
    {
      spawnData = { planetName = "lothal", npcTemplate = "record_keeper_jabba", x =27.0, z =-0.9, y = -3.1, direction = -90, cellID = 0, position = STAND },
      npcNumber = -1,
      stfFile = "",
      missions = {}
    },

  }



ThemeParkLothal = ThemeParkLogic:new {
  numberOfActs = 1,
  npcMap = npcMapLothal, 
  className = "ThemeParkLothal",
  screenPlayState = "lothal_theme_park",
  distance = 850,
  genericGiver = false,
  missionDescriptionStf = "@theme_park_lothal/quest_details:lothal_",
  missionCompletionMessageStf = "@theme_park/messages:static_completion_message",
  planetName = "lothal"
}

registerScreenPlay("ThemeParkLothal", true)

theme_park_lothal_mission_giver_conv_handler = mission_giver_conv_handler:new {
  themePark = ThemeParkLothal
}
theme_park_lothal_mission_target_conv_handler = mission_target_conv_handler:new {
  themePark = ThemeParkLothal
}