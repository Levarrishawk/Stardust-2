object_tangible_loot_loot_schematic_stardust_backpack_schematic = object_tangible_loot_loot_schematic_shared_stardust_backpack_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/stardust_backpack_schematic.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_stardust_backpack_schematic, "object/tangible/loot/loot_schematic/stardust_backpack_schematic.iff")
