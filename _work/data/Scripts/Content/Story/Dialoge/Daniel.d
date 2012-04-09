INSTANCE Info_Mod_Daniel_Hi (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_Hi_Condition;
	information	= Info_Mod_Daniel_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du bist ein H�ndler?";
};

FUNC INT Info_Mod_Daniel_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Daniel_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Daniel_Hi_15_00"); //Du bist ein H�ndler?
	AI_Output(self, hero, "Info_Mod_Daniel_Hi_11_01"); //Das ist richtig. Mein Angebot umfasst alle Gegenst�nde, die du als Magier n�tzlich finden kannst.
	AI_Output(self, hero, "Info_Mod_Daniel_Hi_11_02"); //Willst du mein Sonderangebot h�ren?

	Log_CreateTopic	(TOPIC_MOD_HAENDLER_KHORATA, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_KHORATA, "Daniel verkauft verschiedene Gegenst�nde f�r Magier.");

	Info_ClearChoices	(Info_Mod_Daniel_Hi);

	Info_AddChoice	(Info_Mod_Daniel_Hi, "Nein, ich m�chte mir nur deine Waren ansehen.", Info_Mod_Daniel_Hi_B);
	Info_AddChoice	(Info_Mod_Daniel_Hi, "Ja, bitte.", Info_Mod_Daniel_Hi_A);
};

FUNC VOID Info_Mod_Daniel_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Daniel_Hi_B_15_00"); //Nein, ich m�chte mir nur deine Waren ansehen.

	Info_ClearChoices	(Info_Mod_Daniel_Hi);
};

FUNC VOID Info_Mod_Daniel_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Daniel_Hi_A_15_00"); //Ja, bitte.
	AI_Output(self, hero, "Info_Mod_Daniel_Hi_A_11_01"); //Ich habe eine �berm��ige Lieferung an Eisspruchrollen erhalten. Eislanze, Eispfeil, Eisblock und Eiswelle kannst du bei mir zum halben Preis kaufen. Interesse?

	Info_ClearChoices	(Info_Mod_Daniel_Hi);
};

INSTANCE Info_Mod_Daniel_Nagelnachschub (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_Nagelnachschub_Condition;
	information	= Info_Mod_Daniel_Nagelnachschub_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Hast du zuf�llig ein paar N�gel?";
};                       

FUNC INT Info_Mod_Daniel_Nagelnachschub_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Wettstreit))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Daniel_Nagelnachschub_Info()
{
	AI_Output(hero, self, "Info_Mod_Daniel_Nagelnachschub_15_00"); //Hast du zuf�llig ein paar N�gel?
	AI_Output(self, hero, "Info_Mod_Daniel_Nagelnachschub_11_01"); //Tut mir Leid, damit kann ich nicht dienen.
	AI_Output(self, hero, "Info_Mod_Daniel_Nagelnachschub_11_02"); //Aber ich bin mir sicher, meine etwas ... grobschl�chtigen Kollegen k�nnen dir weiterhelfen. (r�mpft die Nase)
};

INSTANCE Info_Mod_Daniel_BrokenRune (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_BrokenRune_Condition;
	information	= Info_Mod_Daniel_BrokenRune_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Tag, ich habe eine Frage.";
};                       

FUNC INT Info_Mod_Daniel_BrokenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_Hi))
	&& (Npc_HasItems(hero, ItMi_BrokenRune01) == 1)
	&& (Npc_HasItems(hero, ItMi_BrokenRune02) == 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Daniel_BrokenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune_15_00"); //Tag, ich habe eine Frage.
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune_11_01"); //Du willst etwas kaufen? Ich zeig dir gern meine Waren.
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune_15_02"); //Nein, nein. Ich suche eigentlich einen Magier. Habt ihr einen im Ort.
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune_11_03"); //Nun es gibt da Fuego, ein Feuermagier. Du findest in im Haus der Feuermagier.
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune_15_04"); //Danke Mann. Ich schau dann mal.
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune_11_05"); //Langsam. Dann ist da noch ein Wassermagier. Ein seltsamer Kauz.
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune_11_06"); //Lebt irgendwo im Armenviertel. Wo genau, wei� ich nicht.
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune_15_07"); //Jo. Danke nochmal.

	Log_CreateTopic	(TOPIC_MOD_JG_RUNENZAUBER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_RUNENZAUBER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "Es gibt zwei wichtige Magier hier in Khorata: Den Feuermagier Fuego im Magierhaus und einen Wassermagier im Armenviertel.");
	B_SetTopicStatus	(TOPIC_MOD_JG_PENNERSVATER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Daniel_BrokenRune2 (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_BrokenRune2_Condition;
	information	= Info_Mod_Daniel_BrokenRune2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Guten Tag. Ich sehe, du hast allerlei Magie anzubieten.";
};                       

FUNC INT Info_Mod_Daniel_BrokenRune2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_BrokenRune))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Daniel_BrokenRune2_Info()
{
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune2_15_00"); //Guten Tag. Ich sehe, du hast allerlei Magie anzubieten.
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune2_11_01"); //Wohl war. Was darf's sein? Ein Trank? Eine Rolle? Oder ein Kraut?
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune2_15_02"); //Nichts da. Ich suche die Adanosfigur, die dir der Wassermagier verkauft hat.
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune2_11_03"); //Ja, ein selten sch�nes Teil. Nur leider hab ich's nicht mehr.
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune2_15_04"); //Und wem hast du es verkauft?
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune2_11_05"); //Lass mich nachdenken ... Ja, der Kollege, der mit Rarit�ten handelt.
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune2_11_06"); //Wobei ich nicht glaube, dass alles echt ist, was er verkauft ...
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune2_15_07"); //Danke f�r den Tipp.

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "Daniel hat die Adanosfigur an den Rarit�tenh�ndler verkauft.");
};

INSTANCE Info_Mod_Daniel_BrokenRune3 (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_BrokenRune3_Condition;
	information	= Info_Mod_Daniel_BrokenRune3_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Hm. K�nntest du vielleicht f�r mich diese Sache aushandeln?";
};                       

FUNC INT Info_Mod_Daniel_BrokenRune3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_BrokenRune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Daniel_BrokenRune3_Info()
{
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune3_15_00"); //Hm. K�nntest du vielleicht f�r mich diese Sache aushandeln?
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune3_11_01"); //Wieso. Denkst du, das w�rde dann billiger? Ich bin auch H�ndler.
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune3_15_02"); //Nein, nein. Nur, ich habe ihn vorhin wahrscheinlich etwas ge�rgert ...
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune3_11_03"); //Ich kann's versuchen. Plus 25 Prozent f�r mich.
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune3_15_04"); //Ist schon gut.

	AI_GotoWP	(self, "REL_CITY_102");
	AI_GotoWP	(self, "REL_CITY_347");

	AI_TurnToNpc	(self, hero);
	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune3_11_05"); //So. Hier ist die Figur. Hat 100 gekostet. Das hei�t: 150 Gold f�r mich.

	B_GiveInvItems	(self, hero, ItMi_AdanosStatue, 1);

	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune3_15_06"); //Das w�ren aber 50 Prozent.
	AI_Output(self, hero, "Info_Mod_Daniel_BrokenRune3_11_07"); //Ja und? Ist doch g�nstig genug, oder? Au�erdem hab ich Frau und sieben ...
	AI_Output(hero, self, "Info_Mod_Daniel_BrokenRune3_15_08"); //... sieben Kinder. Ich wei�. Hier, dein Gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 150);

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "H�ndlerpack! Dass die immer Feilschen m�ssen. Sieben Kinder! Ich hab hier noch kein einzigen Balg gesehen. Wenigstens habe ich jetzt die Adanosfigur. Muss zum Magier zur�ck.");
};

INSTANCE Info_Mod_Daniel_Kissen (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_Kissen_Condition;
	information	= Info_Mod_Daniel_Kissen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Ich suche einen wohlriechenden Weichmacher.";
};                       

FUNC INT Info_Mod_Daniel_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Malik_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kissen))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Daniel_Kissen_Info()
{
	AI_Output(hero, self, "Info_Mod_Daniel_Kissen_15_00"); //Ich suche einen wohlriechenden Weichmacher.
	AI_Output(self, hero, "Info_Mod_Daniel_Kissen_11_01"); //Nie geh�rt. Was soll DAS denn sein?
	AI_Output(hero, self, "Info_Mod_Daniel_Kissen_15_02"); //Wei� ich auch nicht genau. K�nnte eine Tinktur sein oder so.
	AI_Output(self, hero, "Info_Mod_Daniel_Kissen_11_03"); //Dann w�rde ich's beim Alchemisten versuchen. Oder bei Morpheus dr�ben, der verkauft Rarit�ten.
	AI_Output(hero, self, "Info_Mod_Daniel_Kissen_15_04"); //Danke.
};

INSTANCE Info_Mod_Daniel_Freudenspender (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_Freudenspender_Condition;
	information	= Info_Mod_Daniel_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Brauchst du Freudenspender?";
};                       

FUNC INT Info_Mod_Daniel_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Daniel_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Daniel_Freudenspender_15_00"); //Brauchst du Freudenspender?
	AI_Output(self, hero, "Info_Mod_Daniel_Freudenspender_11_01"); //Es tut mir Leid, aber es ist mir nicht gestattet, meinen Geist tr�ben zu lassen.
	AI_Output(self, hero, "Info_Mod_Daniel_Freudenspender_11_02"); //Da musst du dich an andere wenden.
};

INSTANCE Info_Mod_Daniel_Trade (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_Trade_Condition;
	information	= Info_Mod_Daniel_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Daniel_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Daniel_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Daniel_Pickpocket (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_Pickpocket_Condition;
	information	= Info_Mod_Daniel_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_100;
};

FUNC INT Info_Mod_Daniel_Pickpocket_Condition()
{
	C_Beklauen	(84, ItMi_Gold, 750);
};

FUNC VOID Info_Mod_Daniel_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Daniel_Pickpocket);

	Info_AddChoice	(Info_Mod_Daniel_Pickpocket, DIALOG_BACK, Info_Mod_Daniel_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Daniel_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Daniel_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Daniel_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Daniel_Pickpocket);
};

FUNC VOID Info_Mod_Daniel_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Daniel_Pickpocket);
};

INSTANCE Info_Mod_Daniel_EXIT (C_INFO)
{
	npc		= Mod_7378_OUT_Daniel_REL;
	nr		= 1;
	condition	= Info_Mod_Daniel_EXIT_Condition;
	information	= Info_Mod_Daniel_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Daniel_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Daniel_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};