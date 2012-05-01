INSTANCE Info_Mod_Willingham_Hi (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_Hi_Condition;
	information	= Info_Mod_Willingham_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Willingham_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Willingham_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_00"); //Ah! Ein neues Gesicht und dazu noch ein starker K�rper. Sprich mein Freund, weshalb kommst du zu mir?
	AI_Output(hero, self, "Info_Mod_Willingham_Hi_15_01"); //Ich will mich bei euch n�tzlich machen, Kommander, um euer Land kennen zu lernen und zu sehen, wie es um euch steht.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_02"); //Gut! Aber bevor ich dir etwas �ber uns erz�hle, bitte ich dich, mir einen Gefallen zu tun.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_03"); //Ich habe einen Sp�htrupp zum zerfallenen Turm auf dem rauen Berg entsand, um die Lage am Pass auszusp�hen und den Wald davor nach Orks zu durchsuchen.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_04"); //Mittlerweile sind sie allerdings schon zwei Tage �berf�llig und m�ssten schon l�ngst wieder hier sein.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_05"); //Ich kann nicht noch mehr meiner M�nner dorthin schicken, aber du wei�t wie man einen langen Weg sicher �bersteht.
	AI_Output(hero, self, "Info_Mod_Willingham_Hi_15_06"); //Der Weg wird weniger das Problem sein, als das, was deine Leute aufgehalten hat ...
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_07"); //Ich werde dich nat�rlich bezahlen und mein Vertrauen ist dir dann auch sicher.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_08"); //Den rauen Berg siehst du, wenn du aus dem Stadttor gehst, genau vor dir. Auf ihn f�hrt ein Pass, der rechts aus dem Berg m�ndet.
	AI_Output(hero, self, "Info_Mod_Willingham_Hi_15_09"); //Wenn ich deine Leute finde, was soll ich ihnen sagen?
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_10"); //Ich will wissen, was sie zu berichten haben. Bring sie dann sicher zu mir.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_11"); //Ach, und wenn du auf dem Weg bei einem kleinen Holzf�llerlager Baro siehst, dann richte ihm aus, er soll sich auch bei mir melden.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_12"); //Nun geh und komm bald mit meinen M�nnern wieder.

	Log_CreateTopic	(TOPIC_MOD_EIS_RAUESCHNEIDE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_RAUESCHNEIDE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_RAUESCHNEIDE, "Ich soll f�r Kommander Willingham beim zerfallen Turm auf dem rauen Berg im Norden nach seinen M�nnern sehen und sie sicher ins Dorf zur�ckbringen. Au�erdem soll ich unterwegs noch dem Holzf�ller Baro Bescheid geben, dass er beim Kommander Bericht abliefern soll.");

	Wld_InsertNpc	(Mod_7730_OUT_Brendan_EIS, "NORTDGEBIET_93");
	Wld_InsertNpc	(Mod_7731_OUT_Wache_EIS, "NORTDGEBIET_88");
	Wld_InsertNpc	(Mod_7732_OUT_Wache_EIS, "NORTDGEBIET_88");

	B_KillNpc	(Mod_7731_OUT_Wache_EIS);
	B_KillNpc	(Mod_7732_OUT_Wache_EIS);

	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Riesenwolf, "NORTDGEBIET_88");

	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
};

INSTANCE Info_Mod_Willingham_RaueSchneide (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_RaueSchneide_Condition;
	information	= Info_Mod_Willingham_RaueSchneide_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Willingham_RaueSchneide_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_Hi))
	&& (Mod_BaroAtWillingham == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Willingham_RaueSchneide_Info()
{
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_00"); //Wenn die Orks den Pass angreifen sind wir mit der Au�enwelt nur noch durch den Steinkreis verbunden und sie haben uns in der Zange.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_01"); //Ihre Anzahl k�nnte fast stark genug sein, um das Dorf anzugreifen.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_02"); //Wir m�ssen herausfinden, wie sie in so hoher Anzahl auf einmal in unser Tal gelangt sind.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_03"); //Baro meinte er h�tte eine Idee wie wir dar�ber mehr erfahren k�nnen. Er wollte mit dir dar�ber sprechen.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_04"); //Du findest ihn im Haus direkt neber dem des B�rgermeisters. Am besten suchst du ihn jetzt auf und erstattest mir dann was er wei�.

	CurrentNQ += 1;

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_EIS_RAUESCHNEIDE, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_EIS_ORKRING, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_ORKRING, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "Kommander Willingham will wissen, woher die Orks kommen. Ich soll Baro aufsuchen, der mir mit Informationen wird dienen k�nnen.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Willingham_UntoteOrks (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_UntoteOrks_Condition;
	information	= Info_Mod_Willingham_UntoteOrks_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Willingham_UntoteOrks_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_UntoteOrks))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Willingham_UntoteOrks_Info()
{
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_00"); //Und, was wollte Baro? Was wei� er �ber die Orks?
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_01"); //Es sind anscheinend mehr, als wir gedacht haben. Au�erdem sind sie nicht mehr ganz lebendig.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_02"); //Willst du mir erz�hlen das sind untote Orks?
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_03"); //Genau das sind sie. Ein Orkschamane hat ein m�chtiges Artefakt in einem Tempel gefunden und fast alle Orks zu Untoten verwandelt.
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_04"); //Ich muss einen der Ork-Anf�hrer finden und ihn �ber den Standort des Schamanen befragen.
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_05"); //Baro meinte, Melchior k�nnte mir helfen.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_06"); //Wenn wir so an diesen Knaben heran kommen und diese Untoten stoppen k�nnen, werde ich Melchior in deine Dienste stellen.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_07"); //Er hat sein Lager am letzten Au�enposten vor dem Pass. Marcus soll dir den weg zu ihm zeigen und seinen Platz dort einnehmen.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_08"); //Au�erdem will ich dir diese Tr�nke mit auf den Weg geben. Viel Erfolg.

	B_GiveInvItems	(self, hero, ItPo_Health_02, 5);

	B_LogEntry	(TOPIC_MOD_EIS_UNTOTEORKS, "Marcus wird mich zu Melchior f�hren und dort dessen Platz einnehmen.");
};

INSTANCE Info_Mod_Willingham_Pickpocket (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_Pickpocket_Condition;
	information	= Info_Mod_Willingham_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Willingham_Pickpocket_Condition()
{
	C_Beklauen	(111, ItMi_Gold, 1000);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

	Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_BACK, Info_Mod_Willingham_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Willingham_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);
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

INSTANCE Info_Mod_Willingham_EXIT (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_EXIT_Condition;
	information	= Info_Mod_Willingham_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Willingham_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Willingham_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};