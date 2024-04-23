/**
 * This script restricts who can create a character
 * Each account can have different max character limitations
 * 
 * 
 */ 

#include "ScriptMgr.h"
#include "LoginDatabase.h"
#include "Log.h"
#include "Chat.h"

class addCharacterSlotOnMaxLevel : public PlayerScript
{
public:
    addCharacterSlotOnMaxLevel() : PlayerScript("addCharacterSlotOnMaxLevel")
    {}

    void OnLevelChanged(Player* player, uint8 oldLevel)
    {
        // If already at max character limit, return
        if (AccountMgr::GetCharactersCount(player->GetSession()->GetAccountId()) >= sWorld->getIntConfig(CONFIG_CHARACTERS_PER_REALM))
        {
            return;
        }

        if(player->GetLevel() == sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL))
        {
            // Add one extra character slot to account
            LoginDatabase.Query("UPDATE account SET zz_max_characters = zz_max_characters + 1 where id = '{}'", player->GetSession()->GetAccountId());
            ChatHandler(player->GetSession()).SendSysMessage("Your account has unlocked an additional character slot.");
        }

        return;
    }

};

void AddSC_add_character_slot_on_max_level()
{
    new addCharacterSlotOnMaxLevel();
}