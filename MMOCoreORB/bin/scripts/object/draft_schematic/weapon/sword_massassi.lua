object_draft_schematic_weapon_sword_massassi = object_draft_schematic_weapon_shared_sword_massassi:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Massassi Sword",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 1, 
   size = 3, 

   xpType = "crafting_weapons_general", 
   xp = 110, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"grip_unit", "conductive_strike_face", "power_cell_brackets", "charge_accumulator", "shock_pulsor", "reinforcement_core"},
   ingredientSlotType = {0, 0, 0, 0, 1, 1},
   resourceTypes = {"copper_polysteel", "steel", "metal", "crystalline_byrothsis", "object/tangible/component/item/shared_electronic_power_conditioner.iff", "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {18, 18, 10, 6, 2, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/sword/sword_massassi.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_sword_massassi, "object/draft_schematic/weapon/sword_massassi.iff")
