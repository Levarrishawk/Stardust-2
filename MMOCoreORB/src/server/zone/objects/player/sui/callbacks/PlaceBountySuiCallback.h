/*
 * PlaceBountySuiCallback.h
 */

#ifndef PLACEBOUNTYSUICALLBACK_H_
#define PLACEBOUNTYSUICALLBACK_H_

#include "server/zone/managers/mission/MissionManager.h"
#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/objects/player/sui/callbacks/PlaceBountySuiCallback.h"
#include "server/chat/ChatManager.h"

class PlaceBountySuiCallback: public SuiCallback {
private:
	ManagedReference<CreatureObject*> killerPlayer;

public:
	PlaceBountySuiCallback(ZoneServer* server, CreatureObject* killer) :
		SuiCallback(server) {
		this->killerPlayer = killer;
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		int reward = Integer::valueOf(args->get(0).toString());
		int minBounty = 100000;
		int maxBounty = 500000;

		if (!suiBox->isInputBox() || cancelPressed)
			return;

		MissionManager* missionManager = server->getMissionManager();
		if (missionManager == nullptr)
			return;

		if (reward <= minBounty)
				reward = minBounty;
			else if (reward >= maxBounty)
				reward = maxBounty;

		PlayerObject* killerGhost = killerPlayer->getPlayerObject();
		if (killerGhost == nullptr)
			return;

		ChatManager* chatManager = player->getZoneServer()->getChatManager();

		int bank = player->getBankCredits();

		if (reward > bank) {
			player->sendSystemMessage("You have insufficient credits to place a bounty on " + killerPlayer->getFirstName() + ".");
			return;
		}

		player->subtractBankCredits(reward);

		//killerGhost->updatePlayerBountyTimestamp(3600000); Cooldown
		killerGhost->setBountyReward(reward);
		missionManager->addPlayerToBountyList(killerPlayer->getObjectID(), reward);
		killerGhost->setVisibility(8000);
		player->sendSystemMessage("You have successfully placed a bounty on " + killerPlayer->getFirstName() + ".");
		killerPlayer->sendSystemMessage("Warning!! " + player->getFirstName() + " has placed a bounty on you.");
		
		StringBuffer zBroadcast;
		zBroadcast << "\\#66B3FF" << "[Spynet Alert] " << "\\#FFFFFF" << "The Guild has posted a new target.";
		killerPlayer->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
	}
};

#endif /* PLACEBOUNTYSUICALLBACK_H_ */
