INSTANCE Info_Mod_Morgahard_Hi (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Hi_Condition;
	information	= Info_Mod_Morgahard_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hallo, wer bist du und was ist deine Aufgabe im Lager?";
};

FUNC INT Info_Mod_Morgahard_Hi_Condition()
{
	if (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_Hi_15_00"); //Hallo, wer bist du und was ist deine Aufgabe im Lager?
	AI_Output(self, hero, "Info_Mod_Morgahard_Hi_07_01"); //Ich bin Morgahard. Ich mache dieses und jenes. Manchmal organisiere ich einen �berfall, und manchmal organisiere ich hei�e Ware.
	AI_Output(self, hero, "Info_Mod_Morgahard_Hi_07_02"); //Au�erdem kann ich dir manchen Banditentrick zeigen, der bei �berf�llen goldwert ist.

	Npc_SetRefuseTalk	(self, 60);
};

INSTANCE Info_Mod_Morgahard_OrkQuest (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_OrkQuest_Condition;
	information	= Info_Mod_Morgahard_OrkQuest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Morgahard_OrkQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_Hi))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_Info()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_00"); //Hey, ich Habe da vielleicht etwas f�r dich, womit du dich im Lager bew�hren kannst.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_01"); //Etwas anspruchsvoller, als nur paar mickrige H�ndler zu �berfallen. Wobei es f�r uns mittlerweile auch schon fast zur Gewohnheit geworden ist.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_02"); //Es treiben sich n�mlich immer wieder Patrouillen des feindlichen Orklagers in der N�he des Lagers herum.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_03"); //Vielleicht bist du w�hrend deiner Gefangenschaft in der Barriere auch schon mal Orks begegnet?

	Log_CreateTopic	(TOPIC_MOD_BDT_MORGAHARD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_MORGAHARD, LOG_RUNNING);

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Ich habe damals im Alleingang die Orkstadt niedergemacht ...", Info_Mod_Morgahard_OrkQuest_C);
	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Echte, gro�e, b�se Orks?!", Info_Mod_Morgahard_OrkQuest_B);
	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Ja, bin tats�chlich Orks paar mal �ber den Weg gelaufen ...", Info_Mod_Morgahard_OrkQuest_A);
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_D()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_D_07_00"); //Jedenfalls haben unsere Sp�her beobachtet, wie sich jeden Abend eine Gruppe Orks in der kleinen H�hle direkt unterhalb unseres Lagers niederl�sst.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_D_07_01"); //Und deine Aufgabe ist es nun, mit einer Gruppe Banditen nachts hinzuschleichen und sie zu �berraschen, wenn sie arglos auf ihren Schlaffelle am Boden sitzen und ihre Waffen neben sich abgelegt haben.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_D_07_02"); //Was sagst du? Das w�rde dir einiges Ansehen im Lager einbringen.

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Das ist mir zu gef�hrlich.", Info_Mod_Morgahard_OrkQuest_F);
	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Eine kleine Gruppe schlafender Orks?", Info_Mod_Morgahard_OrkQuest_E);
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_C()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_C_15_00"); //Ich habe damals im Alleingang die Orkstadt niedergemacht ...
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_C_07_01"); //Aber klar, und ich habe gestern alleine einen schwarzen Troll get�tet. (lacht) Aber mit dieser Einstellung schaffst du ganz bestimmt die paar Orks.

	Info_Mod_Morgahard_OrkQuest_D();
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_B()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_B_15_00"); //Echte, gro�e, b�se Orks?!
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_B_07_01"); //Ach, stell dich nicht so an. Die meisten von uns haben zumindest schon mal einen Orksp�her erschlagen und du hast bewiesen, dass du K�mpfen kannst.

	Info_Mod_Morgahard_OrkQuest_D();
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_A()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_A_15_00"); //Ja, bin tats�chlich Orks paar mal �ber den Weg gelaufen ...
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_A_07_01"); //Und du lebst noch. Das sind schon mal gute Voraussetzungen f�r die Aufgabe.

	Info_Mod_Morgahard_OrkQuest_D();
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_F()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_F_15_00"); //Das ist mir zu gef�hrlich.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_F_07_01"); //Was?! Ich bin wirklich entt�uscht von dir.

	Mod_MorgahardBeleidigt = 1;

	B_SetTopicStatus	(TOPIC_MOD_BDT_MORGAHARD, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_E()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_E_15_00"); //Eine kleine Gruppe schlafender Orks? Du kannst mir schon mal einen K�ufer f�r ihre Ausr�stung ausfindig machen.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_E_07_01"); //Sehr gut, ich habe auch nichts anderes von dir erwartet. Finde drei bis f�nf anderen Banditen aus dem Lager, die um Mitternacht vom Lagerausgang aus mit dir aufbrechen.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_E_07_02"); //Und nimm auch Skinner mit. Der Faulpelz sollte auch mal wieder an die frische Luft gehen.

	Mod_Orks_Morgahard = 1;

	Wld_InsertNpc	(OrkWarrior_BDTPatroullie, "OW_PATH_184");
	Wld_InsertNpc	(OrkScout_BDTPatroullie_01, "OW_PATH_184");
	Wld_InsertNpc	(OrkScout_BDTPatroullie_02, "OW_PATH_184");
	Wld_InsertNpc	(OrkScout_BDTPatroullie_03, "OW_PATH_184");

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	B_LogEntry	(TOPIC_MOD_BDT_MORGAHARD, "Morgahard hat mich damit betraut eine kleine Orkpatrouille Auszuschalten, die sich jede Nacht in der H�hle unterhalb des Lagers niederl�sst. Mit Skinner und drei bis f�nf anderen Banditen soll ich mich um Mitternacht vor dem Lager versammeln um loszuschlagen.");
};

INSTANCE Info_Mod_Morgahard_OrkPatroullie (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_OrkPatroullie_Condition;
	information	= Info_Mod_Morgahard_OrkPatroullie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Orks werden die H�hle nicht mehr verlassen.";
};

FUNC INT Info_Mod_Morgahard_OrkPatroullie_Condition()
{
	if (Mod_Orks_Morgahard == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_OrkPatroullie_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkPatroullie_15_00"); //Die Orks werden die H�hle nicht mehr verlassen.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkPatroullie_07_01"); //Sehr gut, ich habe nichts anderes erwartet. Hier ist deine Belohnung.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_SetTopicStatus	(TOPIC_MOD_BDT_MORGAHARD, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	B_G�ttergefallen(3, 1);
};

INSTANCE Info_Mod_Morgahard_AlterWaldMann (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_AlterWaldMann_Condition;
	information	= Info_Mod_Morgahard_AlterWaldMann_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Morgahard_AlterWaldMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AngriffVorbei))
	&& ((Mod_AlbertTransforms == 8)
	|| (Mod_AlbertTransforms == 9)
	|| (Mod_AlbertTransforms == 10))
	&& (Mod_OC_Miguel == 0)
	&& (Mod_OC_Morgahard == 0)
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_AlterWaldMann_Info()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_00"); //Hey, nach den ganzen �berstandenen Abenteuern gibt es da eine Sache, f�r die du mir am besten geeignet erscheinst. Du bist ja viel herumgekommen ...
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_01"); //Ja, worum geht es?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_02"); //Nun, Logan war zuf�llig ein Schriftst�ck der Verwandlungsmagier in die H�nde gefallen.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_03"); //Zuf�llig?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_04"); //Tja, er war bei ihnen, um sich f�r die Unterst�tzung bei der Sache mit den Orks zu bedanken und um mal wieder einige Gesch�fte abzuschlie�en.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_05"); //Und in einem Stapel Bl�tter, nunja, las er etwas von einem Schatz und nahm das Blatt an sich.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_06"); //Soso, an sich genommen ...
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_07"); //Jedenfalls ging es darin um einen H�ter der Tiere und des Waldes, der uralt sein soll, blind, die W�lder von Khorata bewohnt und so weiter und sich im Besitz ...
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_08"); //... im Besitz von gro�en Sch�tzen befinden soll, vermute ich mal.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_09"); //�hh, ja, genau.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_10"); //Und ich soll jetzt an die Sch�tze kommen? Einen uralter, blinden Greis beklauen?
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_11"); //Also wirklich, dass solltet ihr ja gerade noch selbst hinbekommen ...
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_12"); //Jaja, das haben wir ja auch versucht. Das Problem ist nur, dass er auch ein wenig magisch begabt scheint ...
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_13"); //Magisch begabt?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_14"); //Ja, als wir ihn versuchten zu stellen hat er uns mit allerlei Zauberk�nsten, Verwandlung und T�uschung ein Schnippchen geschlagen und uns die lange Nase gedreht.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_15"); //Wir haben es immer wieder versucht ihn zu erwischen, mussten aber zuletzt unverrichteter Dinge unter seinem h�hnischen Gel�chter wieder abziehen.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_16"); //Auf normalem Wege kommen wir also nicht an den Schatz.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_17"); //Hmm, "normalem Wege". Und was soll ich da jetzt machen?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_18"); //Nun, versuch irgendwie mehr �ber ihn zu erfahren, lass deine Kontakte spielen.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_19"); //Die Verwandlungsmagier k�nnen wir schlecht fragen, da es nach dem Verschwinden des Schriftst�ckes, nunja, ihr Misstrauen erwecken k�nnte. Du verstehst?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_20"); //Du musst also einen anderen Weg finden an weitere Informationen zu kommen.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_21"); //Vielleicht kannst du ja etwas von diesen Waldspinnern erfahren, die �berall auf Khorinis ihre Zelte unter den B�umen aufgeschlagen haben ...
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_22"); //Naja, du machst das schon. Sag bescheid, wenn du den Schatz gefunden hast.

	Log_CreateTopic	(TOPIC_MOD_BDT_ALTERMANN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_ALTERMANN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Morgahard will, dass ich mehr �ber einen H�ter der Tiere und des Waldes in Erfahrung bringe, der sich in Khorata befindet und im Besitz eines gro�en Schatzes sein soll. Er meinte, dass wom�glich die Waldl�ufer mir mehr zu ihm sagen k�nnten. Sobald ich den Schatz gefunden habe, soll ich Morgahard wieder Bescheid geben.");
};

INSTANCE Info_Mod_Morgahard_AlterWaldMann2 (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_AlterWaldMann2_Condition;
	information	= Info_Mod_Morgahard_AlterWaldMann2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Morgahard_AlterWaldMann2_Condition()
{
	if (Mod_BDT_AlterWaldMann == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_AlterWaldMann2_Info()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann2_07_00"); //Und, konntest mittlerweile mehr �ber den H�ter des Waldes erfahren?
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_01"); //�hhm, ja ... sogar seinen Schatz konnte ich finden.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann2_07_02"); //(in heller Erregung) Seinen Schatz? Wo ist er? Gold, Silber, Edelsteine und Dublonen irgendwo in der Erde vergraben, darauf wartend, dass wir sie bergen?
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_03"); //Nun, unter der Erde ist schon richtig. Nur ist es kein Gold und Silber, womit der alte Mann des Waldes nicht so viel anzufangen wei�.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_04"); //Es ist der Schatz des Waldes des Wissens, Kr�uter, Tr�nke und Pflanzen.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann2_07_05"); //Jedenfalls ging es darin um einen H�ter der Tiere und des Waldes, der uralt sein soll, blind, die W�lder von Khorata bewohnt und so weiter und sich im Besitz ...
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_06"); //Was, und daf�r die ganze M�he? Verdammt.

	B_SetTopicStatus	(TOPIC_MOD_BDT_ALTERMANN, LOG_SUCCESS);
};

INSTANCE Info_Mod_Morgahard_Lernen_Schleichen (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Lernen_Schleichen_Condition;
	information	= Info_Mod_Morgahard_Lernen_Schleichen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("Schleichen", B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Morgahard_Lernen_Schleichen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_Hi))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_Lernen_Schleichen_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_Lernen_Schleichen_15_00"); //Bring mir das Schleichen bei.

	if (B_TeachThiefTalent (self, other, NPC_TALENT_SNEAK))
	{
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Schleichen_07_01"); //Mit weichen Sohlen hast du eine gr��ere Chance, dich deinen Gegnern zu n�hern, ohne dass sie es merken.
	};
};

INSTANCE Info_Mod_Morgahard_Lernen_Knockout (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Lernen_Knockout_Condition;
	information	= Info_Mod_Morgahard_Lernen_Knockout_Info;
	permanent	= 1;
	important	= 0;
	description	= "Niederschlagen (10 Lernpunkte)";
};

FUNC INT Info_Mod_Morgahard_Lernen_Knockout_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_Hi))
	&& (Knockout_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_Lernen_Knockout_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_Lernen_Knockout_15_00"); //Zeig mir, wie ich jemanden Niederschlagen kann.

	if (hero.lp >= 10)
	{
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_08_01"); //Okey, du willst also wissen, wie du jemanden mit einem �berraschungsangriff K.O. schlagen kannst.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_08_02"); //Schleiche dich zun�chst leise von hinten an den Betreffenden heran, ohne bemerkt zu werden.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_08_03"); //Wenn du dann nah genug bist, verpasst du ihm mit deiner Waffe einen ordentlichen Schlag auf den Hinterkopf.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_08_04"); //Da dein Opfer nicht darauf eingestellt ist, wird es besonders gro�en Schaden nehmen und mit etwas Gl�ck gleich zu Boden gehen, ohne dass du noch weiter nachhelfen musst.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_08_05"); //Das wirkt �brigens auch bei Schlafenden, bei Tieren, Orks und was sonst noch so kr�ucht und fl�ucht.

		Knockout_Perk = TRUE;
	}
	else
	{
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_08_06"); //Komm wieder, wenn du mehr Erfahrung hast.
	};
};

INSTANCE Info_Mod_Morgahard_Pickpocket (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Pickpocket_Condition;
	information	= Info_Mod_Morgahard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Morgahard_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 310);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

	Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_BACK, Info_Mod_Morgahard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Morgahard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

		Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Morgahard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Morgahard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Morgahard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Morgahard_EXIT (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_EXIT_Condition;
	information	= Info_Mod_Morgahard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Morgahard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Morgahard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};