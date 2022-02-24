object_draft_schematic_vehicle_civilian_barc_speeder = object_draft_schematic_vehicle_civilian_shared_barc_speeder:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "BARC Speeder",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 1,
	size = 1,
	factoryCrateSize = 1000,

	xpType = "crafting_general",
	xp = 1600,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "clothing_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "structural_frame"},
	ingredientSlotType = {0, 0},
	resourceTypes = {"metal_nonferrous", "metal_ferrous"},
	resourceQuantities = {2000, 6950},
	contribution = {100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/barc_speeder_deed.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_barc_speeder, "object/draft_schematic/vehicle/civilian/barc_speeder.iff")
