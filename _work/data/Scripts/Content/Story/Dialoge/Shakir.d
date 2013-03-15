INSTANCE Info_Mod_Shakir_Hi (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Hi_Condition;
	information	= Info_Mod_Shakir_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bist du Shakir, der Anf�hrer der Gauner?";
};

FUNC INT Info_Mod_Shakir_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_Aufnahme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_00"); //Bist du Shakir, der Anf�hrer der Gauner?
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_01"); //Ja, das bin ich. Aber wer bist du denn? Dich habe ich hier noch nie gesehen!
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_02"); //Ich bin ...
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_03"); //Auch egal. Ich frage mich nur, was du hier zu suchen hast.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_04"); //Amir hat mich zu eurem Lager gef�hrt, da ich ihm einen Gefallen getan habe.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_05"); //Er meinte, dass ich mich euch anschlie�en sollte.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_06"); //Am Tor habe ich dann mit Zahit dar�ber gesprochen, der am Ende gemeint hat, dass ich dich aufsuchen sollte.
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_07"); //(grinst) Ah, Frischfleisch. Bevor du dich uns anschlie�en kannst, musst du noch aber einiges tun.
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_08"); //Ich sage dir, da hast du dir einiges vorgenommen.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_09"); //Etwas �hnliches sagte mir schon Zahit.
};

INSTANCE Info_Mod_Shakir_GaunerWerden (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_GaunerWerden_Condition;
	information	= Info_Mod_Shakir_GaunerWerden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was muss ich tun, um ein Gauner werden zu k�nnen?";
};

FUNC INT Info_Mod_Shakir_GaunerWerden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_GaunerWerden_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_00"); //Was muss ich tun, um ein Gauner werden zu k�nnen?
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_01"); //Im Grunde ist es ganz einfach. Du musst hier in unserem Viertel alle wichtigen Gauner auf deine Seite bringen.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_02"); //Und was hei�t das konkret?
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_03"); //Erf�lle f�r jeden eine Aufgabe, um so Stimmen zu sammeln.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_04"); //Wenn du alle Gauner �berzeugt hast, auch mich, kannst du dich bei mir melden und ich nehme dich bei uns auf.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_05"); //Dann wirst du zur Assassinengemeinschaft geh�ren.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_06"); //Wer geh�rt alles zu den Gaunern, die ich �berzeugen muss?
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_07"); //Folgende Mitglieder musst du �berzeugen: Zeki, Ramsi, Aabid, Yasin, Yussuf und nat�rlich mich.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_08"); //Das sind ja eine ganze Menge Leute.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_09"); //(lacht) Du willst unser Vertrauen, also musst du auch etwas daf�r tun.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_10"); //(seufzt) Na gut, dann werde ich mich darum k�mmern.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_11"); //(h�misch) Viel Spa� beim Stimmen sammeln.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_12"); //(trocken) Den werde ich haben.

	B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "Ich habe nun mit Shakir gesprochen, der bereit ist, mich bei den Gaunern aufzunehmen, aber nur unter einer Bedingung. Ich soll alle wichtigen Gauner im Viertel �berzeugen, damit ich mich ihnen anschlie�en kann. Wenn ich das getan habe, soll ich mich wieder bei Shakir melden.");
};

INSTANCE Info_Mod_Shakir_Frau (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Frau_Condition;
	information	= Info_Mod_Shakir_Frau_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_Frau_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	&& (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Yasin_MikaTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Aabid_HabPakete))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ramsi_JaegerTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Zeki_Laute))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Frau_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_00"); //Da bist du ja. Hab bis jetzt nur Gutes �ber dich geh�rt.

	if (Mod_ASS_Yussuf == 1)
	{
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_01"); //Das freut mich. Aber mit Yussuf bin ich nicht einig geworden.
		AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_02"); //Will hei�en?
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_03"); //Seine Aufgabe fand ich nicht nicht korrekt. Den anderen gegen�ber.
		AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_04"); //Hoppla! Ein Gauner mit Gewissen! Was ganz was Neues hier.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_05"); //Freut mich. Den Yussuf hab ich noch nicht. Hat keine Zeit, sagt er.
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_06"); //Muss selbst Auftr�ge f�r die Krieger machen, sagt er.
	};

	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_07"); //Nun gut erst mal. H�re, was meine Pr�fung ist:
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_08"); //Zuerst 'ne Frage: Wann hast du das letzte Mal mit 'ner Frau geschlafen?
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_09"); //O Himmel! Das war in meinem letzten Leben. Da hatte ich mal Bromor besucht.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_10"); //Den Puff im Hafen?
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_11"); //Genau. Ich hab's nicht bereut.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_12"); //Da sind wir beim Problem. Du musst wissen, dass ich in Varant zwei Frauen hatte.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_13"); //Nun geht mir hier einiges ab. Du wei�t schon, was ich meine ...
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_14"); //Gewiss. Ich soll dir nun Frauen beschaffen.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_15"); //Also eine w�rde schon reichen.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_16"); //Warum gehst du dann nicht in die Stadt? Ihr habt doch sicher noch Verkleidungen.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_17"); //Das ist nicht das Problem. Aber man kennt mich dort. Vor allem die Miliz.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_18"); //Aha. Schon unangenehm aufgefallen.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_19"); //Das will ich meinen. Du bringst die Sch�ne in die H�hle vom Getr�nkepanscher hier in der N�he.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_20"); //Und der kann dann schon mal ...
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_21"); //Bist du verr�ckt? Der macht eh nichts, ist viel zu besch�ftigt.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_22"); //Alles klar. Will sehen, was ich f�r dich machen kann.

	Log_CreateTopic	(TOPIC_MOD_ASS_SHAKIR_FRAU, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_SHAKIR_FRAU, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "F�r Shakir soll ich eine Frau f�r gewisse Stunden auftreiben. Was denen alles einf�llt. Am besten, ich rede mal mit Bromor. Wenn ich eine habe, soll ich sie zu einer H�hle in der N�he des Assassinenlagers bringen, wo ein Alchemist zu hausen scheint.");
};

INSTANCE Info_Mod_Shakir_Frau2 (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Frau2_Condition;
	information	= Info_Mod_Shakir_Frau2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Melde mich zur�ck.";
};

FUNC INT Info_Mod_Shakir_Frau2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gritta_Shakir3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Frau2_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_Frau2_15_00"); //Melde mich zur�ck. Ich hab dir eine sch�ne junge Frau besorgt. Sie wartet unten in der H�hle.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau2_31_01"); //Wirklich? Du bist ein Mordskerl.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau2_15_02"); //Ich hab ihr dieses Kleid versprochen. Hier, nimm.

	B_GiveInvItems	(hero, self, ItAr_GrittasKleid, 1);

	AI_Output(hero, self, "Info_Mod_Shakir_Frau2_15_03"); //Und beeil dich. Bevor sie sich's anders �berlegt.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau2_31_04"); //Bin schon weg. Du wartest hier.

	B_SetTopicStatus	(TOPIC_MOD_ASS_SHAKIR_FRAU, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Mod_ASS_ShakirGritta_Day = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATGRITTA");
};

INSTANCE Info_Mod_Shakir_GaunerWerden2 (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_GaunerWerden2_Condition;
	information	= Info_Mod_Shakir_GaunerWerden2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_GaunerWerden2_Condition()
{
	if (Mod_ASS_ShakirGritta == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_GaunerWerden2_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_00"); //Wow! Das war's. Aber hallo!

	if (Mod_ASS_Yussuf == 1)
	{
		AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden2_15_01"); //Freut mich. Ich habe nun alle Aufgaben erledigt. Wie geht es weiter?
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_02"); //Ich bin �ber alles unterrichtet und halte dich f�r absolut geeignet, unserem Verein beizutreten.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden2_15_03"); //Freut mich. Ich habe noch den Yussuf.
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_04"); //Vergiss ihn. Du bist erst kurz bei uns und hast schon so viel erledigt. Schneller als sonst ein Anw�rter.
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_05"); //Ich halte dich f�r absolut geeignet, unserem Verein beizutreten.

		B_SetTopicStatus	(TOPIC_MOD_ASS_YUSSUF_HILFE, LOG_SUCCESS);
	};

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_06"); //Wenn du willst, kannst du dich uns nun anschlie�en.

		B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "Shakir war voll begeistert von meiner Vermittlung. Er hat mir die Pr�fung von Yussuf erlassen und mir die M�glichkeit gegeben, Gauner zu werden.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_07"); //Leider geh�rst du schon zu vielen Gemeinschaften an.
	};

	B_GivePlayerXP	(250);

	AI_UnequipArmor	(Mod_580_NONE_Gritta_NW);

	AI_EquipArmor (Mod_580_NONE_Gritta_NW, ItAr_GrittasKleid);
};

INSTANCE Info_Mod_Shakir_GaunerWerden3 (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_GaunerWerden3_Condition;
	information	= Info_Mod_Shakir_GaunerWerden3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich will Gauner werden.";
};

FUNC INT Info_Mod_Shakir_GaunerWerden3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden2))
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_GaunerWerden3_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden3_15_00"); //Ich will Gauner werden.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden3_31_01"); //Hier hast du deine Gaunerkluft. Du meldest dich bei dem Krieger Masut.

	CreateInvItems	(hero, ITAR_Gauner, 1);

	B_ShowGivenThings	("Gaunerkluft erhalten");

	B_GivePlayerXP	(250);

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "Ich geh�re jetzt zu den Assassinen.");

	Mod_7117_ASS_Krieger_NW.aivar[AIV_PASSGATE] = TRUE;

	Mod_AnzahlNebengilden += 1;

	Assassinen_Dabei = TRUE;
};

INSTANCE Info_Mod_Shakir_Assassinengold (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Assassinengold_Condition;
	information	= Info_Mod_Shakir_Assassinengold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_Assassinengold_Condition()
{
	if (Mod_ASS_Assassinengold == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Assassinengold_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_Assassinengold_31_00"); //Willkommen zur�ck. Warst du erfolgreich?
	AI_Output(hero, self, "Info_Mod_Shakir_Assassinengold_15_01"); //Ich glaube schon. Mal sehen.
};

INSTANCE Info_Mod_Shakir_Zeremoniendolch (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Zeremoniendolch_Condition;
	information	= Info_Mod_Shakir_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_Zeremoniendolch_Condition()
{
	if (Npc_HasItems(hero, ItMw_Avaquar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Zeremoniendolch_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_00"); //Gibt's was Neues?
	AI_Output(hero, self, "Info_Mod_Shakir_Zeremoniendolch_15_01"); //Nein. Hast du was?
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_02"); //Und ob! Da hinten braut sich was zusammen, denke ich.
	AI_Output(hero, self, "Info_Mod_Shakir_Zeremoniendolch_15_03"); //Wie meinst du das?
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_04"); //Die Krieger sind irgendwie unruhig. Immer wieder rennt hier einer raus oder kommt zur�ckgehastet. Sogar tags�ber.
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_05"); //Wo doch sonst kaum jemand am Tag das Lager verl�sst ...
	AI_Output(hero, self, "Info_Mod_Shakir_Zeremoniendolch_15_06"); //Ich schau mal.
};

INSTANCE Info_Mod_Shakir_Blutkelch (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Blutkelch_Condition;
	information	= Info_Mod_Shakir_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hallo.";
};

FUNC INT Info_Mod_Shakir_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Masut_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_00"); //Hallo.
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_01"); //In Kriegerr�stung! H�tte dich fast nicht erkannt. Wie hast du ...?
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_02"); //Tut jetzt nichts zur Sache. Sag, sind dir auch Magier aufgefallen, die nachts aus dem Lager gehen?
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_03"); //Ja, da ist erst mal der Mufid, und dann noch einer. Wei� allerdings nicht, wie der hei�t.
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_04"); //Die waren schon halbe N�chte unterwegs.
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_05"); //Aha. Und, haben die was gesagt?
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_06"); //Nee, hatten es nur eilig.
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_07"); //Hmm ... danke.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Habe erfahren, dass nachts einige Magier das Lager verlassen. Das hat bestimmt mit dem Kelch zu tun.");
};

INSTANCE Info_Mod_Shakir_NachSchlacht (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_NachSchlacht_Condition;
	information	= Info_Mod_Shakir_NachSchlacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du sollst zum Rat kommen.";
};

FUNC INT Info_Mod_Shakir_NachSchlacht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Naim_NachSchlacht2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_NachSchlacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_NachSchlacht_15_00"); //Du sollst zum Rat kommen.
	AI_Output(self, hero, "Info_Mod_Shakir_NachSchlacht_31_01"); //Was ist blo� los da drinnen?
	AI_Output(hero, self, "Info_Mod_Shakir_NachSchlacht_15_02"); //Du wirst schon sehen. Mach hin.

	B_StartOtherRoutine	(Mod_7105_ASS_Aabid_NW,	"START");
	B_StartOtherRoutine	(Mod_7106_ASS_Ramsi_NW,	"START");
	B_StartOtherRoutine	(Mod_7102_ASS_Zeki_NW,	"START");
	B_StartOtherRoutine	(Mod_7103_ASS_Gauner_NW,	"START");
	B_StartOtherRoutine	(Mod_7108_ASS_Gauner_NW,	"START");
	B_StartOtherRoutine	(Mod_7107_ASS_Gauner_NW,	"START");
	B_StartOtherRoutine	(Mod_7113_ASS_Yussuf_NW,	"START");
	B_StartOtherRoutine	(Mod_7111_ASS_Yasin_NW,	"START");
	B_StartOtherRoutine	(Mod_7104_ASS_Shakir_NW,	"START");

	Npc_RemoveInvItems	(hero, ItKe_XR_NW_HOEHLE_01, 1);
};

INSTANCE Info_Mod_Shakir_Pickpocket (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Pickpocket_Condition;
	information	= Info_Mod_Shakir_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Shakir_Pickpocket_Condition()
{
	C_Beklauen	(75, ItPo_Pflanzengift, 1);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

	Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_BACK, Info_Mod_Shakir_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Shakir_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

		Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Shakir_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Shakir_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Shakir_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Shakir_EXIT (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_EXIT_Condition;
	information	= Info_Mod_Shakir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Shakir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shakir_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};