

object_draft_schematic_weapon_blasterfist = object_draft_schematic_weapon_shared_blasterfist:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Blaster Fist Schematic",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 1, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 250, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"grip_unit", "strike_face", "vibro_unit_and_power_cell_brackets", "power_cell_socket", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 0, 1},
   resourceTypes = {"steel_duralloy", "steel_ditanium", "aluminum_phrik", "copper_polysteel", "object/tangible/component/weapon/shared_vibro_unit_nightsister.iff"},
   resourceQuantities = {12, 8, 8, 4, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/special/blasterfist.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_blasterfist, "object/draft_schematic/weapon/blasterfist.iff")
