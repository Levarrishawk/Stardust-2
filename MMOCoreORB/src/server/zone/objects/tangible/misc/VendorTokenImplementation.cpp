#include "server/zone/objects/tangible/misc/VendorToken.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/director/DirectorManager.h"
#include "server/zone/objects/player/sui/callbacks/SplitTokenSuiCallback.h"
#include "server/zone/objects/player/sui/SuiWindowType.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/objects/player/sui/transferbox/SuiTransferBox.h"

void VendorTokenImplementation::fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player) {
	SceneObject* inventory = player->getSlottedObject("inventory");
	if (inventory == nullptr)
		return;
		
	if (!isASubChildOf(inventory))
		return;
	
	SceneObject* sceno = cast <SceneObject*>(_this.getReferenceUnsafeStaticCast());
	String fullTemplate = getObjectTemplate()->getFullTemplateString();
	
	menuResponse->addRadialMenuItem(40, 3, "Split Tokens");

	//VersaFunction88 Functionality
	//menuResponse->addRadialMenuItem(50, 3, "Store Tokens");
}

int VendorTokenImplementation::handleObjectMenuSelect(CreatureObject* player, byte selectedID) {
	PlayerObject* ghost = player->getPlayerObject();
	if (ghost == nullptr)
		return 0;
	
	SceneObject* inventory = player->getSlottedObject("inventory");
	if (inventory == nullptr)
		return 0;
	
	SceneObject* sceno = cast <SceneObject*>(_this.getReferenceUnsafeStaticCast());
	String fullTemplate = sceno->getObjectTemplate()->getFullTemplateString();
	int itemCount = 0;
	
	if (selectedID == 40) {
		if (!isASubChildOf(inventory)) {
			player->sendSystemMessage("You cannot split items if they are not in your inventory.");
			return 0;
		}
		
		if (getUseCount() == 1) {
			player->sendSystemMessage("You can't split a single item.");
			return 0;
		}
		
		ManagedReference<SuiTransferBox*> transfer = new SuiTransferBox(player, SuiWindowType::OBJECT_NAME);
		transfer->setPromptTitle("Split Items");
		transfer->setPromptText("Select how many items go into each stack.");
		transfer->addFrom("Original Stack", String::valueOf(getUseCount()), String::valueOf(getUseCount()), "1");
		transfer->addTo("New Stack", "0", "0", "1");
		transfer->setUsingObject(_this.getReferenceUnsafeStaticCast());
		transfer->setForceCloseDistance(1024.f);
		transfer->setCallback(new SplitTokenSuiCallback(player->getZoneServer(), sceno));
		
		ghost->addSuiBox(transfer);
		player->sendMessage(transfer->generateMessage());
	}
	
	if (selectedID == 50) {
		Lua* lua = DirectorManager::instance()->getLuaInstance();

		Reference<LuaFunction*> runMethod = lua->createFunction("Versafunction88MenuComponent", "storeToken", 0);
		*runMethod << player;
		*runMethod << sceno;

		runMethod->callFunction();
	}

	return 1;
}

int VendorTokenImplementation::canAddObject(SceneObject* object, int containmentType, String& errorDescription) {
	SceneObject* sceno = cast <SceneObject*>(_this.getReferenceUnsafeStaticCast());
	String fullTemplate = getObjectTemplate()->getFullTemplateString();
	
	ManagedReference<CreatureObject*>  player = getParentRecursively(SceneObjectType::PLAYERCREATURE).castTo<CreatureObject*>();

	if (player == nullptr)
		return TransferErrorCode::MUSTBEINPLAYERINVENTORY;

	String itemTemplate = object->getObjectTemplate()->getFullTemplateString();
	
	if (fullTemplate != itemTemplate)
		return TransferErrorCode::INVALIDTYPE;
	
	ManagedReference<TangibleObject*> tano = cast<TangibleObject*>(object);

	if (tano == nullptr)
		return TransferErrorCode::INVALIDTYPE;

	return TangibleObjectImplementation::canAddObject(object, containmentType, errorDescription);
}

int VendorTokenImplementation::notifyObjectInserted(SceneObject* object) {
	ManagedReference<CreatureObject*> player = getParentRecursively(SceneObjectType::PLAYERCREATURE).castTo<CreatureObject*>();

	if (player == nullptr)
		return 0;

	ManagedReference<TangibleObject*> tano = cast<TangibleObject*>(object);

	if (tano == nullptr)
		return 0;
	
	Locker _locker(_this.getReferenceUnsafeStaticCast());
	Locker clocker(tano, _this.getReferenceUnsafeStaticCast());
	
	setUseCount(getUseCount() + tano->getUseCount(), true);
	tano->setUseCount(0, true);
	
	tano->destroyObjectFromWorld(true);
	tano->destroyObjectFromDatabase(true);
	
	return 0;
}

byte VendorTokenImplementation::checkContainerPermission(CreatureObject* player, uint16 permission) {
	if (permission == ContainerPermissions::MOVEOUT) {
		return false;
	}

	return SceneObjectImplementation::checkContainerPermission(player, permission);
}