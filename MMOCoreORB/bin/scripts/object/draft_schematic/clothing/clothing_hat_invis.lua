

object_draft_schematic_clothing_clothing_hat_invis = object_draft_schematic_clothing_shared_clothing_hat_invis:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Invisible Hat Appearance",

   craftingToolTab = 8, -- (See DraftSchematicObjectTemplate.h)
   complexity = 1, 
   size = 3, 

   xpType = "crafting_clothing_general", 
   xp = 60, 

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"shell", "binding_and_weatherproofing", "liner"},
   ingredientSlotType = {1, 0, 1},
   resourceTypes = {"object/tangible/component/clothing/shared_synthetic_cloth.iff", "petrochem_inert", "object/tangible/component/clothing/shared_synthetic_cloth.iff"},
   resourceQuantities = {1, 25, 2},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/wearables/hat/hat_loveday_halo_02.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_hat_invis, "object/draft_schematic/clothing/clothing_hat_invis.iff")
