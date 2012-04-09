// ******************************************************
// B_CreateAmmo
// ------------
// generiert Munition, wenn FK-Waffe equippt oder gezogen
// ******************************************************

func void B_CreateAmmo(var C_NPC slf)
{
	var C_ITEM rangedWeapon;

	if (Npc_IsInFightMode(slf, FMODE_FAR))
	{
		rangedWeapon = Npc_GetReadiedWeapon(slf);
	}
	else if (Npc_HasEquippedRangedWeapon (slf))
	{
		rangedWeapon = Npc_GetEquippedRangedWeapon(slf);
	}
	else //weder gezogenen noch equippten Bogen
	{
		return;
	};
		
	// ------ Munition auff�llen ------
	/*if (rangedWeapon.munition == ItRw_Arrow)
	{
		if (Npc_HasItems(slf, ItRw_Arrow) < 10)
		{
			CreateInvItems (slf, ItRw_Arrow, 10);
		};
	}
	else if (rangedWeapon.munition == ItRw_Bolt)
	{
		if (Npc_HasItems(slf, ItRw_Bolt) < 10)
		{
			CreateInvItems (slf, ItRw_Bolt, 10);
		};
	}
	else if (rangedWeapon.munition == ItRw_SchmetterArrow)
	{
		if (Npc_HasItems(slf, ItRw_SchmetterArrow) < 10)
		{
			CreateInvItems (slf, ItRw_SchmetterArrow, 10);
		};
	}
	else if (rangedWeapon.munition == ItRw_SchmetterBolt)
	{
		if (Npc_HasItems(slf, ItRw_SchmetterBolt) < 10)
		{
			CreateInvItems (slf, ItRw_SchmetterBolt, 10);
		};
	};*/

	if (Npc_HasItems(slf, rangedWeapon.munition) < 10)
	{
		CreateInvItems	(slf, rangedWeapon.munition, 10);
	};	
};

