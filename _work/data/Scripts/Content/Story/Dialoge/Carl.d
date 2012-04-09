INSTANCE Info_Mod_Carl_Hi (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Hi_Condition;
	information	= Info_Mod_Carl_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Carl_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Carl_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Carl_Hi_05_00"); //Ich bin Carl, der Schmied.
};

INSTANCE Info_Mod_Carl_Flugbl�tter (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Flugbl�tter_Condition;
	information	= Info_Mod_Carl_Flugbl�tter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab hier ein Flugblatt f�r dich.";
};

FUNC INT Info_Mod_Carl_Flugbl�tter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugbl�tter) >= 1)
	&& (Mod_Flugbl�tter	<	20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugbl�tter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Carl_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Carl_Flugbl�tter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugbl�tter, 1);

	AI_Output(self, hero, "Info_Mod_Carl_Flugbl�tter_05_01"); //Oh danke. Mal sehen ...

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Carl_Flugbl�tter_05_02"); //Ah ja. Vielleicht werd ich mal bei Matteo vorbeischauen.

	Mod_Flugbl�tter	=	Mod_Flugbl�tter + 1;
};

INSTANCE Info_Mod_Carl_Lehrer (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Lehrer_Condition;
	information	= Info_Mod_Carl_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir was beibringen?";
};

FUNC INT Info_Mod_Carl_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Carl_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Carl_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Carl_Lehrer_05_00"); //Ich kann dir nur zeigen wie du st�rker wirst, das Schmieden kann ich dir nicht beibringen.
	AI_Output(self, hero, "Info_Mod_Carl_Lehrer_05_01"); //Wenn du das lernen willst, dann musst du zu Harad gehen.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Carl kann mir helfen st�rker zu werden.");
};

INSTANCE Info_Mod_Carl_Lernen (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Lernen_Condition;
	information	= Info_Mod_Carl_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich will st�rker werden!";
};

FUNC INT Info_Mod_Carl_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Carl_Lehrer))
	&& (hero.attribute[ATR_STRENGTH] < 60)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Carl_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Carl_Lernen_15_00"); //Ich will st�rker werden!

	Info_ClearChoices	(Info_Mod_Carl_Lernen);

	Info_AddChoice	(Info_Mod_Carl_Lernen, DIALOG_BACK, Info_Mod_Carl_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_5);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_1);
};

FUNC VOID Info_Mod_Carl_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Carl_Lernen);
};

FUNC VOID Info_Mod_Carl_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 60);
	
	Info_ClearChoices	(Info_Mod_Carl_Lernen);

	Info_AddChoice	(Info_Mod_Carl_Lernen, DIALOG_BACK, Info_Mod_Carl_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_5);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_1);
};

FUNC VOID Info_Mod_Carl_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_STRENGTH, 1, 60);
	
	Info_ClearChoices	(Info_Mod_Carl_Lernen);

	Info_AddChoice	(Info_Mod_Carl_Lernen, DIALOG_BACK, Info_Mod_Carl_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_5);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_1);
};

INSTANCE Info_Mod_Carl_Pickpocket (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Pickpocket_Condition;
	information	= Info_Mod_Carl_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_20;
};

FUNC INT Info_Mod_Carl_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Carl_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Carl_Pickpocket);

	Info_AddChoice	(Info_Mod_Carl_Pickpocket, DIALOG_BACK, Info_Mod_Carl_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Carl_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Carl_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Carl_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Carl_Pickpocket);
};

FUNC VOID Info_Mod_Carl_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Carl_Pickpocket);
};

INSTANCE Info_Mod_Carl_EXIT (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_EXIT_Condition;
	information	= Info_Mod_Carl_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Carl_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Carl_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};