// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_BAU_7_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_BAU_7_EXIT_Condition;
	information	= DIA_BAU_7_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_BAU_7_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_BAU_7_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_BAU_7_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_BAU_7_JOIN_Condition;
	information	= DIA_BAU_7_JOIN_Info;
	permanent	= TRUE;
	description = "Was wei�t du �ber die S�ldner?";
};                       

FUNC INT DIA_BAU_7_JOIN_Condition()
{
	if (Npc_GetDistToWP(self, "BIGFARM") < 10000)
	{
		return TRUE;
	};
};

FUNC VOID DIA_BAU_7_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_BAU_7_JOIN_15_00"); //Was wei�t du �ber die S�ldner?
	AI_Output (self, hero, "DIA_BAU_7_JOIN_07_01"); //Sie sind hier um neue Mitglieder anzuwerben. Nebenbei besch�tzen sie uns auch noch vor allen m�glichen Monstern.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_BAU_7_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_BAU_7_PEOPLE_Condition;
	information	= DIA_BAU_7_PEOPLE_Info;
	permanent	= TRUE;
	description = "Wer hat hier das Sagen?";
};                       

FUNC INT DIA_BAU_7_PEOPLE_Condition()
{
	if (Npc_GetDistToWP(self, "BIGFARM") < 10000)
	{
		return TRUE;
	};
};

FUNC VOID DIA_BAU_7_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_BAU_7_PEOPLE_15_00"); //Wer hat hier das Sagen?
	AI_Output (self, hero, "DIA_BAU_7_PEOPLE_07_01"); //Der gro�e Hof geh�rt Onar. Die kleinen H�fe hier in der N�he auch. Aber die hat er verpachtet.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_BAU_7_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_BAU_7_LOCATION_Condition;
	information	= DIA_BAU_7_LOCATION_Info;
	permanent	= TRUE;
	description = "Erz�hl mir mehr �ber die Gegend.";
};                       

FUNC INT DIA_BAU_7_LOCATION_Condition()
{
	if (Npc_GetDistToWP(self, "BIGFARM") < 10000)
	{
		return TRUE;
	};
};

FUNC VOID DIA_BAU_7_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_BAU_7_LOCATION_15_00"); //Erz�hl mir mehr �ber die Gegend.
	AI_Output (self, hero, "DIA_BAU_7_LOCATION_07_01"); //Der gro�e Hof hier im Osten des Tals ist der von Onar, der Hof von Sekob liegt im Norden.
	AI_Output (self, hero, "DIA_BAU_7_LOCATION_07_02"); //Und Bengars Hof liegt auf der Hochebene im S�dwesten. Du kannst sie vom Tal aus erreichen - es gibt eine gro�e Steintreppe dorthin.
};

INSTANCE Info_Mod_BAU_7_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_BAU_7_Pickpocket_Condition;
	information	= Info_Mod_BAU_7_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_BAU_7_Pickpocket_Condition()
{
	C_Beklauen	(8 + r_max(12), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_BAU_7_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_BAU_7_Pickpocket);

	Info_AddChoice	(Info_Mod_BAU_7_Pickpocket, DIALOG_BACK, Info_Mod_BAU_7_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_BAU_7_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_BAU_7_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_BAU_7_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_BAU_7_Pickpocket);
};

FUNC VOID Info_Mod_BAU_7_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_BAU_7_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_BAU_7_Pickpocket);

		Info_AddChoice	(Info_Mod_BAU_7_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_BAU_7_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_BAU_7_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_BAU_7_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_BAU_7_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_BAU_7_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_BAU_7_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_BAU_7_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_BAU_7_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_BAU_7_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_BAU_7_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_BAU_7_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_BAU_7_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_BAU_7 (var c_NPC slf)
{
	DIA_BAU_7_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_BAU_7_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_BAU_7_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_BAU_7_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_BAU_7_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
