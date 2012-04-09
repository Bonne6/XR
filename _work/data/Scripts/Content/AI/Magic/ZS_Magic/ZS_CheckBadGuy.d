// *****************************************************
// B_MagicStopBurn
// ----------
// wird aufgerufen durch PERC_ASSESSSTOPMAGIC in ZS_CheckBadGuy
// *****************************************************

func void B_StopCheckBadGuy()
{	
	Perception_Set_Normal ();

	Npc_ClearAIQueue(self);
	AI_StandUp		(self);

	if (self.guild < GIL_SEPERATOR_HUM)
	{
		B_AssessEnemy();
		AI_ContinueRoutine	(self); //Sicherheitshalber, falls B_AssessDamage NICHT in neuen ZS weiterleitet (kann z.ZT. aber nicht passieren) 							// - sonst w�rde NPC in Loop h�ngenbleiben
	}
	else
	{
		Npc_SetTempAttitude (self, ATT_HOSTILE); //falls nicht schon Gilden-Attit�de hostile ist 
		AI_ContinueRoutine	(self); //sonst bleibt Monster in Loop und kassiert weiter Schaden
	};

	B_Attack	(self, Mod_1746_KDF_Tojan_PAT, AR_GuildEnemy, 0);
};


func int ZS_CheckBadGuy()
{
	// ------ Non_interruptable Bodystates stehen sauber auf bzw. beenden sauber
	if (!Npc_HasBodyFlag(self, BS_FLAG_INTERRUPTABLE))
	{
		AI_StandUp (self);
	}
	else
	{
		AI_StandUpQuick (self);
	};
	
};

func int ZS_CheckBadGuy_Loop ()
{	
	Npc_ClearAIQueue(self);		
	AI_StandUp		(self);				// FIXME: wieso ? dann steht er doch noch mal auf bevor er abkratzt
		
	B_StopCheckBadGuy();
									// (dann sollte er auch noch sowas sagen wie: "Macht das nicht zu Hause Kinder" bevor er endg�ltig stirbt :)												
	return			LOOP_END;
};


func void ZS_CheckBadGuy_End()
{
};


	


	
