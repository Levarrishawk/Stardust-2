object_draft_schematic_armor_armor_appearance_rebel_assault_boots = object_draft_schematic_armor_shared_armor_appearance_rebel_assault_boots:new {
  
   templateType = DRAFTSCHEMATIC,

   customObjectName = "Rebel Assault Armor Boots",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 1,
   size = 4,


   xpType = "crafting_clothing_armor",
   xp = 420,

   assemblySkill = "armor_assembly",
   experimentingSkill = "armor_experimentation",
   customizationSkill = "armor_customization",

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"appearance_fragments", "armor_core_frame", "load_bearing_harness", "reinforcement"},
   ingredientSlotType = {0, 0, 0, 1},
   resourceTypes = {"fiberplast_corellia", "metal", "hide_wooly", "object/tangible/component/armor/shared_armor_segment_padded.iff"},
   resourceQuantities = {10, 10, 5, 1},
   contribution = {100, 100, 100, 100},


   targetTemplate = "object/draft_schematic/armor/armor_appearance_rebel_assault_bicep_boots.iff",

   additionalTemplates = {
             }
}

ObjectTemplates:addTemplate(object_draft_schematic_armor_armor_appearance_rebel_assault_boots, "object/draft_schematic/armor/armor_appearance_rebel_assault_boots.iff")
