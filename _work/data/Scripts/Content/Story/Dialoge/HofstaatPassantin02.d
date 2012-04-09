INSTANCE Info_Mod_HofstaatPassantin02_Fluffy (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Fluffy_Condition;
	information	= Info_Mod_HofstaatPassantin02_Fluffy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Fluffy_Condition()
{
	if (Mod_SL_PartFluffy == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Fluffy_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Fluffy_16_00"); //Stimmt genau. Ob jemand, der nicht mal einen Hund abrichten kann wirklich einen Staat leiten sollte? Ich wei� nicht ...

	Mod_SL_PartFluffy = 5;

	B_SetTopicStatus	(TOPIC_MOD_SL_FLUFFY, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Lochgraeber (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Lochgraeber_Condition;
	information	= Info_Mod_HofstaatPassantin02_Lochgraeber_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Lochgraeber_Condition()
{
	if (Mod_SL_PartLochgraeber == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Lochgraeber_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Lochgraeber_16_00"); //Was ist das f�r ein K�nigreich, das sich im internationalen Lochgr�bervergleich nicht halten kann!

	Mod_SL_PartLochgraeber = 4;

	B_SetTopicStatus	(TOPIC_MOD_SL_LOCHGRAEBER, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Geliebte (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Geliebte_Condition;
	information	= Info_Mod_HofstaatPassantin02_Geliebte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Geliebte_Condition()
{
	if (Mod_SL_PartGeliebte == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Geliebte_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Geliebte_16_00"); //Was ist das f�r ein K�nigreich, das sich im internationalen Lochgr�bervergleich nicht halten kann!

	Mod_SL_PartGeliebte = 8;

	B_SetTopicStatus	(TOPIC_MOD_SL_GELIEBTE, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Blind (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Blind_Condition;
	information	= Info_Mod_HofstaatPassantin02_Blind_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Blind_Condition()
{
	if (Mod_SL_PartBlind == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Blind_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Blind_16_00"); //Was ist das denn f�r ein K�nigreich, ohne Export! Das geht doch gar nicht!

	Mod_SL_PartBlind = 5;

	B_SetTopicStatus	(TOPIC_MOD_SL_BLIND, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Brunnen (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Brunnen_Condition;
	information	= Info_Mod_HofstaatPassantin02_Brunnen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Brunnen_Condition()
{
	if (Mod_SL_PartBrunnen == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Brunnen_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Brunnen_16_00"); //Da hast du recht! Was ist denn das f�r ein K�nig, der in so einer Ruine lebt??

	Mod_SL_PartBrunnen = 3;

	B_SetTopicStatus	(TOPIC_MOD_SL_BRUNNEN, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Geschwaecht (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Geschwaecht_Condition;
	information	= Info_Mod_HofstaatPassantin02_Geschwaecht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Geschwaecht_Condition()
{
	if (Mod_SL_Schwaechen == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Geschwaecht_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Geschwaecht_16_00"); //Ja, du hast recht, ich f�hle mich so ... geschw�cht ... als w�re meine Motivation unterwandert und so.

	Mod_SL_Schwaechen = 4;

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Ich habe den Hofstaat geschw�cht und ihre Motivation unterwandert und so. Ich sollte jetzt zu Baal Namib zur�ck kehren.");

	B_GivePlayerXP	(500);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Pickpocket (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Pickpocket_Condition;
	information	= Info_Mod_HofstaatPassantin02_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatPassantin02_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_HofstaatPassantin02_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatPassantin02_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatPassantin02_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatPassantin02_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatPassantin02_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatPassantin02_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatPassantin02_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);
};

INSTANCE Info_Mod_HofstaatPassantin02_EXIT (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_EXIT_Condition;
	information	= Info_Mod_HofstaatPassantin02_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatPassantin02_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatPassantin02_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};