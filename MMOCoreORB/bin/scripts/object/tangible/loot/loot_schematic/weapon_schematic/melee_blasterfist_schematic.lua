
object_tangible_loot_loot_schematic_weapon_schematic_melee_blasterfist_schematic = object_tangible_loot_loot_schematic_weapon_schematic_shared_melee_blasterfist_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master", 
	targetDraftSchematic = "object/draft_schematic/weapon/blasterfist.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_weapon_schematic_melee_blasterfist_schematic, "object/tangible/loot/loot_schematic/weapon_schematic/melee_blasterfist_schematic.iff")
