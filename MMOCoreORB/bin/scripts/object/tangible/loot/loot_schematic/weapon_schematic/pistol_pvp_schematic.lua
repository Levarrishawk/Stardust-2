
object_tangible_loot_loot_schematic_weapon_schematic_pistol_pvp_schematic = object_tangible_loot_loot_schematic_weapon_schematic_shared_pistol_pvp_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master", 
	targetDraftSchematic = "object/draft_schematic/weapon/pistol_pvp.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_weapon_schematic_pistol_pvp_schematic, "object/tangible/loot/loot_schematic/weapon_schematic/pistol_pvp_schematic.iff")
