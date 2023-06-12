object_draft_schematic_armor_armor_appearance_infiltrator_s01_boots = object_draft_schematic_armor_shared_armor_appearance_infiltrator_s01_boots:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Dark Infiltrator Armor Boots",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 1,
   size = 4,

   xpType = "crafting_clothing_armor",
   xp = 420,

   assemblySkill = "armor_assembly",
   experimentingSkill = "armor_experimentation",
   customizationSkill = "armor_customization",

   customizationOptions = {2},
   customizationStringNames = {"/private/index_color_1"},
   customizationDefaults = {0},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"appearance_fragments", "armor_core_frame", "armor_core", "load_bearing_harness", "reinforcement", "enhancement_cartridge", "appearance_enhancement_one", "appearance_enhancement_two"},
   ingredientSlotType = {0, 0, 0, 0, 0, 1, 1, 1},
   resourceTypes = {"hide_scaley", "fiberplast_corellia", "metal", "petrochem_inert_polymer", "hide_wooly", "object/tangible/component/armor/shared_armor_segment_padded.iff", "object/tangible/component/clothing/shared_synthetic_cloth.iff", "object/tangible/component/clothing/shared_reinforced_fiber_panels.iff"},
   resourceQuantities = {10, 10, 5, 5, 3, 2, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/armor/infiltrator/armor_infiltrator_s01_boots.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_armor_armor_appearance_infiltrator_s01_boots, "object/draft_schematic/armor/armor_appearance_infiltrator_s01_boots.iff")
