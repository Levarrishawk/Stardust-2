object_draft_schematic_furniture_furniture_table_jedi_light_s01 = object_draft_schematic_furniture_shared_furniture_table_jedi_light_s01:new {
  templateType = DRAFTSCHEMATIC,

  customObjectName = "Jedi Council Table",

  craftingToolTab = 512, -- (See DraftSchematicObjectTemplate.h)
  complexity = 1,
  size = 3,
  factoryCrateSize = 1000,

  xpType = "crafting_structure_general",
  xp = 320,

  assemblySkill = "structure_assembly",
  experimentingSkill = "structure_experimentation",
  customizationSkill = "structure_customization",

  customizationOptions = {},
  customizationStringNames = {},
  customizationDefaults = {},

  ingredientTemplateNames = {"craft_furniture_ingredients_n", "craft_furniture_ingredients_n"},
  ingredientTitleNames = {"frame", "upholstery"},
  ingredientSlotType = {0, 0},
  resourceTypes = {"metal", "metal"},
  resourceQuantities = {150, 150},
  contribution = {100, 100},

  targetTemplate = "object/tangible/furniture/jedi/frn_all_table_light_01_hue.iff",

  additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_furniture_furniture_table_jedi_light_s01, "object/draft_schematic/furniture/furniture_table_jedi_light_s01.iff")
