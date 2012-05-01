INSTANCE Info_Mod_Jerry_Hi (C_INFO)
{
	npc		= Mod_7536_KG_Jerry_MT;
	nr		= 1;
	condition	= Info_Mod_Jerry_Hi_Condition;
	information	= Info_Mod_Jerry_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Jerry_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jerry_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Jerry_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Jerry_Hi_04_01"); //Hey.
	AI_Output(hero, self, "Info_Mod_Jerry_Hi_15_02"); //Du scheinst ja noch eine menge Arbeit vor dir zu haben.
	AI_Output(self, hero, "Info_Mod_Jerry_Hi_04_03"); //Genau diese Art von Arbeit bekommt man hier als neuer Soldat.
	AI_Output(self, hero, "Info_Mod_Jerry_Hi_04_04"); //Die bei der Miliz wollten mich nicht, aber der Oberbefehlshaber der Miliz meinte, es g�be auch f�r mich eine M�glichkeit, das Milit�r zu unterst�tzen.
	AI_Output(self, hero, "Info_Mod_Jerry_Hi_04_05"); //Und jetzt schau dir an, wo ich gelandet bin, an der Front und darf das Lager ausbessern.
	AI_Output(hero, self, "Info_Mod_Jerry_Hi_15_06"); //Das Gef�hl an der Front zu sein hab ich auch �fters ...
};

INSTANCE Info_Mod_Jerry_Lehrer (C_INFO)
{
	npc		= Mod_7536_KG_Jerry_MT;
	nr		= 1;
	condition	= Info_Mod_Jerry_Lehrer_Condition;
	information	= Info_Mod_Jerry_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mich Trainieren?";
};

FUNC INT Info_Mod_Jerry_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jerry_Hi))
	&& (KG_Dabei == 1)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jerry_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Jerry_Lehrer_15_00"); //Kannst du mich Trainieren?
	AI_Output(self, hero, "Info_Mod_Jerry_Lehrer_04_01"); //Na klar, wir Neuen sollten doch zusammen halt.
	AI_Output(self, hero, "Info_Mod_Jerry_Lehrer_04_02"); //Wenn du willst kann ich dir ein paar Sachen im Einhandkampf zeigen.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KG, "Jerry kann mir den Umgang mit Einh�ndern beibringen.");
};

INSTANCE Info_Mod_Jerry_Lernen (C_INFO)
{
	npc		= Mod_7536_KG_Jerry_MT;
	nr		= 1;
	condition	= Info_Mod_Jerry_Lernen_Condition;
	information	= Info_Mod_Jerry_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich will lernen.";
};

FUNC INT Info_Mod_Jerry_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jerry_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jerry_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Jerry_Lernen_15_00"); //Ich will lernen.

	Info_ClearChoices	(Info_Mod_Jerry_Lernen);

	Info_AddChoice	(Info_Mod_Jerry_Lernen, DIALOG_BACK, Info_Mod_Jerry_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Jerry_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Jerry_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Jerry_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Jerry_Lernen_1H_1);
};

FUNC VOID Info_Mod_Jerry_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Jerry_Lernen);
};

FUNC VOID Info_Mod_Jerry_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Jerry_Lernen);

		Info_AddChoice	(Info_Mod_Jerry_Lernen, DIALOG_BACK, Info_Mod_Jerry_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Jerry_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Jerry_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Jerry_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Jerry_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Jerry_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Jerry_Lernen);

		Info_AddChoice	(Info_Mod_Jerry_Lernen, DIALOG_BACK, Info_Mod_Jerry_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Jerry_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Jerry_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Jerry_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Jerry_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Jerry_Pickpocket (C_INFO)
{
	npc		= Mod_7536_KG_Jerry_MT;
	nr		= 1;
	condition	= Info_Mod_Jerry_Pickpocket_Condition;
	information	= Info_Mod_Jerry_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Jerry_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 1000);
};

FUNC VOID Info_Mod_Jerry_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jerry_Pickpocket);

	Info_AddChoice	(Info_Mod_Jerry_Pickpocket, DIALOG_BACK, Info_Mod_Jerry_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jerry_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jerry_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jerry_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jerry_Pickpocket);
};

FUNC VOID Info_Mod_Jerry_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jerry_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jerry_Pickpocket);

		Info_AddChoice	(Info_Mod_Jerry_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jerry_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jerry_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jerry_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jerry_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jerry_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jerry_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jerry_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jerry_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jerry_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jerry_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jerry_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jerry_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jerry_EXIT (C_INFO)
{
	npc		= Mod_7536_KG_Jerry_MT;
	nr		= 1;
	condition	= Info_Mod_Jerry_EXIT_Condition;
	information	= Info_Mod_Jerry_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jerry_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jerry_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};