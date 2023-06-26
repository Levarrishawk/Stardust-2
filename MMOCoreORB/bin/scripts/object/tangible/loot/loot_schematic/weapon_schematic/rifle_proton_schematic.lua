
object_tangible_loot_loot_schematic_weapon_schematic_rifle_proton_schematic = object_tangible_loot_loot_schematic_weapon_schematic_shared_rifle_proton_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master", 
	targetDraftSchematic = "object/draft_schematic/weapon/rifle_proton.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_weapon_schematic_rifle_proton_schematic, "object/tangible/loot/loot_schematic/weapon_schematic/rifle_proton_schematic.iff")
