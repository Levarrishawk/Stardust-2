
#ifndef JEDIROBEATTIBUTELISTCOMPONENT_H_
#define JEDIROBEATTIBUTELISTCOMPONENT_H_

#include "server/zone/objects/tangible/wearables/RobeObject.h"
#include "server/zone/objects/scene/components/AttributeListComponent.h"

class JediRobeAttributeListComponent: public AttributeListComponent {
public:

	/**
	 * Fills the Attributes
	 * @pre { this object is locked }
	 * @post { this object is locked, menuResponse is complete}
	 * @param menuResponse ObjectMenuResponse that will be sent to the client
	 */
	void fillAttributeList(AttributeListMessage* alm, CreatureObject* creature, SceneObject* object) const {

		ManagedReference<RobeObject*> robe = cast<RobeObject*> (object);
		if (robe == nullptr) {
			return;
		}

		int maxCondition = robe->getMaxCondition();

		if (maxCondition > 0) {
			StringBuffer cond;
			cond << maxCondition << "/" << maxCondition;

			alm->insertAttribute("condition", cond);
		}

		int volume = robe->getVolume();

		if (volume > 0) {
			alm->insertAttribute("volume", volume);
		}

		String rankRequired = robe->getSkillRequired();

		if (!rankRequired.isEmpty() && rankRequired != "force_title_jedi_rank_02") {
			alm->insertAttribute("jedi_rank_required", "@skl_n:" + rankRequired);
		}

		const auto skills = robe->getTemplateSkillMods();

		if (skills->contains("jedi_force_power_regen")) {
			int mod = skills->get("jedi_force_power_regen");
			alm->insertAttribute("jedi_robe_regen", "+" + String::valueOf(mod));
		}

		if (skills->contains("jedi_force_power_max")) {
			int mod = skills->get("jedi_force_power_max");
			alm->insertAttribute("jedi_robe_power", "+" + String::valueOf(mod));
		}

		if (skills->contains("lightsaber_toughness")) {
					int mod = skills->get("lightsaber_toughness");
					alm->insertAttribute("lightsaber_toughness", "+" + String::valueOf(mod));
				}

				if (skills->contains("forcelightning_accuracy")) {
					int mod = skills->get("forcelightning_accuracy");
					alm->insertAttribute("forcelightning_accuracy", "+" + String::valueOf(mod));
				}

				if (skills->contains("forceintimidate_accuracy")) {
					int mod = skills->get("forceintimidate_accuracy");
					alm->insertAttribute("forceintimidate_accuracy", "+" + String::valueOf(mod));
				}

				if (skills->contains("force_power_light")) {
					int mod = skills->get("force_power_light");
					alm->insertAttribute("force_power_light", "+" + String::valueOf(mod));
				}

				if (skills->contains("force_power_dark")) {
					int mod = skills->get("force_power_dark");
					alm->insertAttribute("force_power_dark", "+" + String::valueOf(mod));
				}

				if (skills->contains("force_control_light")) {
					int mod = skills->get("force_control_light");
					alm->insertAttribute("force_control_light", "+" + String::valueOf(mod));
				}

				if (skills->contains("force_control_dark")) {
					int mod = skills->get("force_control_dark");
					alm->insertAttribute("force_control_dark", "+" + String::valueOf(mod));
				}

				if (skills->contains("force_manipulation_light")) {
					int mod = skills->get("force_manipulation_light");
					alm->insertAttribute("force_manipulation_light", "+" + String::valueOf(mod));
				}

				if (skills->contains("force_manipulation_dark")) {
					int mod = skills->get("force_manipulation_dark");
					alm->insertAttribute("force_manipulation_dark", "+" + String::valueOf(mod));
				}
/*
				if (skills->contains("melee_defense")) {
					int mod = skills->get("melee_defense");
					alm->insertAttribute("melee_defense", "+" + String::valueOf(mod));
				}

				if (skills->contains("ranged_defense")) {
					int mod = skills->get("ranged_defense");
					alm->insertAttribute("ranged_defense", "+" + String::valueOf(mod));
				}
	*/
	}
};

#endif /* JEDIROBEATTIBUTELISTCOMPONENT_H_ */
