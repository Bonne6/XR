INSTANCE Info_Mod_Ramsi_Hi (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_Hi_Condition;
	information	= Info_Mod_Ramsi_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi, geh�rst du zu den Gaunern hier?";
};

FUNC INT Info_Mod_Ramsi_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramsi_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_Hi_15_00"); //Hi, geh�rst du zu den Gaunern hier?
	AI_Output(self, hero, "Info_Mod_Ramsi_Hi_08_01"); //Ja, ich geh�re zu den Gaunern. Mein name ist Ramsi.
	AI_Output(hero, self, "Info_Mod_Ramsi_Hi_15_02"); //Was ist deine Aufgabe hier?
	AI_Output(self, hero, "Info_Mod_Ramsi_Hi_08_03"); //Ich k�mmere mich zusammen mit Yussuf und Zeki um die Jagd nach Tieren, um stets genug Fleisch hier zu haben.
	AI_Output(hero, self, "Info_Mod_Ramsi_Hi_15_04"); //Ist das nicht etwas gef�hrlich?
	AI_Output(self, hero, "Info_Mod_Ramsi_Hi_08_05"); //(bek�mmert) Ja, es war schon immer gef�hrlich, aber in letzter Zeit ist das Jagen zu einem Selbstmordkommando geworden.
};

INSTANCE Info_Mod_Ramsi_Aufgabe (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_Aufgabe_Condition;
	information	= Info_Mod_Ramsi_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wieso ist die Jagd so gef�hrlich geworden?";
};

FUNC INT Info_Mod_Ramsi_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_00"); //Wieso ist die Jagd so gef�hrlich geworden?
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_01"); //Nun, vor einiger Zeit war alles noch in Ordnung, aber in letzter Zeit vermehren sich so Viecher wie Warge immer mehr und bev�lkern den Wald.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_02"); //Deswegen ist alles so gef�hrlich geworden und keiner rei�t sich darum, Jagen zu gehen.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_03"); //Zudem macht ein Verbund von J�gern uns immer mehr Probleme, weil wir in ihre Jagdgebiete eindringen.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_04"); //Die Kerle haben schon einen von uns umgebracht. Verr�ckt ist alles geworden.
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_05"); //Soll ich dir vielleicht beim Jagen helfen?
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_06"); //(horcht auf) Das w�rdest du tun? (argw�hnisch) Moment mal, wieso solltest du dein Leben freiwillig riskieren?
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_07"); //Nun, ich m�chte mich den Gaunern anschlie�en, daf�r brauche ich aber eure Stimmen.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_08"); //(schmunzelt) So ist das also? Na meinetwegen.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_09"); //Wenn du mit mir zehn Keiler erlegst und zusiehst, dass niemand stirbt, werde ich dir meine Stimme geben. Also bereit loszulegen?
	AI_Output(hero, self, "Info_Mod_Ramsi_Aufgabe_15_10"); //Aber immer doch.
	AI_Output(self, hero, "Info_Mod_Ramsi_Aufgabe_08_11"); //Dann folge mir.

	Log_CreateTopic	(TOPIC_MOD_ASS_RAMSI_JAGD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_RAMSI_JAGD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "Der Gauner Ramsi k�mmert sich mit zwei anderen Gaunern um die Besorgung von Fleisch, was nur durch die Jagd erbracht werden kann. Da die Jagd wegen Monstern und und ein paar verr�ckten J�gern immer gef�hrlicher wird, soll ich mit Ramsi auf die Jagd gehen. Wenn wir zehn Keiler erlegt und deren Fleisch ins Lager transportiert haben, wird Ramsi mir seine Stimme geben.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "JAGD");
	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Ramsi_KeilerWarnung (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_KeilerWarnung_Condition;
	information	= Info_Mod_Ramsi_KeilerWarnung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramsi_KeilerWarnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_Aufgabe))
	&& (Npc_GetDistToWP(self, "NW_FOREST_PATH_36") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_KeilerWarnung_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerWarnung_08_00"); //Sei jetzt extrem vorsichtig. Die Keiler sind meist mit bis zu drei Tieren unterwegs und sie k�nnen wirklich t�dlich sein.
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerWarnung_15_01"); //Danke f�r die Info.
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerWarnung_08_02"); //Dann folge mir mal.

	self.flags = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "JAGDETAPPE");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01_MONSTER");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01_MONSTER");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_35_01_MONSTER");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M5");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M5");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M5");

	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M3");
	Wld_InsertNpc	(Keiler_Ramsi,	"NW_FOREST_PATH_80_1_MOVEMENT8_M3");
};

INSTANCE Info_Mod_Ramsi_KeilerTot (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_KeilerTot_Condition;
	information	= Info_Mod_Ramsi_KeilerTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramsi_KeilerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_KeilerWarnung))
	&& (Npc_GetDistToWP(self, "NW_FOREST_PATH_80_1_MOVEMENT8_M3") < 500)
	&& (Npc_IsDead(Keiler_Ramsi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_KeilerTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerTot_08_00"); //(lacht) Das war mal eine Jagdsession. Los gehen wir ...
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerTot_15_01"); //Was ist?
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerTot_08_02"); //Diese Hurens�hne! Pass auf. J�ger greifen an!

	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "Nachdem wir alle Keiler get�tet und ausgenommen haben, wurden wir von J�gern angegriffen. Wir m�ssen sie aufhalten, sonst werden diese Wahnsinnigen uns t�ten.");

	self.flags = 0;

	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX]/3;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS]/3 + 1;

	self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7368_JG_Jaeger_NW,	"WP_RAMSI_ASS_JAEGERSPAWN");
	Wld_InsertNpc	(Mod_7366_JG_Jaeger_NW,	"WP_RAMSI_ASS_JAEGERSPAWN");
	Wld_InsertNpc	(Mod_7367_JG_Jaeger_NW,	"LIGHTHOUSE");
};

INSTANCE Info_Mod_Ramsi_KeilerFleischWeg (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_KeilerFleischWeg_Condition;
	information	= Info_Mod_Ramsi_KeilerFleischWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramsi_KeilerFleischWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_KeilerTot))
	&& (Npc_IsDead(Mod_7366_JG_Jaeger_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_KeilerFleischWeg_Info()
{
	CreateInvItems	(self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);

	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_00"); //(schreit) Diese verdammten MISTKERLE! Sie haben all unsere gesammelten Vorr�te geklaut, geklaut!
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_01"); //Wei�t du, wo sie hin sind?
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerFleischWeg_15_02"); //Es war nur noch einer. Ich glaub, er ist Richtung Leuchtturm gefl�chtet.
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_03"); //Du musst ihn erwischen, uns gehen die Vorr�te aus.
	AI_Output(hero, self, "Info_Mod_Ramsi_KeilerFleischWeg_15_04"); //Alles klar. Geh schon mal zum Lager. Ich komme, wenn ich den Mistkerl zur Strecke gebracht habe.
	AI_Output(self, hero, "Info_Mod_Ramsi_KeilerFleischWeg_08_05"); //Verstehe. Gutes gelingen w�nsch ich.

	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "Einer der J�ger hat Ramsi niedergeschlagen und alles Fleisch f�r die Assassinen gestohlen. Er ist in Richtung Leuchtturm gerannt. Ich muss den Kerl stoppen, bevor er mir entwischen kann. Ramsi geht derweil ins Assassinenlager zur�ck und erwartet mich bald zur�ck.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	self.flags = 2;

	Mod_7368_JG_Jaeger_NW.flags = 0;

	B_StartOtherRoutine	(Mod_7368_JG_Jaeger_NW, "LAGER");
};

INSTANCE Info_Mod_Ramsi_JaegerTot (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_JaegerTot_Condition;
	information	= Info_Mod_Ramsi_JaegerTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe den Dieb gefasst und obendrein auch noch einen weiteren J�ger t�ten k�nnen.";
};

FUNC INT Info_Mod_Ramsi_JaegerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramsi_KeilerFleischWeg))
	&& (Npc_IsDead(Mod_7368_JG_Jaeger_NW))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramsi_JaegerTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramsi_JaegerTot_15_00"); //Ich habe den Dieb gefasst und obendrein auch noch einen weiteren J�ger t�ten k�nnen.
	AI_Output(self, hero, "Info_Mod_Ramsi_JaegerTot_08_01"); //Gute Arbeit, aber hast du auch das Fleisch?
	AI_Output(hero, self, "Info_Mod_Ramsi_JaegerTot_15_02"); //Klar, hier ist es.

	B_GiveInvItems	(hero, self, ItFo_MuttonRaw, 20);

	AI_Output(self, hero, "Info_Mod_Ramsi_JaegerTot_08_03"); //Danke, dass du das f�r mich getan hast. Hier sind 100 Goldm�nzen als Belohnung und du bekommst nat�rlich meine Stimme.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Ramsi_JaegerTot_15_04"); //Danke sehr.
	AI_Output(self, hero, "Info_Mod_Ramsi_JaegerTot_08_05"); //Keine Ursache. Ich werde dann mal das Fleisch braten. Man sieht sich.

	B_LogEntry	(TOPIC_MOD_ASS_RAMSI_JAGD, "Nachdem ich diese verfluchten J�ger aus dem Weg ger�umt und das Fleisch gesichert habe, bin ich gleich wieder zu Ramsi gegangen. Er hat mich mit 100 Goldm�nzen entlohnt und ich bin um eine Stimme reicher. Wenn das nicht gut ist.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_RAMSI_JAGD, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	self.flags = 0;
};

INSTANCE Info_Mod_Ramsi_Pickpocket (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_Pickpocket_Condition;
	information	= Info_Mod_Ramsi_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ramsi_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

	Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_BACK, Info_Mod_Ramsi_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ramsi_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

		Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ramsi_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ramsi_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ramsi_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ramsi_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ramsi_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ramsi_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ramsi_EXIT (C_INFO)
{
	npc		= Mod_7106_ASS_Ramsi_NW;
	nr		= 1;
	condition	= Info_Mod_Ramsi_EXIT_Condition;
	information	= Info_Mod_Ramsi_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ramsi_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramsi_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};