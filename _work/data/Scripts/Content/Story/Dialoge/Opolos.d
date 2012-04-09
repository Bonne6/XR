INSTANCE Info_Mod_Opolos_Daemonisch (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Daemonisch_Condition;
	information	= Info_Mod_Opolos_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Opolos_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Opolos_Drachenangriff))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Opolos_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_12_00"); //Hmm, ja Babo hat sich wirklich rasch erholt. Nur etwas frische Luft schnappen und er ist wie ausgewechselt.
	AI_Output(hero, self, "Info_Mod_Opolos_Daemonisch_15_01"); //Frische Luft schnappen? Was meinst du?
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_12_02"); //Naja, andere Novizen haben ihn glaube ich zu einem kleinen Spaziergang ermuntert. Und danach war er wie neu ...
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_12_03"); //Jaja, die Jungs gehen in letzter Zeit ziemlich oft raus, irgendwelche Erledigungen in der Taverne oder der Stadt.
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_12_04"); //Ich jedoch muss hier bleiben und die Schafe h�ten. Na ja, wenigstens hat mich die Magenerkrankung nicht erwischt.
	AI_Output(hero, self, "Info_Mod_Opolos_Daemonisch_15_05"); //Magenerkrankung?
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_12_06"); //Ja, einige Novizen haben seit paar Tagen Magenprobleme und k�nnen kaum noch was Essen.
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_12_07"); //Sogar den Klosterwein nach dem Gebet vertragen sie vorl�ufig nicht.
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_12_08"); //Sind wegen der Sache auch etwas abgemagert und k�nnen nur noch leichte Aufgaben erf�llen, wie eben die Boteng�nge.

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha. Ein kurzer abendlicher Spaziergang soll Babo also wieder auf die Beine geholfen haben, zu welchem ihn andere Novizen ermuntert hatten. Derweil hindert eine Magenerkrankung viele Novizen daran den Klosterwein zu trinken. Sie sollen auch merklich an K�rperf�lle verloren haben, wie Opolos berichtet.");
};

INSTANCE Info_Mod_Opolos_Drachenangriff (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Drachenangriff_Condition;
	information	= Info_Mod_Opolos_Drachenangriff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hallo, was machst du denn hier?";
};

FUNC INT Info_Mod_Opolos_Drachenangriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Kloster))
	&& (Mod_NL_DragonKloster == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Opolos_Drachenangriff_Info()
{
	AI_Output(hero, self, "Info_Mod_Opolos_Drachenangriff_15_00"); //Hallo, was machst du denn hier? Solltest du nicht im Kloster deinen Aufgaben nachgehen?
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_12_01"); //(betrunken) Meinen Aufgaben?!
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_12_02"); //Als die Horde D�monen �ber unser Kloster hereinbrach, wurden alle Schafe gefressen, die ich doch beh�ten sollte.
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_12_03"); //Man hat mich nun aus dem Kloster geworfen, da man mir vorwarf, meiner Aufgabe nicht gewissenhaft genug nachgekommen zu sein.
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_12_04"); //(kurze Pause) Ach, Innos scheint in diesen finsteren Tagen wirklich fern zu sein.
};

INSTANCE Info_Mod_Opolos_Unkraut (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Unkraut_Condition;
	information	= Info_Mod_Opolos_Unkraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Opolos_Unkraut_Condition()
{
	if (Npc_HasItems(hero, ItPl_Unkraut_Gorax) == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Opolos_Unkraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_12_00"); //He, wie ich gesehen habe, hast du das ganze Unkraut um die Weinreben rausgerissen.
	AI_Output(hero, self, "Info_Mod_Opolos_Unkraut_15_01"); //Ja, wieso?
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_12_02"); //Nun, weil sie meinen Schafen sehr gut schmecken. Wie du siehst, findest du auch auf der Wiese kein einziges Unkrautpfl�nzchen.
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_12_03"); //Zu den Reben konnte ich sie nat�rlich nicht schicken, da sie diese sonst mit gefressen h�tten.
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_12_04"); //Aber da du sie ja alle rausgerissen hast ...
	AI_Output(hero, self, "Info_Mod_Opolos_Unkraut_15_05"); //Nat�rlich, ich brauche sie nicht ... hier hast du sie.

	B_GiveInvItems	(hero, self, ItPl_Unkraut_Gorax, 8);

	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_12_06"); //Super.

	AI_GotoNpc	(self, Sheep);

	AI_TurnToNpc	(self, Sheep);

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_12_07"); //Ja, das schmeckt ihnen... . Danke dir.

	B_GivePlayerXP	(80);
};

INSTANCE Info_Mod_Opolos_Pickpocket (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Pickpocket_Condition;
	information	= Info_Mod_Opolos_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Opolos_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

	Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_BACK, Info_Mod_Opolos_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Opolos_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);
};

INSTANCE Info_Mod_Opolos_EXIT (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_EXIT_Condition;
	information	= Info_Mod_Opolos_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Opolos_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Opolos_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};