THEME_PARK_IMPERIAL_BADGE = 106


kaja_orzee_missions =
  {
    {
      missionType = "escort",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_escort_moff", planetName = "lok", npcName = "an Imperial Moff" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 7500 }
      }
    },
    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_rebel_sympathizer", planetName = "lok", npcName = "a New Republic Sympathizer" }
      },
      secondarySpawns =
      {
        { npcTemplate = "rebel_corporal", planetName = "lok", npcName = "" },
        { npcTemplate = "rebel_corporal", planetName = "lok", npcName = "" }
      },
      itemSpawns =
      {
        { itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Documents" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 15000 }
      }
    },

    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_assassin", planetName = "lok", npcName = "a New Republic Assassin" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 22500 }
      }
    },

    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_assassin", planetName = "lok", npcName = "a Droid Programmer" },
        { npcTemplate = "theme_park_imperial_assassin", planetName = "lok", npcName = "a Droid Programmer" }
      },
      secondarySpawns =
      {
        { npcTemplate = "rebel_corporal", planetName = "lok", npcName = "" },
        { npcTemplate = "rebel_corporal", planetName = "lok", npcName = "" },
        { npcTemplate = "rebel_corporal", planetName = "lok", npcName = "" }
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 30000 }
      }
    },
    {
      missionType = "escort",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_escort_droid", planetName = "lok", npcName = "RA-7" }
      },
      secondarySpawns =
      {

      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "faction", faction = "imperial", amount = 750 },
        { rewardType = "credits", amount = 30000 },
        { rewardType = "loot", lootGroup = "theme_park_reward_imperial_kaja"} ,       
      }
    }
  }

loam_redge_missions =
  {
    {
      missionType = "escort",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_escort_noble", planetName = "lok", npcName = "a Noble" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 3750 }
      }
    },

    {
      missionType = "escort",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_escort_rebel_leader", planetName = "lok", npcName = "random" }
      },
      secondarySpawns =
      {
        { npcTemplate = "rebel_resistance_dissident", planetName = "lok", npcName = "" },
        { npcTemplate = "rebel_resistance_dissident", planetName = "lok", npcName = "" },
        { npcTemplate = "rebel_resistance_dissident", planetName = "lok", npcName = "" }
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 4500 }
      }
    },
    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_slicer", planetName = "lok", npcName = "a Slicer" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {
        { itemTemplate = "object/tangible/loot/misc/damaged_datapad.iff", itemName = "Datapad" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 5250 }
      }
    },

    {
      missionType = "escort",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_escort", planetName = "lok", npcName = "a Slicer" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "faction", faction = "imperial", amount = 1250 },
        { rewardType = "loot", lootGroup = "theme_park_reward_imperial_redge"}
      }
    }
  }

lord_hethrir_missions =
  {
    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_counterfeiter", planetName = "lok", npcName = "a Counterfeiter" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {
        { itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Holodisc" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 6000 }
      }
    },

    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_alderaanian_leader", planetName = "lok", npcName = "random" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {
        { itemTemplate = "object/tangible/loot/misc/damaged_datapad.iff", itemName = "Datapad" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 6750 }
      }
    },
    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_rebels_father", planetName = "lok", npcName = "random" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 7500 }
      }
    },

    {
      missionType = "deliver",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_escort", planetName = "lok", npcName = "random" }
      },
      secondarySpawns =
      {
      },
      itemSpawns =
      {
        { itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Holodisc" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 8250 }
      }
    },
    {
      missionType = "escort",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_escort_rebel", planetName = "lok", npcName = "random" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "faction", faction = "imperial", amount = 1750 },
        { rewardType = "loot", lootGroup = "theme_park_reward_imperial_hethrir"}
      }
    },
  }

veers_missions =
  {

    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_rebel_trooper", planetName = "lok", npcName = "a New Republic Intelligence Agent" },
        { npcTemplate = "thug", planetName = "lok", npcName = "a Hired Thug" },
        { npcTemplate = "borvos_thug", planetName = "lok", npcName = "a Hired Thug" },
      },
      secondarySpawns = {
      },
      itemSpawns =
      {
        { itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Encrypted Infodisk" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 1275 }
      }
    },
    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "rebel_trooper", planetName = "lok", npcName = "a New Republic Lieutenant" },
        { npcTemplate = "thug", planetName = "lok", npcName = "a Militiaman" },
        { npcTemplate = "thug", planetName = "lok", npcName = "a Militiaman" },
      },
      secondarySpawns = {
      },
      itemSpawns =
      {
      },
      rewards =
      {
        { rewardType = "credits", amount = 1350 }
      }
    },
    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_rebel_trooper", planetName = "lok", npcName = "a Senior New Republic Intelligence Agent"},
      },
      secondarySpawns = {
        { npcTemplate = "thug", planetName = "lok", npcName = "a Hired Thug" },
        { npcTemplate = "thug", planetName = "lok", npcName = "a Hired Thug" },
      },
      itemSpawns =
      {
        { itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Datadisk" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 14250 },
        { rewardType = "faction", faction = "imperial", amount = 275 },
        { rewardType = "loot", lootGroup = "theme_park_reward_imperial_veers"}
      }
    },
  }

palpatine_missions =
  {

    {
      missionType = "escort",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_escort", planetName = "lok", npcName = "a Courier" }
      },
      secondarySpawns =
      {
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 1575 }
      }
    }
  }

darth_vader_missions =
  {
    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_haro_whitesun", planetName = "lok", npcName = "an Imperial Courier" },
      },
      secondarySpawns = {
      },
      itemSpawns =
      {
        { itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Information" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 20250 }
      }
    },
    {
      missionType = "assassinate",
      planetName = "lok",
      primarySpawns =
      {
        { npcTemplate = "theme_park_imperial_kayderr", planetName = "lok", npcName = "a Force Sensitive" }
      },
      secondarySpawns = {
      },
      itemSpawns =
      {
        { itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Information" }
      },
      rewards =
      {
        { rewardType = "faction", faction = "imperial", amount = 425 },
        { rewardType = "credits", amount = 2400 },
        { rewardType = "loot",  lootGroup = "theme_park_reward_imperial_vader" },
        { rewardType = "badge", badge = THEME_PARK_IMPERIAL_BADGE }
      }
    }
  }

npcMapImperial =
  {
    {
      spawnData = { planetName = "lok", npcTemplate = "kaja_orzee", x = 0.0, z = 1.0, y = 14.5, direction = 0, cellID = 8615419, position = STAND },
      worldPosition = { x = -1856, y = -3084 },
      npcNumber = 1,
      stfFile = "@theme_park_imperial/kaja_orzee",
      stfWarning = "not_imperial",
      missions = kaja_orzee_missions
    },
    {
      spawnData = { planetName = "lok", npcTemplate = "loam_redge", x = -19.2, z = 1.0, y = 17.9, direction = 180, cellID = 8615422, position = STAND },
      worldPosition = { x = -1853, y = -3065 },
      npcNumber = 2,
      stfFile = "@theme_park_imperial/loam_redge",
      stfWarning = "kaja_orzee",
      missions = loam_redge_missions
    },
    {
      spawnData = { planetName = "lok", npcTemplate = "lord_hethrir", x = 0.0, z = 2.0, y = 3.8, direction = 180, cellID = 8615420, position = STAND },
      worldPosition = { x = -1867, y = -3084 },
      npcNumber = 4,
      stfFile = "@theme_park_imperial/lord_hethrir",
      stfWarning = "loam_redge",
      missions = lord_hethrir_missions
    },
    {
      spawnData = { planetName = "lok", npcTemplate = "veers", x = -1847.9, z = 19, y = -3095.1, direction = 88, cellID = 0, position = STAND, mood = "conversation" },
      npcNumber = 8,
      stfFile = "@theme_park_imperial/veers",
      stfWarning = "lord_hethrir",
      missions = veers_missions
    },
    {
      spawnData = { planetName = "lok", npcTemplate = "randd", x = 3.0, z = 7.0, y = 1.3, direction = 180, cellID = 8615428, position = STAND },
      worldPosition = { x = -1870, y = -3087 },
      npcNumber = 16,
      stfFile = "@theme_park_imperial/emperor",
      stfWarning = "emperor",
      missions = palpatine_missions
    },
    {
      spawnData = { planetName = "lok", npcTemplate = "palpatine", x = -9.7, z = 1.0, y = -19.6, direction = 180, cellID = 8615426, position = STAND },
      worldPosition = { x = -1891, y = -3076 },
      npcNumber = 32,
      stfFile = "@theme_park_imperial/darth_vader",
      stfWarning = "vader",
      missions = darth_vader_missions
    },
    { 
      spawnData = { planetName = "lok", npcTemplate = "record_keeper_imperial", x = 0.1, z = 1, y = 12.5, direction = 180, cellID = 8615420, position = STAND }, 
      npcNumber = -1,  
      stfFile = "",               
      missions = {} 
    },    
  }

permissionMapImperial = {
  {
    planetName = "naboo",
    regionName = "emperors_retreat",
    permissions =
    {
      {
        cells = { 1418872, 1418873 },
        conditions =
        {
          { permissionType = "faction" }
        }
      },
      {
        cells = { 1418874, 1418875, 1418876, 1418877, 1418878, 1418879, 1418880, 1418881, 1418882, 1418883, 1418884, 1418885, 1418886 },
        conditions =
        {
          { permissionType = "missionState", mission = "theme_park_imperial", missionState = 1 },
          { permissionType = "faction" }
        }
      }
    }
  }
}

permissionMapImperialWarp = {
  { planetName = "naboo",  radius = 20,
    cells = { 1418874 },
    conditions =
    {
      { permissionType = "faction", faction = FACTIONIMPERIAL }
    },
    stfWarning = "not_imperial"
  },
}

ThemeParkImperial = ThemeParkLogic:new {
  numberOfActs = 1,
  npcMap = npcMapImperial,
  permissionMap = permissionMapImperial,
  className = "ThemeParkImperial",
  screenPlayState = "imperial_theme_park",
  missionDescriptionStf = "@theme_park_imperial/quest_details:imperial_retreat_",
  missionCompletionMessageStf = "@theme_park/messages:imperial_completion_message",
  faction = FACTIONIMPERIAL,
  planetName = "lok"
--warningMessageStf = "@theme_park_imperial/warning:"
}

registerScreenPlay("ThemeParkImperial", true)

theme_park_imperial_mission_giver_conv_handler = mission_giver_conv_handler:new {
  themePark = ThemeParkImperial
}
theme_park_imperial_mission_target_conv_handler = mission_target_conv_handler:new {
  themePark = ThemeParkImperial
}
