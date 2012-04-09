// ************************************
// ZS_Hexenmagie f�r Auge Innos Beschw�rung
// ************************************


func void ZS_Hexenmagie	() 	
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

	AI_PlayAni	(self, "T_MAGRUN_2_HEASHOOT");
};

func int ZS_Hexenmagie_Loop ()
{
	return LOOP_CONTINUE;
};

func void ZS_Hexenmagie_End ()
{
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};
