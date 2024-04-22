/**
 * This script restricts who can create a character
 * Each account can have different max character limitations
 * 
 * 
 */ 

#include "ScriptMgr.h"
#include "AccountMgr.h"
#include "LoginDatabase.h"

class restrictCharacterCreationAccountScript : public AccountScript
{
public:
    restrictCharacterCreationAccountScript() : AccountScript("restrictCharacterCreationAccountScript")
    {}

    bool CanAccountCreateCharacter(uint32 accountId, uint8 charRace, uint8 charClass) override
    {
        if (AccountMgr::GetCharactersCount(accountId) >= GetMaxAccountCharacters(accountId))
        {
            return false;
        }

        /*
        // Disallow creating Blood Elf or Draenei
        if(charRace == 512 || charRace == 1024)
        {
            return false;
        }
        */
    	return true;
    }

    int GetMaxAccountCharacters(uint32 accountId)
    {
        QueryResult result = LoginDatabase.Query("SELECT zz_max_characters FROM account where id = '{}'", accountId);

        return (result) ? (*result)[0].Get<uint32>() : 1;
    }
};

void AddSC_restrict_character_creation()
{
    new restrictCharacterCreationAccountScript();
}