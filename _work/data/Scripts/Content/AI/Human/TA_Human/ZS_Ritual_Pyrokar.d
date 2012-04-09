// ************************************
// ZS_Circle f�r Auge Innos Beschw�rung
// ************************************
func void ZS_Ritual_Pyrokar	() 	
{
	Perception_Set_Normal();
	
	B_UseHat (self);
	
	B_ResetAll (self);
	
	if (self.aivar[AIV_Schwierigkeitsgrad] < Mod_Schwierigkeit)
	|| (self.aivar[AIV_Schwierigkeitsgrad] > Mod_Schwierigkeit)
	{
		B_SetSchwierigkeit();
	};

	// ------ PercTime �berschreiben ------
	Npc_SetPercTime		(self, 0.3);
	
	
	AI_StandUp		(self);				
	AI_SetWalkmode 	(self,NPC_WALK);			// Walkmode f�r den Zustand
	AI_GotoWP		(self, self.wp);			// Gehe zum Tagesablaufstart
	AI_AlignToWP	(self);
};

func int ZS_Ritual_Pyrokar_Loop ()
{
	if (Ritual_Angefangen < 3)
	&& (Ritual_Angefangen > 0)
	{		
		if (Npc_GetStateTime(Mod_843_DMB_Xardas_GDG) == 5)
		{
			Wld_PlayEffect("FX_EarthQuake",  self, self, 0, 0, 0, FALSE );
			AI_PlayAni (self,"T_PRACTICEMAGIC5");	
			Wld_PlayEffect("spellFX_INCOVATION_RED",  self, self, 0, 0, 0, FALSE );
		};

		if (Npc_GetStateTime(Mod_843_DMB_Xardas_GDG) == 20)
		{
			CreateInvItems	(self, Holy_Hammer_MIS, 1);
			AI_UnequipWeapons	(self);

			AI_EquipBestMeleeWeapon	(self);

			AI_ReadyMeleeWeapon	(self);
		};

		if (Npc_GetStateTime(Mod_843_DMB_Xardas_GDG) == 40)
		{
			AI_UnequipWeapons	(self);
		};
	}
	else if (Wld_IsFPAvailable(self,"RITUAL"))
	&& (Ritual_Angefangen < 1)
	{
		AI_GotoFP 		(self, "RITUAL");
		AI_StandUp (self);
		AI_AlignToFP 	(self);

		if (Ritual_Angefangen == FALSE)
		{
			Npc_SetStateTime (self,0);
		};
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Ritual_Pyrokar_End ()
{

};
