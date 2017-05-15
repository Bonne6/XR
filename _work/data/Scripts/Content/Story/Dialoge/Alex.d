INSTANCE Info_Mod_Alex_Trunkenbold (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Trunkenbold_Condition;
	information	= Info_Mod_Alex_Trunkenbold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_Trunkenbold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatTrunkenbold_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Trunkenbold_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_00"); //Der ist weg!
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_01"); //Wie weg, der ist doch da?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_02"); //Eben nicht, der ist WEG!!! Vollkommen WEG!
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_03"); //Und ... wann kommt er wieder?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_04"); //Ich w�rde sagen ... in etwa vier Monaten.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_05"); //Was?!
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_06"); //Ja, der h�lt sowas wie Winterschlaf. Sobald die Zeit des gro�en Feierns beginnt, wacht er auf.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_07"); //Wie lange ist er denn schon weg?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_08"); //Seit ungef�hr acht Monaten.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_09"); //Naja, egal. Ich brauche Alkohol.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_10"); //Du braucht was?
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_11"); //Naja, Alkohol, Schnaps oder Bier oder so was. Der Weiberheld hat gesagt, das bekomme ich vom Trunkenbold.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_12"); //Achso, ihr meint Trunken!
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_13"); //Was?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_14"); //Trunken! Das ist das Zeug, weswegen der Trunkenbold weg ist.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_15"); //Wie, glaubt ihr, ist er wohl zu seinem Namen gekommen?
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_16"); //Und wie komme ich daran?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_17"); //Am besten ihr fragt ihn danach.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_18"); //Aber er ist doch weg.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_19"); //Weg? Er ist doch genau hier. Ihr seid mir einer ...

	AI_TurnToNpc	(self, Mod_7272_HS_Trunkenbold_REL);

	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_01_20"); //Trunkenbold, w�rdest du dem Herrn etwas Trunken geben?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Alex_Magier (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Magier_Condition;
	information	= Info_Mod_Alex_Magier_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_Magier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_MagierTermin))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Magier_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_00"); //Ahh, ihr m�sst das neue k�nigliche M�dchen f�r alles sein!
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_01"); //Warst du nicht vor ein paar Tagen noch der k�nigliche Lochgr�ber?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_02"); //Nat�rlich, was denket ihr denn?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_03"); //...
	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_04"); //Machet kein so verzagtes Gesicht! Es gibt Arbeit f�r euch! Gehet zum k�niglichen Eremiten!

	B_Say	(hero, self, "$WOFINDEICHIHN");

	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_06"); //Das herauszufinden wirdet eure erste k�nigliche Aufgabe sein.
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_07"); //Was?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_08"); //Mein Geist vermaget sich nicht mehr daran zu erinnern, wo er lebt. Doch bin ich mir sicher, ihn unl�ngst gesehen zu haben!
	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_09"); //Suchet einfach die Orte auf, an denen ich in letzter Zeit war!
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_10"); //Und wo warst du in letzter Zeit ...?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_11"); //Wenn ich dies w�sste, w�rde ich doch nicht eure Hilfe brauchen, ihn zu finden! Und nun gehet!
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_12"); //Und ... was soll ich dann bei ihm machen?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_13"); //Bei wem?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_14"); //Bei dem Eremiten.
	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_15"); //Ihr habet Kunde vom Verbleib des Eremiten?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_16"); //Nein.
	AI_Output(self, hero, "Info_Mod_Alex_Magier_01_17"); //Achso ... K�nntet ihr ihn bitte suchen und ihn um die �bliche Lieferung Pilze bitten?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_18"); //Na gut.

	Wld_InsertNpc	(Mod_7286_HS_Eremit_REL, "REL_247");

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Der Hofmagier, bei welchem es sich um den ehemaligen Lochgr�ber handelt, will, dass ich vom Eremiten die �bliche Lieferung Pilze besorge. Er wei� jedoch nicht mehr, wo er zu finden ist. Ich soll deshalb an den Orten suchen, wo der Magier zuletzt war.");
};

INSTANCE Info_Mod_Alex_GeheimnisFreudenspender (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_GeheimnisFreudenspender_Condition;
	information	= Info_Mod_Alex_GeheimnisFreudenspender_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe noch eine Frage bez�glich der hiesigen Rauschmittel.";
};

FUNC INT Info_Mod_Alex_GeheimnisFreudenspender_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_Magier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_GeheimnisFreudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Alex_GeheimnisFreudenspender_15_00"); //Ich habe noch eine Frage bez�glich der hiesigen Rauschmittel.
	AI_Output(self, hero, "Info_Mod_Alex_GeheimnisFreudenspender_01_01"); //Hinfort! Ihr seid noch nicht bereit, dieses Geheimnis zu erfahren!
};

INSTANCE Info_Mod_Alex_Pilzsporen (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Pilzsporen_Condition;
	information	= Info_Mod_Alex_Pilzsporen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier, deine Sporen!";
};

FUNC INT Info_Mod_Alex_Pilzsporen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatEremit_Hi))
	&& (Npc_HasItems(hero, ItMi_FreudenspenderSporen) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Pilzsporen_Info()
{
	AI_Output(hero, self, "Info_Mod_Alex_Pilzsporen_15_00"); //Hier, deine Sporen!
	AI_Output(self, hero, "Info_Mod_Alex_Pilzsporen_01_01"); //Ihr habt den Eremiten gefunden? Wunderbar. So bringet diese Sporen zu dem k�niglichen Drogenminister!

	B_Say	(hero, self, "$WOFINDEICHIHN");

	AI_Output(self, hero, "Info_Mod_Alex_Pilzsporen_01_03"); //Suchet in den Unweiten des Lagers nach dem k�niglichen J�ger. Er wirdet euch den Weg weisen!

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Die Sporen soll ich nun zum Drogenminister bringen, welchen ich mithilfe des k�niglichen J�gers finden soll. Ich denke, dass diese Sporen das Geheimnis der Freudenspender sind.");
};

INSTANCE Info_Mod_Alex_Transportsystem (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Transportsystem_Condition;
	information	= Info_Mod_Alex_Transportsystem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich bin auf der Suche nach einem unbeschwerlichen Weg in die S�mpfe.";
};

FUNC INT Info_Mod_Alex_Transportsystem_Condition()
{
	if (Mod_SL_Meer == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Transportsystem_Info()
{
	AI_Output(hero, self, "Info_Mod_Alex_Transportsystem_15_00"); //Ich bin auf der Suche nach einem unbeschwerlichen Weg in die S�mpfe.
	AI_Output(self, hero, "Info_Mod_Alex_Transportsystem_01_01"); //Und da kommet ihr zu mir?
	AI_Output(hero, self, "Info_Mod_Alex_Transportsystem_15_02"); //Ich dachte, vielleicht kannst du einen Teleporter erschaffen oder sonst irgendwie deine Magie spielen lassen ...
	AI_Output(self, hero, "Info_Mod_Alex_Transportsystem_01_03"); //Oh ja ... Meine Magie. Nun gut, euer Wunsch sei euch gew�hrt! Treffet mich in zwei Tagen vor den Toren der Burg!

	Mod_SL_Meer = 6;

	Mod_SL_AlexGraben = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Alex wird sich mit seiner Magie um ein Transportsystem k�mmern. Ich soll ihn in zwei Tagen vor dem Tor treffen.");
};

INSTANCE Info_Mod_Alex_TeleporterFertig (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_TeleporterFertig_Condition;
	information	= Info_Mod_Alex_TeleporterFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_TeleporterFertig_Condition()
{
	if (Mod_SL_Meer == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_TeleporterFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_TeleporterFertig_01_00"); //Ah, da seid ihr ja. Kommet nur mit, kommet nur mit!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LOCH");
};

INSTANCE Info_Mod_Alex_AtLoch (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_AtLoch_Condition;
	information	= Info_Mod_Alex_AtLoch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_AtLoch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_TeleporterFertig))
	&& (Npc_GetDistToWP(self, "REL_236") < 400)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_AtLoch_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_01_00"); //Hier, mein Transport-System.
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_01"); //Ein ... Loch?
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_01_02"); //In gewissem Sinne ... ja, aber es ist auch ein Teleporter.
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_01_03"); //Man tritt hier rein, f�llt und kommt im Sumpf wieder raus. Ist das nicht gro�artig?
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_04"); //Du hast in zwei Tagen ein Loch von hier bis zum Sumpf gegraben?
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_01_05"); //Ja.
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_06"); //Ich hatte etwas mit mehr ... Magie erwartet ...
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_01_07"); //Naja ... Also ... Ich meine ...
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_08"); //Okay, es wird seinen Zweck erf�llen ... hoffe ich.

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Ein Loch? Naja, jedenfalls ist das Transportproblem wohl gel�st. Ich sollte es dem K�nig zeigen.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MAGIER");

	Wld_SendTrigger	("EVT_LEVELCHANGETOSUMPF");
};

INSTANCE Info_Mod_Alex_Lochgraben (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Lochgraben_Condition;
	information	= Info_Mod_Alex_Lochgraben_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_Lochgraben_Condition()
{
	if (Mod_SL_Schwaechen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Lochgraben_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_01_00"); //Oh, hallo. Na, bist du auch beeindruckt von meinem Loch?
	AI_Output(hero, self, "Info_Mod_Alex_Lochgraben_15_01"); //Nat�rlich. Es gibt bestimmt nichts und niemanden, das sich im L�chergraben mit dir messen kann!
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_01_02"); //Hehe, da hast du recht. Ich bin flei�ig wie ein Buddler.
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_01_03"); //Es gibt niemanden und nichts, das schneller gr�bt als ich ... au�er.
	AI_Output(hero, self, "Info_Mod_Alex_Lochgraben_15_04"); //Au�er was?
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_01_05"); //Au�er einem Crawler. Crawler sind unglaublich, wenn es ums Graben geht.
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_01_06"); //So ein Crawler k�nnte da dr�ben, im Boden auf der anderne Seite von Fluffys Berg, innerhalb einer Nacht ein Loch graben, das so tief w�re, dass man den Boden nicht sehen w�rde!
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_01_07"); //Aber zum Gl�ck gibt�s hier keine Crawler ... nur mich.

	B_LogEntry	(TOPIC_MOD_SL_LOCHGRAEBER, "Minecrawler sind bessere Buddler als der Lochgr�ber. Wenn ich einen beschw�ren w�rde, k�nnte er ein tieferes Loch als das des Lochgr�bers graben und ihn schlagen.");

	Wld_InsertItem	(ItSc_SumCrawler, "FP_ITEM_CRAWLERSCROLL");
};

INSTANCE Info_Mod_Alex_LochGegraben (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_LochGegraben_Condition;
	information	= Info_Mod_Alex_LochGegraben_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_LochGegraben_Condition()
{
	if (Mod_SL_PartLochgraeber == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_LochGegraben_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_01_00"); //Ah, guten Morgen. Du willst wohl wieder meine Grabk�nste bewundern, was?
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_01_01"); //Willst wohl selbst mal ein Loch graben. Oh, da ist ja schon eines.
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_01_02"); //Lass mich das mal ansehen. Da hast du wohl mit dem L�ffel gegraben, was?

	AI_GotoWP	(self, "REL_HS_007");

	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_01_03"); //Das Loch ist ja grade mal ... grad ... gra ... grade maal ... DAS IST DAS TIEFSTE LOCH, DAS ICH JE GESEHEN HABE!!!
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_01_04"); //Wie hast du das gemacht, du Gr�nschnabel? Da muss ein Trick dabei sein.

	AI_GotoWP	(self, "REL_HS_008");
	AI_GotoWP	(self, "REL_HS_007");

	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_01_05"); //Das ... Das ... Aaaaaaaaaaaaaaaaaaaahhhhh ...

	B_LogEntry	(TOPIC_MOD_SL_LOCHGRAEBER, "Dem Lochgr�ber hab ich es aber ganz sch�n gegeben ...");

	Mod_SL_PartLochgraeber = 2;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alex_Pickpocket (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Pickpocket_Condition;
	information	= Info_Mod_Alex_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Alex_Pickpocket_Condition()
{
	C_Beklauen	(99, ItMi_Freudenspender, 3);
};

FUNC VOID Info_Mod_Alex_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

	Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_BACK, Info_Mod_Alex_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alex_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alex_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alex_Pickpocket);
};

FUNC VOID Info_Mod_Alex_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

		Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alex_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alex_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alex_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alex_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alex_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alex_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alex_EXIT (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_EXIT_Condition;
	information	= Info_Mod_Alex_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alex_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alex_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};