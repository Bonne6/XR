INSTANCE Info_Mod_Wilfried_Hi (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Hi_Condition;
	information	= Info_Mod_Wilfried_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wilfried_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_Hi_08_00"); //(aufgebracht) Es ist zum Verzweifeln! Ich suche schon den ganzen Tag!
};

INSTANCE Info_Mod_Wilfried_WhatHappened (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_WhatHappened_Condition;
	information	= Info_Mod_Wilfried_WhatHappened_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was suchst du?";
};

FUNC INT Info_Mod_Wilfried_WhatHappened_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_WhatHappened_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_WhatHappened_15_00"); //Was suchst du?
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_01"); //Meinen Geldbeutel! Ich bin mir sicher, dass ich ihn gestern noch bei mir hatte ...
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_02"); //Ja, ich habe schlie�lich f�r das Bier bezahlt, bevor ich von der Kneipe nach Hause ging.
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_03"); //Aber dann... ich muss ihn verloren haben, anders kann ich es mir nicht erkl�ren.
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_04"); //Das ganze Haus habe ich danach abgesucht - nichts!
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_05"); //Auf dem Heimweg, ja, auf dem Heimweg muss er aus meiner Tasche gefallen sein...
};

INSTANCE Info_Mod_Wilfried_Hilfe (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Hilfe_Condition;
	information	= Info_Mod_Wilfried_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kann ich dir bei der Suche helfen?";
};

FUNC INT Info_Mod_Wilfried_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_WhatHappened))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hilfe_15_00"); //Kann ich dir bei der Suche helfen?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_01"); //Jeden Tag eine gute Tat, was? Klar w�rde es mich freuen, wenn du mir zur Hand gehen k�nntest. Du wei�t ja ... die Knochen im Alter. (lacht)
	AI_Output(hero, self, "Info_Mod_Wilfried_Hilfe_15_02"); //Was soll ich tun?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_03"); //Also, das Haus habe ich schon auf den Kopf gestellt, hier ist der Beutel nicht. Darauf w�rde ich alles verwetten, was ich noch habe. (lacht)
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_04"); //Aber drau�en war ich heute noch nicht. Du kennst die Kneipe?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_05"); //Am besten, du suchst den Weg auf beiden Seiten ab, man wei� ja nie, wo er gelandet sein kann ... hoffentlich hat ihn noch niemand anderes gefunden.
};

INSTANCE Info_Mod_Wilfried_Ok (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Ok_Condition;
	information	= Info_Mod_Wilfried_Ok_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mal sehen, was sich so finden l�sst.";
};

FUNC INT Info_Mod_Wilfried_Ok_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Hilfe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wilfried_No))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Ok_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Ok_15_00"); //Mal sehen, was sich so finden l�sst.
	AI_Output(self, hero, "Info_Mod_Wilfried_Ok_08_01"); //Nett von dir. (verschw�rerisch) Ach, bevor ich es vergesse: Du musst ja nicht jedem von meinem Dilemma erz�hlen, reicht doch, wenn wir beide davon wissen, oder?
	AI_Output(hero, self, "Info_Mod_Wilfried_Ok_15_02"); //Was springt f�r mich als Belohnung heraus?
	AI_Output(self, hero, "Info_Mod_Wilfried_Ok_08_03"); //Als Belohnung k�nnte ich dir ein Zehntel des Goldes anbieten, das du in dem Beutel findest.
	AI_Output(self, hero, "Info_Mod_Wilfried_Ok_08_04"); //(schelmisch) Ehrlichkeit wird bei mir belohnt, das wirst du schon noch merken.

	Log_CreateTopic	(TOPIC_MOD_WILFRIED_GOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Der alte Wilfried hat mich gebeten, f�r ihn auf dem Weg von seinem Haus zur Kneipe nach seinem verlorenen Geldbeutel zu suchen. Als Belohnung winken ein Zehntel des Betrags, der in dem Geldbeutel verblieben ist. Eine Bedingung ist jedoch, dass ich niemandem von dem Vorfall erz�hle.");

	Wld_InsertItem	(ItSe_WilfriedsBeutel, "FP_ITEM_WILFRIED");
};

INSTANCE Info_Mod_Wilfried_No (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_No_Condition;
	information	= Info_Mod_Wilfried_No_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Drecksarbeit kannst du anderen aufhalsen.";
};

FUNC INT Info_Mod_Wilfried_No_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Hilfe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wilfried_OK))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_No_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_No_15_00"); //Die Drecksarbeit kannst du anderen aufhalsen.
	AI_Output(self, hero, "Info_Mod_Wilfried_No_08_01"); //Hey, ich hab' dich zu nichts gezwungen. Aber lass' mich wenigstens in Ruhe mit deiner schlechten Laune!
};

INSTANCE Info_Mod_Wilfried_HabBeutel (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_HabBeutel_Condition;
	information	= Info_Mod_Wilfried_HabBeutel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_HabBeutel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Ok))
	&& (Npc_HasItems(hero, ItSe_WilfriedsBeutel) == 1)
	&& (Mod_HatBeutelWilfried == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_HabBeutel_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_08_00"); //Da bist du ja wieder! Ist deine Suche erfolgreich verlaufen?
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_15_01"); //Wie man's nimmt. Den Geldbeutel habe ich gefunden, aber ... sieh selbst.

	B_GiveInvItems	(hero, self, ItSe_WilfriedsBeutel, 1);

	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_08_02"); //(entsetzt) Nein! Das kann nicht dein Ernst sein... du hast es gestohlen!

	Info_ClearChoices	(Info_Mod_Wilfried_HabBeutel);

	Info_AddChoice	(Info_Mod_Wilfried_HabBeutel, "Das stimmt... das Geld habe ich an mich genommen (...)", Info_Mod_Wilfried_HabBeutel_Ja);
	Info_AddChoice	(Info_Mod_Wilfried_HabBeutel, "Wieso h�tte ich dann zu dir zur�ckkehren sollen?", Info_Mod_Wilfried_HabBeutel_Nein);
};

FUNC VOID Info_Mod_Wilfried_HabBeutel_Ja()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_Ja_15_00"); //Das stimmt... das Geld habe ich an mich genommen, und du wirst nichts mehr davon wiedersehen!
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Ja_08_01"); //Na warte, du Dreckskerl!

	Info_ClearChoices	(Info_Mod_Wilfried_HabBeutel);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);

	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_FAILED);

	CurrentNQ += 1;
};

FUNC VOID Info_Mod_Wilfried_HabBeutel_Nein()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_Nein_15_00"); //Wieso h�tte ich dann zu dir zur�ckkehren sollen?
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_01"); //(zweifelnd) Ja, du magst Recht haben. Es gibt Personen, denen ich so etwas weitaus mehr zutrauen w�rde.
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_02"); //(murmelt) Thilo, dieser verdammte Bursche...
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_Nein_15_03"); //Ich k�nnte den Stadtwachen von dem Vorfall berichten...
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_04"); //Nein! �h, ich w�rde es bevorzugen, wenn du der Stadtwache nichts erz�hlen w�rdest.
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_05"); //Die hat schon genug zu tun, da muss man sie ja nicht wegen solcher Lappalien bel�stigen. (lacht unsicher)
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_06"); //Sei sch�n brav und behalte es f�r dich... als ein Geheimnis.

	B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Das Gespr�ch mit Wilfried hat mehr Fragen aufgeworfen als beantwortet. Irgendetwas scheint er mir zu verheimlichen. Und wer ist dieser m�gliche Dieb Thilo? Vielleicht kennt der Antworten...");

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Wilfried_HabBeutel);

	Mod_WilfriedsQuest = 1;
};

INSTANCE Info_Mod_Wilfried_Belohnung (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Belohnung_Condition;
	information	= Info_Mod_Wilfried_Belohnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was ist mit meiner Belohnung?";
};

FUNC INT Info_Mod_Wilfried_Belohnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_HabBeutel))
	&& (Mod_WilfriedsQuest == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Belohnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Belohnung_15_00"); //Was ist mit meiner Belohnung?
	AI_Output(self, hero, "Info_Mod_Wilfried_Belohnung_08_01"); //Daraus wird wohl nichts, mein Freund. Ein Zehntel des Goldes aus dem Beutel ist in diesem Fall kein Gold.
	AI_Output(self, hero, "Info_Mod_Wilfried_Belohnung_08_02"); //Es tut mir Leid. Wenn ich ein wohlhabender Mann w�re, k�nnte ich dir mehr anbieten.
	AI_Output(hero, self, "Info_Mod_Wilfried_Belohnung_15_03"); //R�ck dein Gold raus oder ich pr�gle es aus dir heraus!
	AI_Output(self, hero, "Info_Mod_Wilfried_Belohnung_08_04"); //(w�tend) Schluss mit dem Gefasel! Hast du nichts Besseres zu tun?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wilfried_Thilo (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Thilo_Condition;
	information	= Info_Mod_Wilfried_Thilo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_Thilo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_WilfriedsQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Thilo_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_08_00"); //Was willst du noch von mir?

	Info_ClearChoices	(Info_Mod_Wilfried_Thilo);

	Info_AddChoice	(Info_Mod_Wilfried_Thilo, "Thilo ist der Dieb, er hat mir gestanden!", Info_Mod_Wilfried_Thilo_Dieb);
	Info_AddChoice	(Info_Mod_Wilfried_Thilo, "Wie lautet die ganze Geschichte hinter dem Diebstahl deines Beutels?", Info_Mod_Wilfried_Thilo_Wahrheit);
};

FUNC VOID Info_Mod_Wilfried_Thilo_Dieb()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Dieb_15_00"); //Thilo ist der Dieb, er hat mir gestanden!
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Dieb_08_01"); //Ich habe dir doch befohlen, �ber den Vorfall zu schweigen!
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Dieb_15_02"); //Aber ...
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Dieb_08_03"); //(b�se) Es hat dich auch gar nicht zu interessieren. Verschwinde endlich!
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Dieb_08_04"); //Raus!

	Info_ClearChoices	(Info_Mod_Wilfried_Thilo);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Wilfried_Thilo_Wahrheit()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Wahrheit_15_00"); //Wie lautet die ganze Geschichte hinter dem Diebstahl deines Beutels?
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Wahrheit_08_01"); //(wenig �berzeugend) Ich habe dir alles gesagt, was ich wei�!
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Wahrheit_15_02"); //Das glaube ich kaum.
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Wahrheit_08_03"); //(b�se) Es hat dich auch gar nicht zu interessieren. Verschwinde endlich!
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Wahrheit_08_04"); //Raus!

	Info_ClearChoices	(Info_Mod_Wilfried_Thilo);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wilfried_Hoehle (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Hoehle_Condition;
	information	= Info_Mod_Wilfried_Hoehle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_Hoehle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_WilfriedWeg))
	&& (Mod_WilfriedsQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_08_00"); //(ruhig) Warum kommst du mich besuchen?
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_15_01"); //Ich habe Fragen.
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_08_02"); //Nur zu, ich habe nichts zu verbergen.

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Du wirst in der Stadt gesucht.", Info_Mod_Wilfried_Hoehle_Stadt);
	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Wieso bist du in diese H�hle gefl�chtet?", Info_Mod_Wilfried_Hoehle_Weg);
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Stadt()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_Stadt_15_00"); //Du wirst in der Stadt gesucht. Es gibt einige, die noch etwas mit dir zu bereden haben.
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Stadt_08_01"); //(sinniert) Findest du es nicht herrlich ruhig hier?

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Ruhig?", Info_Mod_Wilfried_Hoehle_Ruhe);
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Weg()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_Weg_15_00"); //Wieso bist du in diese H�hle gefl�chtet?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Weg_08_01"); //Ich suche meine H�hle h�ufig auf, um mich von der Stadt zu erholen. Findest du es nicht herrlich ruhig hier?

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Ruhig?", Info_Mod_Wilfried_Hoehle_Ruhe);
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Ruhe()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_Ruhe_15_00"); //Ruhig?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Ruhe_08_01"); //(entspannt) Ich h�re niemanden... niemand h�rt mich... (Pause/ zischt pl�tzlich) Und niemand wird dich h�ren, wenn du j�mmerlich um Gnade winseln wirst!
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Ruhe_08_02"); //(bricht aus) Du wirst mir mein Gold nicht nehmen!

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Wilfried_Pickpocket (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Pickpocket_Condition;
	information	= Info_Mod_Wilfried_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_40;
};

FUNC INT Info_Mod_Wilfried_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 90);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

	Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_BACK, Info_Mod_Wilfried_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wilfried_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);
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

INSTANCE Info_Mod_Wilfried_EXIT (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_EXIT_Condition;
	information	= Info_Mod_Wilfried_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wilfried_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wilfried_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};