object_draft_schematic_chemistry_medpack_poison_hssiss = object_draft_schematic_chemistry_shared_medpack_poison_hssiss:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Hssss venom delivery unit",

	craftingToolTab = 64, -- (See DraftSchematicObjectTemplate.h)
	complexity = 1,
	size = 3,
	factoryCrateSize = 1000,

	xpType = "crafting_medicine_general",
	xp = 65,

	assemblySkill = "combat_medicine_assembly",
	experimentingSkill = "combat_medicine_experimentation",
	customizationSkill = "combat_medicine_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_chemical_ingredients_n", "craft_chemical_ingredients_n", "craft_chemical_ingredients_n", "craft_chemical_ingredients_n", "craft_chemical_ingredients_n", "craft_chemical_ingredients_n"},
	ingredientTitleNames = {"body_shell", "organic_element", "inorganic_element", "delivery_medium", "drug_duration_compound", "drug_strength_compound"},
	ingredientSlotType = {0, 0, 0, 1, 1, 1},
	resourceTypes = {"metal_nonferrous", "vegetable_fungi", "chemical", "object/tangible/component/chemistry/shared_dispersal_mechanism.iff", "object/tangible/component/chemistry/shared_resilience_compound.iff", "object/tangible/component/chemistry/shared_infection_amplifier.iff"},
	resourceQuantities = {4, 10, 15, 1, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/medicine/crafted/medpack_poison_hssiss.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_chemistry_medpack_poison_hssiss, "object/draft_schematic/chemistry/medpack_poison_hssiss.iff")
