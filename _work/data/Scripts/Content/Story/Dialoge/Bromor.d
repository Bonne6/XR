INSTANCE Info_Mod_Bromor_Hi (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Hi_Condition;
	information	= Info_Mod_Bromor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Bromor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bromor_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Bromor_Hi_07_01"); //Ich bin Bromor, mir geh�rt dieses Bordell.
	AI_Output(self, hero, "Info_Mod_Bromor_Hi_07_02"); //Was kann ich f�r dich tun?
};

INSTANCE Info_Mod_Bromor_Bilgot (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Bilgot_Condition;
	information	= Info_Mod_Bromor_Bilgot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab geh�rt hier gibt es Probleme.";
};

FUNC INT Info_Mod_Bromor_Bilgot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bilgot_Mortis))
	&& (Mod_BilgotBromorBartok == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Bilgot_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Bilgot_15_00"); //Ich hab geh�rt hier gibt es Probleme.
	AI_Output(self, hero, "Info_Mod_Bromor_Bilgot_07_01"); //Ja, einer unserer Kunde will nicht zahlen. Sein Name ist Bartok.
};

INSTANCE Info_Mod_Bromor_Bartok (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Bartok_Condition;
	information	= Info_Mod_Bromor_Bartok_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab das Geld (500 Gold geben)";
};

FUNC INT Info_Mod_Bromor_Bartok_Condition()
{
	if (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& (Npc_KnowsInfo(hero, Info_Mod_Bromor_Bilgot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Bartok_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Bartok_15_00"); //Ich hab das Geld.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Bromor_Bartok_07_01"); //Danke.

	Mod_BilgotBromorBartok = 1;

	B_G�ttergefallen(1, 1);
};

INSTANCE Info_Mod_Bromor_Vanja (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Vanja_Condition;
	information	= Info_Mod_Bromor_Vanja_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab geh�rt du schl�gst deine M�dchen?";
};

FUNC INT Info_Mod_Bromor_Vanja_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vanja_Hilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Vanja_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_00"); //Ich hab geh�rt du schl�gst deine M�dchen?
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_01"); //Wer hat das gesagt?
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_02"); //Vanja sagt das.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_03"); //(zu sich) Na die kann was erleben ... (zum Held) Was willst du noch hier? Verschwinde!
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_04"); //Ich will, dass du Vanja nicht mehr schl�gst.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_05"); //Es geht dich �berhaupt nichts an, wie ich meine M�dchen behandel.
	AI_Output(self, hero, "Info_Mod_Bromor_Vanja_07_06"); //Ich glaube, ich sollte dir mal ne Lektion erteilen.
	AI_Output(hero, self, "Info_Mod_Bromor_Vanja_15_07"); //Dann komm doch her!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Bromor_Umgehauen (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Umgehauen_Condition;
	information	= Info_Mod_Bromor_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bromor_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Vanja))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Bromor_Umgehauen_04_00"); //Oh, mein Sch�del.
			AI_Output(hero, self, "Info_Mod_Bromor_Umgehauen_15_01"); //L�sst du Vanja jetzt in Frieden?
			AI_Output(self, hero, "Info_Mod_Bromor_Umgehauen_04_02"); //Ja, ist ja gut, aber verzieh' dich.

			B_LogEntry	(TOPIC_MOD_VANJA_BROMOR, "Bromor sagt, er l�sst Vanja jetzt in Ruhe.");

			Mod_Vanja_BromorKO = 1;

			B_G�ttergefallen(1, 1);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Bromor_Umgehauen_04_03"); //Gro�e Spr�che klopfen und nichts dahinter. Jetzt verzieh dich und misch dich nicht in meine Angelegenheiten ein.

			B_SetTopicStatus	(TOPIC_MOD_VANJA_BROMOR, LOG_FAILED);
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Bromor_Gardist (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Gardist_Condition;
	information	= Info_Mod_Bromor_Gardist_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Bromor_Gardist_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_BromorSchuld))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_RattenGespawnt))
	&& (Npc_RefuseTalk(self) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Gardist_Info()
{
	AI_Output(self, hero, "Info_Mod_Bromor_Gardist_07_00"); //Du bist hier unerw�nscht, verzieh dich.

	AI_GotoWP	(hero, "NW_CITY_HABOUR_PUFF_ENTRANCE");

	Npc_SetRefuseTalk(self, 5);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bromor_Aufgeben (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Aufgeben_Condition;
	information	= Info_Mod_Bromor_Aufgeben_Info;
	permanent	= 0;
	important	= 0;
	description	= "H�rst du auf, zu versuchen, uns zu ruinieren?";
};

FUNC INT Info_Mod_Bromor_Aufgeben_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_RattenGespawnt))
	&& (Wld_IsTime(21,00,06,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Aufgeben_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Aufgeben_15_00"); //H�rst du auf, zu versuchen, uns zu ruinieren?
	AI_Output(self, hero, "Info_Mod_Bromor_Aufgeben_07_01"); //Ja, aber bringt das ganze hier wieder in Ordnung. Dann h�rt ihr nichts mehr von mir.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Bromor hat zugestimmt. Er l�sst uns in Ruhe, wenn wir alles wieder in Ordnung bringen.");
};

INSTANCE Info_Mod_Bromor_Shakir (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Shakir_Condition;
	information	= Info_Mod_Bromor_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tag, gro�er Zuh�lter.";
};

FUNC INT Info_Mod_Bromor_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_Frau))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_00"); //Tag, gro�er Zuh�lter.
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_01"); //Was hei�t hier Zuh�lter? Ich halte auf. Und zwar meinen Beutel. 100 Gold die Dame.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_02"); //Abgemacht. Aber ich m�chte die Person mit nach Hause nehmen.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_03"); //So sch�n auf Wargenfell, am offenen Feuer, eine gute Flasche Klosterwein. Du wei�t schon.
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_04"); //Wo denkst du hin? Ich lasse meine M�dchen nicht aus den Augen.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_05"); //Und wenn ich das Doppelte zahle?
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_06"); //Vergiss es. Die bleiben im Haus. Such dir doch 'ne Stra�endirne.
	AI_Output(hero, self, "Info_Mod_Bromor_Shakir_15_07"); //Dann kommen wir nicht ins Gesch�ft.
	AI_Output(self, hero, "Info_Mod_Bromor_Shakir_07_08"); //So sehe ich das auch.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Bromor will mir keine Frau mitgeben. Ich soll 'ne Stra�endirne suchen. Hm ... Mal Moe fragen, der kennt sich hier aus.");
};

INSTANCE Info_Mod_Bromor_NadjaBeiDexter (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_NadjaBeiDexter_Condition;
	information	= Info_Mod_Bromor_NadjaBeiDexter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Und, wie l�uft das Gesch�ft?";
};

FUNC INT Info_Mod_Bromor_NadjaBeiDexter_Condition()
{
	if (Mod_Banditen_Mine == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bromor_NadjaBeiDexter_Info()
{
	AI_Output(hero, self, "Info_Mod_Bromor_NadjaBeiDexter_15_00"); //Und, wie l�uft das Gesch�ft?
	AI_Output(self, hero, "Info_Mod_Bromor_NadjaBeiDexter_07_01"); //Miserabel. Mein bestes M�dchen Nadja hat sich aus dem Staub gemacht.
	AI_Output(self, hero, "Info_Mod_Bromor_NadjaBeiDexter_07_02"); //Sie hockt jetzt bei irgendeinem neureichen Bastard, der k�rzlich durch das Erzgesch�ft zu gro�em Reichtum kam. Verdammter Schei�dreck!
};

INSTANCE Info_Mod_Bromor_Pickpocket (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_Pickpocket_Condition;
	information	= Info_Mod_Bromor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bromor_Pickpocket_Condition()
{
	C_Beklauen	(112, ItMi_Gold, 45);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

	Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_BACK, Info_Mod_Bromor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bromor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

		Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bromor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bromor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bromor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bromor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bromor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bromor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bromor_EXIT (C_INFO)
{
	npc		= Mod_567_NONE_Bromor_NW;
	nr		= 1;
	condition	= Info_Mod_Bromor_EXIT_Condition;
	information	= Info_Mod_Bromor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bromor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bromor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};