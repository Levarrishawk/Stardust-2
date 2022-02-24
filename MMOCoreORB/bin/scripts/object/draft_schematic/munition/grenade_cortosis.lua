object_draft_schematic_munition_grenade_cortosis = object_draft_schematic_munition_shared_grenade_cortosis:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Cortosis Grenade",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 1, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 90, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_munition_ingredients_n", "craft_munition_ingredients_n", "craft_munition_ingredients_n", "craft_munition_ingredients_n", "craft_munition_ingredients_n"},
   ingredientTitleNames = {"trigger_and_timer_mechanism", "activation_agent_mechanism", "warhead_assembly", "warhead_fusing", "warhead_booster"},
   ingredientSlotType = {0, 0, 1, 1, 3},
   resourceTypes = {"steel", "radioactive", "object/tangible/component/munition/shared_warhead_light.iff", "object/tangible/component/munition/shared_warhead_fusing_mechanism.iff", "object/tangible/component/munition/shared_enhanced_charge_composition.iff"},
   resourceQuantities = {25, 20, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/grenade/grenade_cortosis.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_munition_grenade_cortosis, "object/draft_schematic/munition/grenade_cortosis.iff")
