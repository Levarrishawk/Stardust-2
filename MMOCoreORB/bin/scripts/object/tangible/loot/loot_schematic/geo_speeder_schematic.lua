object_tangible_loot_loot_schematic_geo_speeder_schematic = object_tangible_loot_loot_schematic_shared_geo_speeder_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_artisan_master",
	targetDraftSchematic = "object/draft_schematic/vehicle/civilian/geo_speeder.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_geo_speeder_schematic, "object/tangible/loot/loot_schematic/geo_speeder_schematic.iff")
