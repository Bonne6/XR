INSTANCE Info_Mod_Hans_Hi (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Hi_Condition;
	information	= Info_Mod_Hans_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Handelst du?";
};

FUNC INT Info_Mod_Hans_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hans_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Hans_Hi_15_00"); //Handelst du?
	AI_Output(self, hero, "Info_Mod_Hans_Hi_06_01"); //Herrje, warum sollte ich mir hier sonst die Beine in den Arsch stehen?
	AI_Output(hero, self, "Info_Mod_Hans_Hi_15_02"); //Das ist aber nicht sehr kundenfreundlich ...
	AI_Output(self, hero, "Info_Mod_Hans_Hi_06_03"); //Es gibt tollere Jobs als meinen. Ich w�rde viel lieber selbst mal in der Welt umherziehen als nur den Abenteurerkram zu verkaufen.
	AI_Output(hero, self, "Info_Mod_Hans_Hi_15_04"); //Aber ...
	AI_Output(self, hero, "Info_Mod_Hans_Hi_06_05"); //Wieso ich nicht einfach meinen Job an den Nagel h�nge?
	AI_Output(self, hero, "Info_Mod_Hans_Hi_06_06"); //Weil ich ein Kr�ppel bin, Junge, ein verdammter Kr�ppel.
	AI_Output(self, hero, "Info_Mod_Hans_Hi_06_07"); //Ich seh die Hand vor Augen nicht mehr, nur noch verschwommenen Mist. (Pause) Willst du jetzt eigentlich was kaufen oder nicht?

	Log_CreateTopic	(TOPIC_MOD_HAENDLER_KHORATA, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_KHORATA, "Hans handelt auf dem Marktplatz mit Waffen.");
};

INSTANCE Info_Mod_Hans_Nagelnachschub (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Nagelnachschub_Condition;
	information	= Info_Mod_Hans_Nagelnachschub_Info;
	permanent	= 0;
	important	= 0;
	description 	= "(Feilschen) F�r die H�lfte nehm ich's.";
};                       

FUNC INT Info_Mod_Hans_Nagelnachschub_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hans_Buerger))
	&& (Mod_Verhandlungsgeschick > 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 25)
	&& (Mod_REL_Nagelnachschub_Hans == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_Nagelnachschub_Info()
{
	AI_Output(hero, self, "Info_Mod_Hans_Nagelnachschub_15_00"); //F�r die H�lfte nehm ich's.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Hans_Nagelnachschub_06_01"); //Abgemacht.

		Npc_RemoveInvItems	(hero, ItMi_Gold, 25);

		CreateInvItems	(hero, ItMi_Nagelpaket, 1);

		B_ShowGivenThings	("25 Gold gegeben und Nagelpaket erhalten");

		B_RaiseHandelsgeschick (2);

		Mod_REL_Nagelnachschub_Hans = 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Hans_Nagelnachschub_06_02"); //Entweder f�r 50 Gold oder gar nicht.
	};
};

INSTANCE Info_Mod_Hans_Nagelnachschub2 (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Nagelnachschub2_Condition;
	information	= Info_Mod_Hans_Nagelnachschub2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Hier ist das Gold.";
};                       

FUNC INT Info_Mod_Hans_Nagelnachschub2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hans_Buerger))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 50)
	&& (Mod_REL_Nagelnachschub_Hans == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_Nagelnachschub2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hans_Nagelnachschub2_15_00"); //Hier ist das Gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Hans_Nagelnachschub2_06_01"); //... und hier die N�gel.

	B_GiveInvItems	(self, hero, ItMi_Nagelpaket, 1);

	Mod_REL_Nagelnachschub_Hans = 1;
};

INSTANCE Info_Mod_Hans_Nagelnachschub3 (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Nagelnachschub3_Condition;
	information	= Info_Mod_Hans_Nagelnachschub3_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Hans_Nagelnachschub3_Condition()
{
	if (Mod_REL_Buerger == 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_Nagelnachschub3_Info()
{
	AI_Output(self, hero, "Info_Mod_Hans_Nagelnachschub3_06_00"); //Da ist ja der neue B�rger! Willkommen bei uns.

	B_GiveInvItems	(self, hero, ItMi_Freudenspender, 1);
};

INSTANCE Info_Mod_Hans_BuergerKhoratas (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_BuergerKhoratas_Condition;
	information	= Info_Mod_Hans_BuergerKhoratas_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Wie viele Handelsst�nde hat der Marktplatz eigentlich?";
};                       

FUNC INT Info_Mod_Hans_BuergerKhoratas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger2))
	&& (Mod_REL_Buerger == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_BuergerKhoratas_Info()
{
	AI_Output(hero, self, "Info_Mod_Hans_BuergerKhoratas_15_00"); //Wie viele Handelsst�nde hat der Marktplatz eigentlich?
	AI_Output(self, hero, "Info_Mod_Hans_BuergerKhoratas_06_01"); //Hast du wohl zu viel Freudenspender genommen? Was soll die Frage?
	AI_Output(hero, self, "Info_Mod_Hans_BuergerKhoratas_15_02"); //Ich nicht, aber Anselm ... Er m�chte die korrekte Anzahl wissen.
	AI_Output(self, hero, "Info_Mod_Hans_BuergerKhoratas_06_03"); //Dann ist mir alles klar. Er benutzt dich, um herauszufinden, ob Melvin schon wieder versucht, ganz offiziell Diebesgut loszuwerden.
	AI_Output(hero, self, "Info_Mod_Hans_BuergerKhoratas_15_04"); //Das k�nnte Anselm doch selbst herausfinden. Wir befinden uns schlie�lich direkt vor seiner T�r.
	AI_Output(self, hero, "Info_Mod_Hans_BuergerKhoratas_06_05"); //Stimmt. Vielleicht wollte er dich auch einfach loswerden.
	AI_Output(hero, self, "Info_Mod_Hans_BuergerKhoratas_15_06"); //Und wie viele St�nde sind es nun?
	AI_Output(self, hero, "Info_Mod_Hans_BuergerKhoratas_06_07"); //Lass mich z�hlen ... 1 ... 2 ... 3 ... 4. Und mich. Also f�nf.
	AI_Output(hero, self, "Info_Mod_Hans_BuergerKhoratas_15_08"); //Besten Dank.
};

INSTANCE Info_Mod_Hans_BuergerKhoratas2 (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_BuergerKhoratas2_Condition;
	information	= Info_Mod_Hans_BuergerKhoratas2_Info;
	permanent	= 1;
	important	= 0;
	description 	= "Wie viele Handelsst�nde am Marktplatz waren es noch gleich?";
};                       

FUNC INT Info_Mod_Hans_BuergerKhoratas2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hans_BuergerKhoratas))
	&& (Mod_REL_Buerger == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_BuergerKhoratas2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hans_BuergerKhoratas2_15_00"); //Wie viele Handelsst�nde am Marktplatz waren es noch gleich?
	AI_Output(self, hero, "Info_Mod_Hans_BuergerKhoratas2_06_01"); //Herrje, du hast es nicht so mit dem Z�hlen, wie? F�nf St�nde, hatte ich gesagt.
};

INSTANCE Info_Mod_Hans_Buerger (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Buerger_Condition;
	information	= Info_Mod_Hans_Buerger_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Ich bin auf der Suche nach N�geln.";
};                       

FUNC INT Info_Mod_Hans_Buerger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Wettstreit))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_Buerger_Info()
{
	AI_Output(hero, self, "Info_Mod_Hans_Buerger_15_00"); //Ich bin auf der Suche nach N�geln.
	AI_Output(self, hero, "Info_Mod_Hans_Buerger_06_01"); //Hmm, eine Packung habe ich noch. Kostet allerdings 50 Gold.
};

INSTANCE Info_Mod_Hans_Kissen (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Kissen_Condition;
	information	= Info_Mod_Hans_Kissen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Hast du noch was anderes als Waffen?";
};                       

FUNC INT Info_Mod_Hans_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hans_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Malik_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kissen))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_Kissen_Info()
{
	AI_Output(hero, self, "Info_Mod_Hans_Kissen_15_00"); //Hast du noch was anderes als Waffen?
	AI_Output(self, hero, "Info_Mod_Hans_Kissen_06_01"); //Eigentlich nicht. Au�er Moleratfett.
	AI_Output(hero, self, "Info_Mod_Hans_Kissen_15_02"); //Moleratfett? Hmm ... Nein, das stinkt. Wiedersehen.
};

INSTANCE Info_Mod_Hans_Kimon (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Kimon_Condition;
	information	= Info_Mod_Hans_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Wie geht es dir?";
};                       

FUNC INT Info_Mod_Hans_Kimon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hans_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Penner_Kimon))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kimon))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_Kimon_Info()
{
	AI_Output(hero, self, "Info_Mod_Hans_Kimon_15_00"); //Wie geht es dir?
	AI_Output(self, hero, "Info_Mod_Hans_Kimon_06_01"); //Schlecht wie immer.
	AI_Output(hero, self, "Info_Mod_Hans_Kimon_15_02"); //Dann solltest du mal den Freudenspender trinken.
	AI_Output(self, hero, "Info_Mod_Hans_Kimon_06_03"); //Bei Adanos! Ich hasse das Zeug! Macht die Leute hier verr�ckt. Aber nicht mit mir.
	AI_Output(hero, self, "Info_Mod_Hans_Kimon_15_04"); //Wei�t du, wo ich welchen bekommen kann?
	AI_Output(self, hero, "Info_Mod_Hans_Kimon_06_05"); //Nein. Und mach dich fort. Auf deine Ratschl�ge kann ich verzichten.
	AI_Output(hero, self, "Info_Mod_Hans_Kimon_15_06"); //Entschuldigung.
};

INSTANCE Info_Mod_Hans_Theodorus (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Theodorus_Condition;
	information	= Info_Mod_Hans_Theodorus_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Hans_Theodorus_Condition()
{
	if(Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen7))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_Theodorus_Info()
{
	AI_Output(self, hero, "Info_Mod_Hans_Theodorus_06_00"); //Was f�llt dir blo� ein, diesen Schwafler, diesen Nichtsnutz als Stadthalter zu bestimmen?!
	AI_Output(self, hero, "Info_Mod_Hans_Theodorus_06_01"); //Und wieso durftest du das �berhaupt entscheiden?
	AI_Output(hero, self, "Info_Mod_Hans_Theodorus_15_02"); //Damit die Entscheidung nicht an Leuten wie dir h�ngt.
	AI_Output(self, hero, "Info_Mod_Hans_Theodorus_06_03"); //(br�llt) Rei� dein Maul nicht so weit auf, kapiert? Wegen dir und solcher Besserwisser sitzen wir hier doch in der Schei�e!
	AI_Output(hero, self, "Info_Mod_Hans_Theodorus_15_04"); //Ich glaube, es hat wenig Sinn, noch weiter dar�ber zu diskutieren.
};

INSTANCE Info_Mod_Hans_Unruhen (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Unruhen_Condition;
	information	= Info_Mod_Hans_Unruhen_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Hans_Unruhen_Condition()
{
	if (Mod_REL_Stadthalter == 3)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_Unruhen_Info()
{
	AI_Output(self, hero, "Info_Mod_Hans_Unruhen_06_00"); //Da bist du ja. Ich wollte dir zu deiner Entscheidung gratulieren.
	AI_Output(self, hero, "Info_Mod_Hans_Unruhen_06_01"); //Ich kenne Lukas schon lange, und er ist ein ordentlicher Bursche. Nebenbei habe ich als sein langj�hriger Freund nat�rlich ein paar Handelsprivilegien erhalten.
	AI_Output(hero, self, "Info_Mod_Hans_Unruhen_15_02"); //(ironisch) Nat�rlich.
	AI_Output(self, hero, "Info_Mod_Hans_Unruhen_06_03"); //Diese Privilegien sollen meine Benachteiligungen ausgleichen. Wegen meiner Augen.
	AI_Output(self, hero, "Info_Mod_Hans_Unruhen_06_04"); //Ich konnte deswegen mein Angebot etwas aufstocken. Sieh dich ruhig um.
};

INSTANCE Info_Mod_Hans_Freudenspender (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Freudenspender_Condition;
	information	= Info_Mod_Hans_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Etwas Freudenspender gegen den harten Alltag gef�llig?";
};                       

FUNC INT Info_Mod_Hans_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Hans_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Hans_Freudenspender_15_00"); //Etwas Freudenspender gegen den harten Alltag gef�llig?
	AI_Output(self, hero, "Info_Mod_Hans_Freudenspender_06_01"); //Willst du dich �ber mich lustig machen?
	AI_Output(self, hero, "Info_Mod_Hans_Freudenspender_06_02"); //(leise) Ich nehm nichts mehr, seit mir ein Halunke gepressten Skavengerdung untergejubelt hat.
	AI_Output(self, hero, "Info_Mod_Hans_Freudenspender_06_03"); //Und hey, man kommt wirklich auch ohne klar.
};

INSTANCE Info_Mod_Hans_Trade (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Trade_Condition;
	information	= Info_Mod_Hans_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Hans_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hans_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hans_Theodorus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hans_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Hans_Pickpocket (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_Pickpocket_Condition;
	information	= Info_Mod_Hans_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Hans_Pickpocket_Condition()
{
	C_Beklauen	(53, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Hans_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hans_Pickpocket);

	Info_AddChoice	(Info_Mod_Hans_Pickpocket, DIALOG_BACK, Info_Mod_Hans_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hans_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hans_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hans_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hans_Pickpocket);
};

FUNC VOID Info_Mod_Hans_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hans_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hans_Pickpocket);

		Info_AddChoice	(Info_Mod_Hans_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hans_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hans_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hans_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hans_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hans_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hans_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hans_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hans_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hans_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hans_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hans_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hans_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hans_EXIT (C_INFO)
{
	npc		= Mod_7377_OUT_Hans_REL;
	nr		= 1;
	condition	= Info_Mod_Hans_EXIT_Condition;
	information	= Info_Mod_Hans_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hans_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hans_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};