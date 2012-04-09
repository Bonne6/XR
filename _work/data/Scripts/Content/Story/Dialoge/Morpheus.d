INSTANCE Info_Mod_Morpheus_Hi (C_INFO)
{
	npc		= Mod_7581_OUT_Morpheus_REL;
	nr		= 1;
	condition	= Info_Mod_Morpheus_Hi_Condition;
	information	= Info_Mod_Morpheus_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Alles klar bei dir?";
};

FUNC INT Info_Mod_Morpheus_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Morpheus_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Morpheus_Hi_15_00"); //Alles klar bei dir?
	AI_Output(self, hero, "Info_Mod_Morpheus_Hi_04_01"); //(eindringlich) H�te dich! Diese Welt ist nicht real!
	AI_Output(hero, self, "Info_Mod_Morpheus_Hi_15_02"); //Ach so ...
	AI_Output(self, hero, "Info_Mod_Morpheus_Hi_04_03"); //(lacht) Der Spruch kommt immer gut bei Kunden, die zu viel Freudenspender genommen haben.
	AI_Output(hero, self, "Info_Mod_Morpheus_Hi_15_04"); //Und das kurbelt wohl deine Gesch�fte an?
	AI_Output(self, hero, "Info_Mod_Morpheus_Hi_04_05"); //Eine mystische Aura kann ja nicht schaden. Ich verkaufe vor allem Talismane wie Amulette und Ringe.
	AI_Output(self, hero, "Info_Mod_Morpheus_Hi_04_06"); //Schau dich doch einfach mal um.
};

INSTANCE Info_Mod_Morpheus_Kissen (C_INFO)
{
	npc		= Mod_7581_OUT_Morpheus_REL;
	nr		= 1;
	condition	= Info_Mod_Morpheus_Kissen_Condition;
	information	= Info_Mod_Morpheus_Kissen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich suche was Weiches f�r den Kopf. Zum Schlafen ...";
};

FUNC INT Info_Mod_Morpheus_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Malik_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morpheus_Kissen_Info()
{
	AI_Output(hero, self, "Info_Mod_Morpheus_Kissen_15_00"); //Ich suche was Weiches f�r den Kopf. Zum Schlafen ...
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen_04_01"); //Aha. Ein Kissen f�r den Kopf. Ein Kopfkissen.
	AI_Output(hero, self, "Info_Mod_Morpheus_Kissen_15_02"); //So kann man sagen. Hast du eins?
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen_04_03"); //Ist zwar eine Rarit�t, habe ich aber nicht. Allerdings kann ich dir sagen, wie du eins bekommst.
	AI_Output(hero, self, "Info_Mod_Morpheus_Kissen_15_04"); //Ich h�re.
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen_04_05"); //Du gehst zum Metzger und l�sst dir ein S�ckchen mit Vengerfedern geben. Fest zugeschn�rt gibt das ein prima Kopfkissen.
	AI_Output(hero, self, "Info_Mod_Morpheus_Kissen_15_06"); //Was sind Venger?
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen_04_07"); //Kennst du nicht? Das sind winzige Scavenger ohne rote Augen und v�llig ungef�hrlich.
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen_04_08"); //Der Bauer h�lt sie wegen der Eier und dem zarten Fleisch. Musst du unbedingt probieren. Das zergeht auf der Zunge.
	AI_Output(hero, self, "Info_Mod_Morpheus_Kissen_15_09"); //So wie ein K�se?
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen_04_10"); //Kann man so sagen. Du kannst mir �brigen eines mitbringen. F�r meinen Tipp.
	AI_Output(hero, self, "Info_Mod_Morpheus_Kissen_15_11"); //Danke erst mal.

	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "Morpheus meint, ich sollte ein S�ckchen mit Vengerfedern f�llen. Der Metzger sollte welche haben.");
};

INSTANCE Info_Mod_Morpheus_Kissen02 (C_INFO)
{
	npc		= Mod_7581_OUT_Morpheus_REL;
	nr		= 1;
	condition	= Info_Mod_Morpheus_Kissen02_Condition;
	information	= Info_Mod_Morpheus_Kissen02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hallo, ich bin zur�ck. Ich hab das Kissen.";
};

FUNC INT Info_Mod_Morpheus_Kissen02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_Kissen))
	&& (Npc_HasItems(hero, ItMi_Federbeutel) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morpheus_Kissen02_Info()
{
	AI_Output(hero, self, "Info_Mod_Morpheus_Kissen02_15_00"); //Hallo, ich bin zur�ck. Ich hab das Kissen.
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen02_04_01"); //Und, bist du zufrieden?
	AI_Output(hero, self, "Info_Mod_Morpheus_Kissen02_15_02"); //Na ja. Weich ist es ja, aber der Sack ist doch etwas kratzig und muffig.
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen02_04_03"); //Hm ... Dann gehst du zum Scheider und l�sst dir ein Kissen aus Leinen machen.
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen02_04_04"); //Dann braucht's noch ein paar handvoll Heu, die machst du mit rein. Riecht sehr angenehm.
	AI_Output(hero, self, "Info_Mod_Morpheus_Kissen02_15_05"); //Wo ...
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen02_04_06"); //Hinten am See bei der Wasserleitung wurde letztens das Gras gem�ht. Da wirst du f�ndig, denke ich.
	AI_Output(self, hero, "Info_Mod_Morpheus_Kissen02_04_07"); //Du hast Ideen! H�rt sich aber gut an. Danke. Bis ein andernmal.

	Wld_InsertItem	(ItMi_Heu, "FP_ITEM_HEU_01");

	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "Morpheus meint ich soll mir ein Leinenkissen von Versage machen lassen. F�llen soll ich es neben den Federn noch mit etwas Heu f�r den Geruch. Das finde ich beim See bei der Wasserleitung.");
};

INSTANCE Info_Mod_Morpheus_Kimon (C_INFO)
{
	npc		= Mod_7581_OUT_Morpheus_REL;
	nr		= 1;
	condition	= Info_Mod_Morpheus_Kimon_Condition;
	information	= Info_Mod_Morpheus_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du Freudenspender?";
};

FUNC INT Info_Mod_Morpheus_Kimon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Penner_Kimon))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morpheus_Kimon_Info()
{
	AI_Output(hero, self, "Info_Mod_Morpheus_Kimon_15_00"); //Hast du Freudenspender?
	AI_Output(self, hero, "Info_Mod_Morpheus_Kimon_04_01"); //Nat�rlich nicht. Man darf damit nicht �ffentlich handeln. Verbot vom Stadthalter.
	AI_Output(hero, self, "Info_Mod_Morpheus_Kimon_15_02"); //Und inoffiziell?
	AI_Output(self, hero, "Info_Mod_Morpheus_Kimon_04_03"); //Auch nicht. Der Penner da dr�ben kann dir wahrscheinlich weiterhelfen.
	AI_Output(hero, self, "Info_Mod_Morpheus_Kimon_15_04"); //Kann er nicht. Den habe ich schon gefragt.
	AI_Output(self, hero, "Info_Mod_Morpheus_Kimon_04_05"); //Dann l�gt er. Ich bin sicher, dass er was wei�.
	AI_Output(hero, self, "Info_Mod_Morpheus_Kimon_15_06"); //Dann probier ich's noch mal.
};

INSTANCE Info_Mod_Morpheus_Blutkelch (C_INFO)
{
	npc		= Mod_7581_OUT_Morpheus_REL;
	nr		= 1;
	condition	= Info_Mod_Morpheus_Blutkelch_Condition;
	information	= Info_Mod_Morpheus_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hallo! Und? Schon Kopfkissen verkauft?";
};

FUNC INT Info_Mod_Morpheus_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morpheus_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Morpheus_Blutkelch_15_00"); //Hallo! Und? Schon Kopfkissen verkauft?
	AI_Output(self, hero, "Info_Mod_Morpheus_Blutkelch_04_01"); //Aber ja. Die Weiber rei�en mir die Dinger von der Auslage.
	AI_Output(hero, self, "Info_Mod_Morpheus_Blutkelch_15_02"); //Freut mich. Dann hilfst du mir sicher nochmal.
	AI_Output(hero, self, "Info_Mod_Morpheus_Blutkelch_15_03"); //Ich suche einen Blutkelch. D�rfte irgendwie ungew�hnlich aussehen.
	AI_Output(self, hero, "Info_Mod_Morpheus_Blutkelch_04_04"); //Das sollte wohl eine Rarit�t sein. Aber nein, ich habe nie solch ein Teil gesehen.
	AI_Output(hero, self, "Info_Mod_Morpheus_Blutkelch_15_05"); //Schade. Hast du eine Ahnung, wer ...?
	AI_Output(self, hero, "Info_Mod_Morpheus_Blutkelch_04_06"); //Vielleicht die Magier im Ort ...
	AI_Output(hero, self, "Info_Mod_Morpheus_Blutkelch_15_07"); //Die da w�ren?
	AI_Output(self, hero, "Info_Mod_Morpheus_Blutkelch_04_08"); //Eine Gruppe von Feuermagiern. Arrogantes Pack. Wohnen im sch�nsten Haus der Stadt.
	AI_Output(self, hero, "Info_Mod_Morpheus_Blutkelch_04_09"); //Und einen Wassermagier. Komischer Kauz. Treibt sich im alten Viertel rum.
	AI_Output(hero, self, "Info_Mod_Morpheus_Blutkelch_15_10"); //Danke erst mal.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Morpheus hat mich an die hiesigen Magier verwiesen.");
};

INSTANCE Info_Mod_Morpheus_Trade (C_INFO)
{
	npc		= Mod_7581_OUT_Morpheus_REL;
	nr		= 1;
	condition	= Info_Mod_Morpheus_Trade_Condition;
	information	= Info_Mod_Morpheus_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Morpheus_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morpheus_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Morpheus_Pickpocket (C_INFO)
{
	npc		= Mod_7581_OUT_Morpheus_REL;
	nr		= 1;
	condition	= Info_Mod_Morpheus_Pickpocket_Condition;
	information	= Info_Mod_Morpheus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Morpheus_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 1000);
};

FUNC VOID Info_Mod_Morpheus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Morpheus_Pickpocket);

	Info_AddChoice	(Info_Mod_Morpheus_Pickpocket, DIALOG_BACK, Info_Mod_Morpheus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Morpheus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Morpheus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Morpheus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Morpheus_Pickpocket);
};

FUNC VOID Info_Mod_Morpheus_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Morpheus_Pickpocket);
};

INSTANCE Info_Mod_Morpheus_EXIT (C_INFO)
{
	npc		= Mod_7581_OUT_Morpheus_REL;
	nr		= 1;
	condition	= Info_Mod_Morpheus_EXIT_Condition;
	information	= Info_Mod_Morpheus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Morpheus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Morpheus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};