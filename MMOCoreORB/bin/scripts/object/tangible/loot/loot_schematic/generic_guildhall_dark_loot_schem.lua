
object_tangible_loot_loot_schematic_generic_guildhall_dark_loot_schem = object_tangible_loot_loot_schematic_shared_generic_guildhall_dark_loot_schem:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/generic_house_guild_hall_dark.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_generic_guildhall_dark_loot_schem, "object/tangible/loot/loot_schematic/generic_guildhall_dark_loot_schem.iff")
