INSTANCE Info_Mod_Herold_Hi (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_Hi_Condition;
	information	= Info_Mod_Herold_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Herold_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Herold_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Herold_Hi_04_01"); //Ich bin Herold. Meine Aufgabe ist es hier die Neuigkeiten zu verk�nden.
};

INSTANCE Info_Mod_Herold_Flugblaetter (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_Flugblaetter_Condition;
	information	= Info_Mod_Herold_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab hier ein Flugblatt. K�nntest du nicht etwas Werbung daf�r machen?";
};

FUNC INT Info_Mod_Herold_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Herold_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Herold_Flugblaetter_Info()
{
	AI_Output(hero, self, "Info_Mod_Herold_Flugblaetter_15_00"); //Ich hab hier ein Flugblatt. K�nntest du nicht etwas Werbung daf�r machen?

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Herold_Flugblaetter_04_01"); //Mal sehen ...

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Herold_Flugblaetter_04_02"); //Matteo hat K�se im Angebot? Nun gut, ich werde das Angebot eine Weile verk�nden.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Herold_Verbrecher (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_Verbrecher_Condition;
	information	= Info_Mod_Herold_Verbrecher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du musst etwas verk�nden.";
};

FUNC INT Info_Mod_Herold_Verbrecher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Herold_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Kerze))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Herold_Verbrecher_Info()
{
	AI_Output(hero, self, "Info_Mod_Herold_Verbrecher_15_00"); //Du musst etwas verk�nden.
	AI_Output(self, hero, "Info_Mod_Herold_Verbrecher_04_01"); //Worum geht's?
	AI_Output(hero, self, "Info_Mod_Herold_Verbrecher_15_02"); //Letzte Nacht hat ein gef�hrlicher Irrer in einem bunten Kost�m mit Schachkragen vier Milizen ermordet.
	AI_Output(hero, self, "Info_Mod_Herold_Verbrecher_15_03"); //Du musst die B�rger der Stadt unbedingt davor warnen.
	AI_Output(self, hero, "Info_Mod_Herold_Verbrecher_04_04"); //Das ist ja schrecklich. Gut, dass du damit zu mir gekommen bist.

	B_LogEntry	(TOPIC_MOD_PAL_BOT, "Der Herold wird die Bewohner von Khorinis irre f�hren. Jetzt zur�ck zu Lord Andre.");
};

INSTANCE Info_Mod_Herold_Pickpocket (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_Pickpocket_Condition;
	information	= Info_Mod_Herold_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Herold_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Herold_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Herold_Pickpocket);

	Info_AddChoice	(Info_Mod_Herold_Pickpocket, DIALOG_BACK, Info_Mod_Herold_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Herold_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Herold_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Herold_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Herold_Pickpocket);
};

FUNC VOID Info_Mod_Herold_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Herold_Pickpocket);
};

INSTANCE Info_Mod_Herold_EXIT (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_EXIT_Condition;
	information	= Info_Mod_Herold_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Herold_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Herold_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};