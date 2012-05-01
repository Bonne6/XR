INSTANCE Info_Mod_Sonor_Hi (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_Hi_Condition;
	information	= Info_Mod_Sonor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Sonor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonor_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Sonor_Hi_06_00"); //Sonor. J�ger und Anw�rter f�r meine Aufnahme bei den Waldl�ufern.
	AI_Output(hero, self, "Info_Mod_Sonor_Hi_15_01"); //Du willst Waldl�ufer werden? Geht das?
	AI_Output(self, hero, "Info_Mod_Sonor_Hi_06_02"); //Hab ich doch gesagt. Daf�r sorge ich mit Baldur und noch einem im Lager f�r Fleisch und Felle.
};

INSTANCE Info_Mod_Sonor_CyrcoMine (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_CyrcoMine_Condition;
	information	= Info_Mod_Sonor_CyrcoMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hallo Waidmann! Ich habe eine Mission. Bist du dabei?";
};

FUNC INT Info_Mod_Sonor_CyrcoMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_BaalOrun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonor_CyrcoMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonor_CyrcoMine_15_00"); //Hallo Waidmann! Ich habe eine Mission. Bist du dabei?
	AI_Output(self, hero, "Info_Mod_Sonor_CyrcoMine_06_01"); //Aber ja doch. Bin noch warm von vorhin. Denen haben wir's gezeigt. Was liegt jetzt an?
	AI_Output(hero, self, "Info_Mod_Sonor_CyrcoMine_15_02"); //Wir m�ssen zur Alten Mine. Irgendeine H�hle. Mehr wei� ich auch noch nicht.
	AI_Output(self, hero, "Info_Mod_Sonor_CyrcoMine_06_03"); //Nur zu. Sag Bescheid, wenn's losgeht.
	AI_Output(hero, self, "Info_Mod_Sonor_CyrcoMine_15_04"); //Ei gewiss doch.

	if (Npc_KnowsInfo(hero, Info_Mod_Zelar_CyrcoMine))
	{
		B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "So, ich habe alles beisammen. Ausr�stung und zwei Mann. Sonor und Zelar werden mitgehen. Noch mal bei Cyrco vorbeischauen ...");
	};
};

INSTANCE Info_Mod_Sonor_AlterMann (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_AlterMann_Condition;
	information	= Info_Mod_Sonor_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wegen altem Mann im Wald fragen.";
};

FUNC INT Info_Mod_Sonor_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonor_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_00"); //Ahh, du meinst den alten Mann des Waldes. Ja, etwas wei� ich �ber ihn.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_01"); //Er soll Jahrhunderte alt sein und die Tiere des Waldes Rund um Khorata beh�ten.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_02"); //Zwar sagt man, er sei blind, jedoch gleichzeitig auch magisch begabt.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_03"); //Mehr f�llt mir gerade nicht ein. Vielleicht wei� ein anderer mehr.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Von dem ersten Waldl�ufer erfuhr ich nicht viel Neues. Der alte Mann des Waldes, beh�tet die Tiere, er ist uralt, blind und magisch begabt. Vielleicht wei� ein anderer Waldl�ufer mehr.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_04"); //Der alte Mann des Waldes? Ja, ich h�rte er solle einst ein Diener Adanos gewesen sein.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_05"); //Wobei unklar ist, ob er ein Waldl�ufer war wie wir, ein Magier des Wassers, oder ein Verwandlungsmagier.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_06"); //Seine magischen F�higkeiten, wie auch seine starke Bindung zur Tier- und Pflanzenwelt zeugen davon, dass er von allem etwas hat.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Beim 2ten Waldl�ufer erfuhr ich auch nicht viel wissenswertes. Der alte Mann des Waldes soll Adanos und der Sch�pfung verbunden sein, allem voran der Tier und Pflanzenwelt.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_07"); //Tja, viel kann ich dir nicht �ber ihn verraten.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_08"); //Das Problem besteht auch darin, dass er mit keinem Menschen spricht, nicht mal mit uns, auch, wenn wir eigentlich �hnliche Ziele verfolgen.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_09"); //Allein mit den Tieren des Waldes unterh�lt er sich.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_10"); //Tja, wenn ich ein Keiler w�re, k�nnte ich dir bestimmt mehr �ber ihn verraten.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, das k�nnte ein wichtiger Hinweis gewesen sein. Der alte Mann des Waldes meidet Menschen g�nzlich, spricht nur mit Tieren.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_11"); //Der alte Mann des Waldes? Nun, er soll in enger Beziehung zur Tier- und Pflanzenwelt stehen.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_12"); //Man sagt, er leite Rudeltiere wie Keiler, oder W�lfe dazu an, den Wald gegen Eindringlinge zu besch�tzen.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_13"); //Selbst, so sagt man, f�nde man ihn h�ufig in Gestalt eines gr�nen Wolfes vor.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Er soll vor allem auch gr��ere Rudeltiere wie Keiler und W�lfe dazu anleiten den Wald gegen Eindringlinge zu besch�tzen.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_14"); //Du interessierst dich f�r Geschichten �ber den alten Mann des Waldes?
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_15"); //Nun, viel wei� ich nicht �ber diesen mystischen Kauz.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_16"); //Er soll sich meistens im dunklen Wald aufhalten, aber auch immer in der N�he von Gew�ssern, wie Seen.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_17"); //Selten hat ihn jemand zu Gesicht bekommen ...

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Man findet ihn h�chst wahrscheinlich im dichten Wald Khorata�s in der N�he eines Sees.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Sonor_Heiltrank (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_Heiltrank_Condition;
	information	= Info_Mod_Sonor_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(Heiltrank geben)";
};

FUNC INT Info_Mod_Sonor_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	Info_AddChoice	(Info_Mod_Sonor_Heiltrank, DIALOG_BACK, Info_Mod_Sonor_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Essenz der Heilung", Info_Mod_Sonor_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Elixier der Heilung", Info_Mod_Sonor_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Extrakt der Heilung", Info_Mod_Sonor_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Essenz der Heilung", Info_Mod_Sonor_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Trank der leichten Heilung", Info_Mod_Sonor_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Leichter Heiltrank", Info_Mod_Sonor_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Trank der schnellen Heilung", Info_Mod_Sonor_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Sonor_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Sonor_Pickpocket (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_Pickpocket_Condition;
	information	= Info_Mod_Sonor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Sonor_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 1000);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

	Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_BACK, Info_Mod_Sonor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sonor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);
};

FUNC VOID Info_Mod_Aabid_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

		Info_AddChoice	(Info_Mod_Aabid_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Aabid_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Aabid_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Aabid_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Aabid_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Aabid_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Aabid_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Aabid_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Aabid_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sonor_EXIT (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_EXIT_Condition;
	information	= Info_Mod_Sonor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sonor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};