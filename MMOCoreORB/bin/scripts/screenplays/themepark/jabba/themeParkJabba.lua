THEME_PARK_JABBA_BADGE = 105

buildingBarada =
  {
    type = "destructible",
    building = { template = "object/building/military/pirate_warehouse.iff", planet = "chandrila" },
    terminal = { template = "object/tangible/terminal/terminal_destructible_building.iff", vectorCellID = 3, x = 0, z = 0.3, y = -6.0 },
    childNpcs = {}
  }

reelo_missions =
  {
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "pirate", planetName = "chandrila", npcName = "a Spice Dealer" }
      },
      secondarySpawns =
      {
        { npcTemplate = "pirate", planetName = "chandrila", npcName = "a Hired Thug" },
        { npcTemplate = "pirate", planetName = "chandrila", npcName = "a Hired Thug" }
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
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" }
      },
      secondarySpawns =
      {
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" }
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
        { npcTemplate = "theme_park_jabba_escort", planetName = "chandrila", npcName = "random" }
      },
      secondarySpawns =
      {
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Hired Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Hired Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Hired Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Hired Thug" },
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "loot", lootGroup = "jabba_theme_park_reelo" },
        { rewardType = "loot", lootGroup = "jabba_theme_park_ree_yees" },
        { rewardType = "permission", permissionGroup = "jabba_palace1" },
        { rewardType = "faction", faction = "jabba", amount = 25 }
      }
    }
  }


ephant_mon_missions =
  {
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "black_sun_guard_themepark", planetName = "chandrila", npcName = "Black Sun Captain" }
      },
      secondarySpawns =
      {
        { npcTemplate = "black_sun_henchman_themepark", planetName = "chandrila", npcName = "Black Sun Henchman" },
        { npcTemplate = "black_sun_henchman_themepark", planetName = "chandrila", npcName = "Black Sun Henchman" },
        { npcTemplate = "black_sun_henchman_themepark", planetName = "chandrila", npcName = "Black Sun Henchman" },
        { npcTemplate = "black_sun_henchman_themepark", planetName = "chandrila", npcName = "Black Sun Henchman" },
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 50000 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "valarian_courier", planetName = "chandrila", npcName = "Mandalorian Courier" }
      },
      secondarySpawns =
      {
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Hired Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Hired Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Hired Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Hired Thug" },
      },
      itemSpawns =
      {
        { itemTemplate = "object/tangible/loot/misc/ledger_s01.iff", itemName = "Schematics" }
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
        { npcTemplate = "theme_park_jabba_sirad_far", planetName = "chandrila", npcName = "a Corporate Goon" }
      },
      secondarySpawns = {},
      itemSpawns =
      {
        { itemTemplate = "object/tangible/loot/misc/ledger_s01.iff", itemName = "Schematics" }
      },
      rewards =
      {
        { rewardType = "loot", lootGroup = "jabba_theme_park_ephant_mon"},
        { rewardType = "permission", permissionGroup = "jabba_palace2" },
        { rewardType = "faction", faction = "jabba", amount = 75000 }
      }
    }
  }

porcellus_missions =
  {
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "leviasquall", planetName = "chandrila", npcName = "a Plump Squall" }
      },
      secondarySpawns =
      {
        { npcTemplate = "leviasquall", planetName = "chandrila", npcName = "a Plump Squall" },
        { npcTemplate = "leviasquall", planetName = "chandrila", npcName = "a Plump Squall" },
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
        { npcTemplate = "theme_park_jabba_veterinarian", planetName = "chandrila", npcName = "Riken Taalo (a Sous Chef)" }
      },
      secondarySpawns =
      {
        { npcTemplate = "alkhara_bandit", planetName = "chandrila", npcName = "a Thug" },
        { npcTemplate = "alkhara_bandit", planetName = "chandrila", npcName = "a Thug" },
      },
      itemSpawns = {
        { itemTemplate = "object/tangible/loot/misc/damaged_datapad.iff", itemName = "a Datapad" }
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
        { npcTemplate = "theme_park_jabba_meatbeast", planetName = "chandrila", npcName = "a Giant Blackback" }
      },
      secondarySpawns =
      {},
      itemSpawns = {
        { itemTemplate = "object/tangible/food/meat_object.iff", itemName = "Blackback Leg" }
      },
      rewards =
      {
        { rewardType = "loot", lootGroup = "jabba_theme_park_porcellus"},
        { rewardType = "permission", permissionGroup = "jabba_palace3" },
        { rewardType = "faction", faction = "jabba", amount = 100 },
        { rewardType = "credits", amount = 18000 }
      }
    }
  }


g5po_missions =
  {
    {
      missionType = "escort",
      primarySpawns =
      {
        { npcTemplate = "scrib_leras", planetName = "chandrila", npcName = "Schmed Lhee" }
      },
      secondarySpawns =
      {
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" },
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
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Agent" }
      },
      secondarySpawns =
      {
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Agent" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Agent" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Agent" },
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
        { npcTemplate = "valarian_courier", planetName = "chandrila", npcName = "Valarian Courier" }
      },
      secondarySpawns =
      {
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" },
      },
      itemSpawns = {
        { itemTemplate = "object/tangible/loot/misc/ledger_s01.iff", itemName = "Ledger" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 15550 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "death_watch_ghost_themepark", planetName = "chandrila", npcName = "Death Watch Mercenary Leader" }
      },
      secondarySpawns =
      {
        { npcTemplate = "death_watch_bloodguard_themepark", planetName = "chandrila", npcName = "Death Watch Mercenary" },
        { npcTemplate = "death_watch_bloodguard_themepark", planetName = "chandrila", npcName = "Death Watch Mercenary" },
        { npcTemplate = "death_watch_bloodguard_themepark", planetName = "chandrila", npcName = "Death Watch Mercenary" },
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 16650 }
      }
    },
    {
      missionType = "retrieve",
      primarySpawns =
      {
        { npcTemplate = "belshu_dadar", planetName = "chandrila", npcName = "Geren Talvad" }
      },
      secondarySpawns = {},
      itemSpawns =
      {
        { itemTemplate = "object/tangible/component/item/quest_item/directional_sensor.iff", itemName = "Lady Valarian's Part" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 17550 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "black_sun_assassin_themepark", planetName = "chandrila", npcName = "a Black Sun Bounty Hunter" }
      },
      secondarySpawns =
      {
        { npcTemplate = "black_sun_assassin_themepark", planetName = "chandrila", npcName = "a Black Sun Bounty Hunter" },
        { npcTemplate = "black_sun_assassin_themepark", planetName = "chandrila", npcName = "a Black Sun Bounty Hunter" },
      },
      itemSpawns = {},
      rewards =
      {
        { rewardType = "credits", amount = 21850 }
      }
    },
    {
      missionType = "retrieve",
      primarySpawns =
      {
        { npcTemplate = "sliv_jurek", planetName = "chandrila", npcName = "Kilv Grenki" }
      },
      secondarySpawns = {},
      itemSpawns =
      {
        { itemTemplate = "object/tangible/loot/misc/key_electronic_s01.iff", itemName = "Rotta's Key" }
      },
      rewards =
      {
        { rewardType = "credits", amount = 19950 }
      }
    },
    {
      missionType = "assassinate",
      primarySpawns =
      {
        { npcTemplate = "theme_park_jabba_valarian_thug_02", planetName = "chandrila", npcName = "Valarian Thug" }
      },
      secondarySpawns =
      {
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" },
        { npcTemplate = "valarian_thug", planetName = "chandrila", npcName = "Valarian Thug" },
      },
      itemSpawns =
      {
        { itemTemplate = "object/weapon/melee/sword/sword_rantok.iff", itemName = "" }
      },
      rewards =
      {
        { rewardType = "loot", lootGroup = "jabba_theme_park_g5p0"},
        { rewardType = "badge", badge = THEME_PARK_JABBA_BADGE },
        { rewardType = "faction", faction = "jabba", amount = 200 },
        { rewardType = "permission", permissionGroup = "jabba_palace5" },
        { rewardType = "credits", amount = 32000 }
      }
    },
  }

npcMapJabba =
  {
    {
      spawnData = { planetName = "chandrila", npcTemplate = "reelo_baruk", x = 8.6, z = -0.9, y = 0.4, direction = 80, cellID = 35791444, position = STAND },
      worldPosition = { x = 400.6, y = -2810.6 },
      npcNumber = 1,
      stfFile = "@theme_park_jabba/reelo_baruk",
      missions = reelo_missions
    },
    {
      spawnData = { planetName = "chandrila", npcTemplate = "ephant_mon", x = -27.3, z = -0.5, y = 8.9, direction = 0, cellID = 35791454, position = STAND },
      worldPosition = { x = 364, y = -2800},
      npcNumber = 2,
      stfFile = "@theme_park_jabba/ephant_mon",
      missions = ephant_mon_missions
    },
    {
      spawnData = { planetName = "chandrila", npcTemplate = "porcellus", x = -25.1, z = -0.9, y = 0.3, direction = 306.623, cellID = 35791452, position = STAND },
      worldPosition = { x = 368, y = -2810 },
      npcNumber = 4,
      stfFile = "@theme_park_jabba/porcellus",
      missions = porcellus_missions
    },
    {
      spawnData = { planetName = "chandrila", npcTemplate = "g_5po", x = 7.8, z = -0.9, y = -10.9, direction = 0, cellID = 35791444, position = STAND },
      worldPosition = { x = 399, y = -2821 },
      npcNumber = 8,
      stfFile = "@theme_park_jabba/g5po",
      missions = g5po_missions
    },
    {
      spawnData = { planetName = "chandrila", npcTemplate = "record_keeper_jabba", x =27.0, z =-0.9, y = -3.1, direction = -90, cellID = 35791444, position = STAND },
      npcNumber = -1,
      stfFile = "",
      missions = {}
    },

  }

permissionMapJabba = {
  {
    planetName = "tatooine",
    regionName = "jabba_palace",
    permissions =
    {
      {
        cells = { 1177467, 1177468, 1177469, 1177489, 1177490 },
        conditions =
        {
          { permissionType = "missionState", mission = "theme_park_jabba", missionState = 1 }
        }
      },
      {
        cells = {1177470, 1177474, 1177475, 1177476, 1177477, 1177478, 1177479, 1177480, 1177481, 1177488 },
        conditions =
        {
          { permissionType = "missionState", mission = "theme_park_jabba", missionState = 1}
        }
      },
      {
        cells = { 1177471, 1177472, 1177473, 1177484, 1177499, 1177502 },
        conditions =
        {
          { permissionType = "missionState", mission = "theme_park_jabba", missionState = 1 }
        }
      },
      {
        cells = { 1177482, 1177483, 1177485, 1177487, 1177500, 1177501 },
        conditions =
        {
          { permissionType = "missionState", mission = "theme_park_jabba", missionState = 1 }
        }
      },
      {
        cells = { 1177486 },
        conditions =
        {
          { permissionType = "missionState", mission = "theme_park_jabba", missionState = 1 }
        }
      }
    }
  }
}

ThemeParkJabba = ThemeParkLogic:new {
  numberOfActs = 1,
  npcMap = npcMapJabba,
  permissionMap = permissionMapJabba,
  className = "ThemeParkJabba",
  screenPlayState = "jabba_theme_park",
  distance = 850,
  missionDescriptionStf = "@theme_park_jabba/quest_details:jabbas_palace_",
  missionCompletionMessageStf = "@theme_park/messages:jabba_completion_message",
  planetName = "chandrila"
}

registerScreenPlay("ThemeParkJabba", true)

theme_park_jabba_mission_giver_conv_handler = mission_giver_conv_handler:new {
  themePark = ThemeParkJabba
}
theme_park_jabba_mission_target_conv_handler = mission_target_conv_handler:new {
  themePark = ThemeParkJabba
}