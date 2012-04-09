INSTANCE Info_Mod_Raeuber03_Hi (C_INFO)
{
	npc		= Mod_7512_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber03_Hi_Condition;
	information	= Info_Mod_Raeuber03_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Raeuber03_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raeuber03_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Raeuber03_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Raeuber03_Hi_06_01"); //Zieh Leine!
};

INSTANCE Info_Mod_Raeuber03_Frauenkleider (C_INFO)
{
	npc		= Mod_7512_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber03_Frauenkleider_Condition;
	information	= Info_Mod_Raeuber03_Frauenkleider_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wei�t du, dass Melvin verr�ckt ist?";
};

FUNC INT Info_Mod_Raeuber03_Frauenkleider_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raeuber03_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Melvin_Frauenkleider))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raeuber03_Frauenkleider_Info()
{
	AI_Output(hero, self, "Info_Mod_Raeuber03_Frauenkleider_15_00"); //Wei�t du, dass Melvin verr�ckt ist?
	AI_Output(self, hero, "Info_Mod_Raeuber03_Frauenkleider_06_01"); //Wegen seinem Kleid? Ich find's eigentlich ganz gut.
	AI_Output(hero, self, "Info_Mod_Raeuber03_Frauenkleider_15_02"); //Du wei�t aber, dass Kleider normalerweise von Frauen getragen werden?
	AI_Output(self, hero, "Info_Mod_Raeuber03_Frauenkleider_06_03"); //Laber nich! Das w�rd ja bedeuten ...
	AI_Output(hero, self, "Info_Mod_Raeuber03_Frauenkleider_15_04"); //Du solltest ihn sofort davon abbringen.
	AI_Output(self, hero, "Info_Mod_Raeuber03_Frauenkleider_06_05"); //Und wie!

	AI_StandUp	(self);

	AI_GotoNpc	(self, Mod_7505_BDT_Melvin_REL);

	AI_TurnToNpc	(self, Mod_7505_BDT_Melvin_REL);

	AI_Output(self, hero, "Info_Mod_Raeuber03_Frauenkleider_06_06"); //Normalerweise tragen Frauen Kleider!

	Mod_REL_Frauenkleider03 = 1;

	if (Mod_REL_Frauenkleider01 == 1)
	&& (Mod_REL_Frauenkleider02 == 1)
	&& (Mod_REL_Frauenkleider03 == 1)
	{
		B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Nun sollte Melvin weichgeklopft sein.");
	};

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Raeuber03_Bierhexen (C_INFO)
{
	npc		= Mod_7512_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber03_Bierhexen_Condition;
	information	= Info_Mod_Raeuber03_Bierhexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Raeuber03_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raeuber02_Bierhexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raeuber03_Bierhexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Raeuber03_Bierhexen_06_00"); //Das war doch Leonhard.
	AI_Output(hero, self, "Info_Mod_Raeuber03_Bierhexen_15_01"); //Leonhard?
	AI_Output(self, hero, "Info_Mod_Raeuber03_Bierhexen_06_02"); //Hat's mir jedenfalls stolz erz�hlt. Als ob das so was Besonderes w�re.
	AI_Output(hero, self, "Info_Mod_Raeuber03_Bierhexen_15_03"); //Wo finde ich Leonhard?
	AI_Output(self, hero, "Info_Mod_Raeuber03_Bierhexen_06_04"); //Der lungert in den Gassen von Khorata rum. Hat halt nicht so ein tolles Versteck wie wir.
	AI_Output(hero, self, "Info_Mod_Raeuber03_Bierhexen_15_05"); //Wo finde ich Leonhard?

	B_LogEntry	(TOPIC_MOD_KHORATA_BIERHEXEN, "Nach Angaben eines Kumpanen von Melvin ist Leonhard in Khorata der �belt�ter.");
};

INSTANCE Info_Mod_Raeuber03_Pickpocket (C_INFO)
{
	npc		= Mod_7512_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber03_Pickpocket_Condition;
	information	= Info_Mod_Raeuber03_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Raeuber03_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Raeuber03_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Raeuber03_Pickpocket);

	Info_AddChoice	(Info_Mod_Raeuber03_Pickpocket, DIALOG_BACK, Info_Mod_Raeuber03_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Raeuber03_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Raeuber03_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Raeuber03_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Raeuber03_Pickpocket);
};

FUNC VOID Info_Mod_Raeuber03_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Raeuber03_Pickpocket);
};

INSTANCE Info_Mod_Raeuber03_EXIT (C_INFO)
{
	npc		= Mod_7512_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber03_EXIT_Condition;
	information	= Info_Mod_Raeuber03_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raeuber03_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raeuber03_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};