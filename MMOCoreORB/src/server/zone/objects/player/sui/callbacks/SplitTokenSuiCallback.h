#ifndef SPLIT_TOKEN_SUI_CALLBACK
#define SPLIT_TOKEN_SUI_CALLBACK

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/objects/player/sui/callbacks/SplitTokenSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/objects/tangible/misc/VendorToken.h"

class SplitTokenSuiCallback : public SuiCallback {
	ManagedWeakReference<SceneObject*> scenObj;
	
public:
	SplitTokenSuiCallback(ZoneServer* server, SceneObject* sceneObject) : SuiCallback(server) {
		scenObj = sceneObject;
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		if (!player->isPlayerCreature()) {
		return;
		}
		
		SceneObject* inventory = player->getSlottedObject("inventory");
		if (inventory == nullptr) {
			return;
		}
		
		bool cancelPressed = (eventIndex == 1);

		if (!suiBox->isTransferBox() || cancelPressed || args->size() <= 1) {
			return;
		}

		SceneObject* sceno = scenObj.get();
		
		String fullTemplate = sceno->getObjectTemplate()->getFullTemplateString();
		TangibleObject* tano = cast <TangibleObject* >(sceno);
		ManagedReference<TangibleObject*> newToken = player->getZoneServer()->createObject(fullTemplate.hashCode(), 1).castTo<TangibleObject*>();
		
		if (newToken == nullptr) {
			return;
		}
		
		Locker locker(tano);
		
		int value = Integer::valueOf(args->get(1).toString());
		
		if (value == 0 || value == tano->getUseCount()) {
			return;
		}
		
		tano->setUseCount(tano->getUseCount() - value, true);
		
		Locker newTokenLocker(newToken);
		
		inventory->transferObject(newToken, -1, true);
		
		newToken->sendTo(player, true);
		newToken->setUseCount(value, true);

		player->sendSystemMessage("You've successfully split your items.");
	}
};

#endif