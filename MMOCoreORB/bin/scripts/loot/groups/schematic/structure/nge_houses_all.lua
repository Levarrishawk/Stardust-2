nge_houses_all = {
	description = "",
  minimumLevel = 0,
  maximumLevel = -1,
  lootItems = {

    {itemTemplate = "emperors_house_loot_schematic", weight = 1000000},  --ok
    {itemTemplate = "generic_large_window_s01_loot_schematic", weight = 1000000}, --ok
    {itemTemplate = "generic_large_window_s02_loot_schematic", weight = 1000000}, --ok
    {itemTemplate = "generic_medium_window_s01_loot_schematic", weight = 1000000}, --ok
    {itemTemplate = "rebel_house_loot_schematic", weight = 1000000},   -- ok
  --  {itemTemplate = "sith_house_loot_schematic", weight = 625000}, -- ok   
    {itemTemplate = "vehicle_house_loot_schematic", weight = 1000000}, --ok  
    {itemTemplate = "relaxation_house_loot_schematic", weight = 1000000}, --ok
  --  {itemTemplate = "jedi_house_loot_schematic", weight = 625000}, --ok
    {itemTemplate = "generic_medium_window_s02_loot_schematic", weight = 1000000}, --ok
    {itemTemplate = "generic_small_window_s02_loot_schematic", weight = 1000000}, --ok    
    {itemTemplate = "musty_house_loot_schematic", weight = 1000000} --ok
  --  {itemTemplate = "generic_small_window_s01_loot_schematic", weight = 625000}               
 -- {itemTemplate = "bespin_house_loot_schematic", weight = 625000}, --  ew 
--  {itemTemplate = "hangar_house_loot_schematic", weight = 625000},
--  {itemTemplate = "naboo_small_window_s01_loot_schematic", weight = 625000},
 -- {itemTemplate = "tatooine_small_window_s01_loot_schematic", weight = 625000},  
    
  }
}

addLootGroupTemplate("nge_houses_all", nge_houses_all)
