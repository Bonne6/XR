INSTANCE Info_Mod_Neol_Hi (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Hi_Condition;
	information	= Info_Mod_Neol_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du siehst aus wie jemand, der gut einen wegstecken kann.";
};

FUNC INT Info_Mod_Neol_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neol_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_15_00"); //Du siehst aus wie jemand, der gut einen wegstecken kann.
	AI_Output(self, hero, "Info_Mod_Neol_Hi_01_01"); //Das kannst du aber laut sagen! Du siehst allerdings nicht so aus, als w�rdest du viel vertragen.

	Info_ClearChoices	(Info_Mod_Neol_Hi);

	Info_AddChoice	(Info_Mod_Neol_Hi, "Da hast du Recht. Ich glaube, ich gehe besser.", Info_Mod_Neol_Hi_B);
	Info_AddChoice	(Info_Mod_Neol_Hi, "Willst du es drauf ankommen lassen?", Info_Mod_Neol_Hi_A);
};

FUNC VOID Info_Mod_Neol_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_B_15_00"); //Da hast du Recht. Ich glaube, ich gehe besser.
	AI_Output(self, hero, "Info_Mod_Neol_Hi_B_01_01"); //Hehe, das ist auch besser f�r dich.

	Info_ClearChoices	(Info_Mod_Neol_Hi);
};

FUNC VOID Info_Mod_Neol_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_A_15_00"); //Willst du es drauf ankommen lassen?
	AI_Output(self, hero, "Info_Mod_Neol_Hi_A_01_01"); //Worauf du einen lassen kannst, B�rschchen. (lacht)
	AI_Output(self, hero, "Info_Mod_Neol_Hi_A_01_02"); //Ich wette mit dir, dass du mich nicht unter den Tisch trinken kannst!

	Info_ClearChoices	(Info_Mod_Neol_Hi);

	Info_AddChoice	(Info_Mod_Neol_Hi, "Nein danke, aus Gl�cksspielen halte ich mich lieber raus.", Info_Mod_Neol_Hi_D);
	Info_AddChoice	(Info_Mod_Neol_Hi, "(St�rke) Ich bin dabei. Her mit dem Bier!", Info_Mod_Neol_Hi_C);
};

FUNC VOID Info_Mod_Neol_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_D_15_00"); //Nein danke, aus Gl�cksspielen halte ich mich lieber raus.
	AI_Output(self, hero, "Info_Mod_Neol_Hi_D_01_01"); //Wie du meinst.

	Info_ClearChoices	(Info_Mod_Neol_Hi);
};

FUNC VOID Info_Mod_Neol_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_00"); //Ich bin dabei. Her mit dem Bier!
	AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_01"); //Hier. M�ge der Bessere gewinnen!

	B_GiveInvItems	(self, hero, ItFo_Beer, 1);
	CreateInvItems	(self, ItFo_Beer, 10);

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);

	if (hero.attribute[ATR_STRENGTH] >= 20)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_02"); //Das war ja gar nichts.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_03"); //Du hast Recht, B�rschchen. Hier ist die n�chste Flasche.

		B_GiveInvItems	(self, hero, ItFo_Beer, 1);
		CreateInvItems	(self, ItFo_Beer, 10);

		B_UseItem	(self, ItFo_Beer);
		B_UseItem	(hero, ItFo_Beer);
	};

	if (hero.attribute[ATR_STRENGTH] >= 40)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_04"); //Mmh, lecker. Davon h�tte ich gerne noch eins.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_05"); //Du hast Recht, B�rschchen. Hier ist die n�chste Flasche.

		B_GiveInvItems	(self, hero, ItFo_Beer, 1);
		CreateInvItems	(self, ItFo_Beer, 10);

		B_UseItem	(self, ItFo_Beer);
		B_UseItem	(hero, ItFo_Beer);
	};

	if (hero.attribute[ATR_STRENGTH] >= 50)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_06"); //Eins geht noch.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_07"); //Jaa ... eins geht immer noch! Hier!

		B_GiveInvItems	(self, hero, ItFo_Beer, 1);
		CreateInvItems	(self, ItFo_Beer, 10);

		B_UseItem	(self, ItFo_Beer);
		B_UseItem	(hero, ItFo_Beer);
	};

	if (hero.attribute[ATR_STRENGTH] >= 60)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_08"); //War das schon alles?
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_09"); //Puh! Mir wird ein bisschen schwummrig. Aber diese Flasche schaff ... schaff ich wohl noch.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_10"); //Hier, noch eine f�r dich.

		B_GiveInvItems	(self, hero, ItFo_Beer, 1);
		CreateInvItems	(self, ItFo_Beer, 10);

		B_UseItem	(self, ItFo_Beer);
		B_UseItem	(hero, ItFo_Beer);
	};

	if (hero.attribute[ATR_STRENGTH] >= 70)
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_11"); //Ich stehe noch!
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_12"); //Ich hab dich escht unnersch�tzt, B�rschsch ... b�r ... mein Freund.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_13"); //Hier, die Flasche geht aufsch Haus!

		CreateInvItems	(hero, ItMi_Gold, 50);
		CreateInvItems	(hero, ItFo_Beer, 1);

		B_ShowGivenThings	("50 Gold und ein Bier erhalten");

		B_GivePlayerXP	(50);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Neol_Hi_C_15_14"); //Puh, mehr vertrage ich nicht.
		AI_Output(self, hero, "Info_Mod_Neol_Hi_C_01_15"); //Ich bin entt�uscht, B�rschchen.
	};

	Info_ClearChoices	(Info_Mod_Neol_Hi);
};

INSTANCE Info_Mod_Neol_Faice01 (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Faice01_Condition;
	information	= Info_Mod_Neol_Faice01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ist in letzter Zeit irgendetwas Verd�chtiges passiert?";
};

FUNC INT Info_Mod_Neol_Faice01_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neol_Faice01_Info()
{
	AI_Output(hero, self, "Info_Mod_Neol_Faice01_15_00"); //Ist in letzter Zeit irgendetwas Verd�chtiges passiert?
	AI_Output(self, hero, "Info_Mod_Neol_Faice01_01_01"); //Nicht, dass ich w�sste. Rede mal mit den anderen.
};

INSTANCE Info_Mod_Neol_Faice02 (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Faice02_Condition;
	information	= Info_Mod_Neol_Faice02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ist dir etwas �ber die Vergiftung der Spruchrolle von Faice zu Ohren gekommen?";
};

FUNC INT Info_Mod_Neol_Faice02_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neol_Faice02_Info()
{
	AI_Output(hero, self, "Info_Mod_Neol_Faice02_15_00"); //Ist dir etwas �ber die Vergiftung der Spruchrolle von Faice zu Ohren gekommen?
	AI_Output(self, hero, "Info_Mod_Neol_Faice02_01_01"); //Nein, nichts Neues.
};

INSTANCE Info_Mod_Neol_Faice03 (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Faice03_Condition;
	information	= Info_Mod_Neol_Faice03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gibt es sonst noch etwas, das du loswerden m�chtest?";
};

FUNC INT Info_Mod_Neol_Faice03_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Furt_Faice02))
	&& (Mod_VMG_FaiceGifty_Gift == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neol_Faice03_Info()
{
	AI_Output(hero, self, "Info_Mod_Neol_Faice03_15_00"); //Gibt es sonst noch etwas, das du loswerden m�chtest?
	AI_Output(self, hero, "Info_Mod_Neol_Faice03_01_01"); //Sprich mal mit Furt. Er k�nnte vielleicht mehr wissen.
};

INSTANCE Info_Mod_Neol_Pickpocket (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_Pickpocket_Condition;
	information	= Info_Mod_Neol_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Neol_Pickpocket_Condition()
{
	C_Beklauen	(64, ItMi_Gold, 90);
};

FUNC VOID Info_Mod_Neol_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Neol_Pickpocket);

	Info_AddChoice	(Info_Mod_Neol_Pickpocket, DIALOG_BACK, Info_Mod_Neol_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Neol_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Neol_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Neol_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Neol_Pickpocket);
};

FUNC VOID Info_Mod_Neol_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Neol_Pickpocket);
};

INSTANCE Info_Mod_Neol_EXIT (C_INFO)
{
	npc		= Mod_1625_VMG_Neol_MT;
	nr		= 1;
	condition	= Info_Mod_Neol_EXIT_Condition;
	information	= Info_Mod_Neol_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Neol_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neol_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};