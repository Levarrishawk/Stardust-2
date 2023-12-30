
object_draft_schematic_armored_clothing_armor_segment_armor_weaver_electric = object_draft_schematic_armored_clothing_shared_armor_segment_armor_weaver_electric:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Electrical Armor Weaving Segment",

	craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
	complexity = 1,
	size = 6,
	factoryCrateSize = 1000,

	xpType = "crafting_clothing_armor",
	xp = 35,

	assemblySkill = "armor_assembly",
	experimentingSkill = "armor_experimentation",
	customizationSkill = "armor_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n"},
	ingredientTitleNames = {"segment_layer_assembly_plate", "armor_layer_weld_tabs", "segment_mounting_tabs", "defensive_layer", "defensive_layer_2", "defensive_layer_3", "segment_enhancement"},
	ingredientSlotType = {0, 0, 0, 3, 3, 3, 3},
	resourceTypes = {"iron", "steel", "copper", "object/tangible/component/armor/shared_armor_layer.iff", "object/tangible/component/armor/shared_armor_layer.iff", "object/tangible/component/armor/shared_armor_layer.iff", "object/tangible/component/armor/shared_base_armor_segment_enhancement.iff"},
	resourceQuantities = {16, 8, 5, 1, 1, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/component/armored_clothing/armor_segment_armor_weaver_electric.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_armored_clothing_armor_segment_armor_weaver_electric, "object/draft_schematic/armored_clothing/armor_segment_armor_weaver_electric.iff")
