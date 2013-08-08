INSTANCE Info_Mod_Edgor_Hi (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Hi_Condition;
	information	= Info_Mod_Edgor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edgor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_Hi_31_00"); //Was willst du hier? Verschwinde.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Edgor_Ring (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Ring_Condition;
	information	= Info_Mod_Edgor_Ring_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_Ring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Belohnung))
	&& (Npc_HasItems(hero, Mod_Banditenring) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Ring_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_Ring_31_00"); //Woher hast du diesen Ring?
};

INSTANCE Info_Mod_Edgor_Tom (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Tom_Condition;
	information	= Info_Mod_Edgor_Tom_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tom hat ihn mir gegeben.";
};

FUNC INT Info_Mod_Edgor_Tom_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Ring))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Tom_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Tom_15_00"); //Tom hat ihn mir gegeben. Er hat mich damit zu dir geschickt, damit du mir die erste H�lfte des Losungswortes gibst.
	AI_Output(self, hero, "Info_Mod_Edgor_Tom_31_01"); //Und du denkst, ich verrate es dir jetzt einfach so? Das h�ttest du wohl gerne.
	AI_Output(self, hero, "Info_Mod_Edgor_Tom_31_02"); //Wenn du die erste H�lfte haben willst, dann musst du auch was daf�r machen.

	B_LogEntry	(TOPIC_MOD_AUFNAHME_BANDITEN, "Edgor will mir die erste H�lfte des Losungswortes nicht verraten. Ich soll erst etwas f�r ihn machen.");
};

INSTANCE Info_Mod_Edgor_Aufgabe (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Aufgabe_Condition;
	information	= Info_Mod_Edgor_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was soll ich f�r dich machen?";
};

FUNC INT Info_Mod_Edgor_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Tom))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Aufgabe_15_00"); //Was soll ich f�r dich machen?
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_01"); //Besorge mir, �hh ... zw�lf St�ngel Sumpfkraut, sechs Flaschen Wacholder, vier Flaschen Wein, drei Bier, einen Schinken, f�nf gebratene Fleischst�cke, drei St�ck K�se, zwei Flaschen Milch ... und ...
	AI_Output(hero, self, "Info_Mod_Edgor_Aufgabe_15_02"); //(ungl�ubig) Sonst noch was?
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_03"); //Wo du schon fragst ... 300 Goldm�nzen w�ren auch nicht schlecht ...
	AI_Output(hero, self, "Info_Mod_Edgor_Aufgabe_15_04"); //...
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_05"); //Hey, jetzt sieh mich nicht so an. Von irgendwas muss ich ja auch leben.
	AI_Output(self, hero, "Info_Mod_Edgor_Aufgabe_31_06"); //Habe schon damals nur wenig aus dem Minental mitbringen k�nnen ... und zudem haben sich noch diese verdammten R�uber um Khorinis breit gemacht und lassen uns Banditen nur wenig zum Pl�ndern �brig.

	Log_CreateTopic	(TOPIC_MOD_EDGORSGOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EDGORSGOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EDGORSGOLD, "Ich soll Edgor zw�lf St�ngel Sumpfkraut, sechs Flaschen Wacholder, vier Flaschen Wein, drei Bier, einen Schinken, f�nf gebratene Fleischst�cke, drei St�ck K�se, zwei Flaschen Milch und 300 Goldm�nzen bringen, dann verr�t er mir die erste H�lfte des Losungswortes.");
};

INSTANCE Info_Mod_Edgor_Raeuber (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Raeuber_Condition;
	information	= Info_Mod_Edgor_Raeuber_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die R�uber sind Geschichte ...";
};

FUNC INT Info_Mod_Edgor_Raeuber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Edgor_Gold))
	&& (Npc_IsDead(Mod_7772_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7773_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7774_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7775_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7776_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7777_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7778_BDT_Bandit_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Raeuber_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Raeuber_15_00"); //Die R�uber sind Geschichte ...
	AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_01"); //Echt? Na, ist die Miliz ja also doch zu was zu gebrauchen. (lacht)
	AI_Output(hero, self, "Info_Mod_Edgor_Raeuber_15_02"); //�hm ...
	AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_03"); //Dann werde ich auch bald wieder die vollen Taschen und W�gen der fetten H�ndler pl�ndern k�nnen, die hier vorbeiziehen. (lacht)

	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Gold))
	{
		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_04"); //Nichts f�r ungut. Hier, nimm f�r die tolle Neuigkeit den fetten Schinken, der mir noch geblieben ist, 'n Bier und die 2 St�ngel.

		B_ShowGivenThings	("Schinken, Bier und 2 St�ngel Sumpfkraut erhalten");

		CreateInvItems	(hero, ItFo_Bacon, 1);
		CreateInvItems	(hero, ItFo_Beer, 1);
		CreateInvItems	(hero, ItMi_Joint, 2);

		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_05"); //Viel Spa� damit.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_06"); //F�r diese tolle Nachricht verrate ich dir die erste H�lfte des Losungswortes. Sie hei�t: Dex.
		AI_Output(self, hero, "Info_Mod_Edgor_Raeuber_31_07"); //Die zweite H�lfte wird dir Senyan geben. Er befindet sich in der N�he von Sekobs Hof.

		B_LogEntry_More	(TOPIC_MOD_AUFNAHME_BANDITEN, TOPIC_MOD_EDGORSGOLD, "Die erste H�lfte hei�t: Dex. Die zweite H�lfte hat Senyan, der sich in der N�he von Sekobs Hof befindet.", "Ich hab Edgor von den erledigten R�ubern berichtet. Das hat ihm offenbar gereicht ...");
		B_SetTopicStatus	(TOPIC_MOD_EDGORSGOLD, LOG_SUCCESS);

		B_G�ttergefallen(3, 1);
	};

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Edgor_Gold (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Gold_Condition;
	information	= Info_Mod_Edgor_Gold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab die Sachen.";
};

FUNC INT Info_Mod_Edgor_Gold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_Aufgabe))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 12)
	&& (Npc_HasItems(hero, ItFo_Booze) >= 6)
	&& (Npc_HasItems(hero, ItFo_Wine) >= 4)
	&& (Npc_HasItems(hero, ItFo_Beer) >= 3)
	&& (Npc_HasItems(hero, ItFo_Bacon) >= 1)
	&& (Npc_HasItems(hero, ItFo_Mutton) >= 5)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 3)
	&& (Npc_HasItems(hero, ItFo_Milk) >= 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Edgor_Raeuber))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Gold_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Gold_15_00"); //Ich hab die Sachen.

	Npc_RemoveInvItems	(hero, ItFo_Booze, 6);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 400);
	Npc_RemoveInvItems	(hero, ItMi_Joint, 12);
	Npc_RemoveInvItems	(hero, ItFo_Wine, 4);
	Npc_RemoveInvItems	(hero, ItFo_Beer, 3);
	Npc_RemoveInvItems	(hero, ItFo_Bacon, 1);
	Npc_RemoveInvItems	(hero, ItFo_Mutton, 5);
	Npc_RemoveInvItems	(hero, ItFo_Cheese, 3);
	Npc_RemoveInvItems	(hero, ItFo_Milk, 2);

	B_ShowGivenThings	("Edgors Sachen gegeben");

	AI_Output(self, hero, "Info_Mod_Edgor_Gold_31_01"); //Endlich wieder ein wenig was zu essen und zu trinken.
	AI_Output(hero, self, "Info_Mod_Edgor_Gold_15_02"); //Verr�tst du mir jetzt den ersten Teil?
	AI_Output(self, hero, "Info_Mod_Edgor_Gold_31_03"); //Gut, du hast mir meine Sachen gebracht und daf�r werde ich dir jetzt helfen.
	AI_Output(self, hero, "Info_Mod_Edgor_Gold_31_04"); //Die erste H�lfte hei�t: Dex. Die zweite H�lfte wird dir Senyan geben. Er befindet sich in der N�he von Sekobs Hof.

	B_GivePlayerXP	(300);

	B_LogEntry_More	(TOPIC_MOD_AUFNAHME_BANDITEN, TOPIC_MOD_EDGORSGOLD, "Die erste H�lfte hei�t: Dex. Die zweite H�lfte hat Senyan, der sich in der N�he von Sekobs Hof befindet.", "Ich hab Edgor seine Sachen gegeben.");
	B_SetTopicStatus	(TOPIC_MOD_EDGORSGOLD, LOG_SUCCESS);

	B_G�ttergefallen(3, 1);
};

INSTANCE Info_Mod_Edgor_Skinner (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Skinner_Condition;
	information	= Info_Mod_Edgor_Skinner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe hier etwas f�r dich. Mit sch�nem Gru� von Skinner.";
};

FUNC INT Info_Mod_Edgor_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_Skinner_Info()
{
	AI_Output(hero, self, "Info_Mod_Edgor_Skinner_15_00"); //Ich habe hier etwas f�r dich. Mit sch�nem Gru� von Skinner.
	AI_Output(self, hero, "Info_Mod_Edgor_Skinner_31_01"); //Dieser dreckige Hundesohn. Erst raucht er mir nachts vor meiner Abreise mein halbes Sumpfkraut weg, s�uft meine Schnapsreserven leer und jetzt schickt er einen Laufburschen mit drei lumpigen St�ngeln Sumpfkraut.
	AI_Output(hero, self, "Info_Mod_Edgor_Skinner_15_02"); //Willst du jetzt das Sumpfkraut oder nicht?
	AI_Output(self, hero, "Info_Mod_Edgor_Skinner_31_03"); //Ach, gib schon her.

	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_01, 3);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Edgor hat seine St�ngel bekommen.");
};

INSTANCE Info_Mod_Edgor_IstBandit (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_IstBandit_Condition;
	information	= Info_Mod_Edgor_IstBandit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_IstBandit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Wld_IsTime(22,15,02,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_IstBandit_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_31_00"); //Mann, wie langweilig, die ganze Zeit nur am Lagerfeuer rumsitzen. Es muss endlich mal wieder ein �berfall her.
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_31_01"); //Jetzt w�re ein guter Zeitpunkt, um die Schafe auf dem Weidenplateau abzuschlachten. Mit dem Hirten und seinem Hund sollten wir locker fertigwerden. Bist du dabei?
	
	Info_ClearChoices	(Info_Mod_Edgor_IstBandit);

	Info_AddChoice	(Info_Mod_Edgor_IstBandit, "Ich habe wirklich Besseres zu tun (...)", Info_Mod_Edgor_IstBandit_B);
	Info_AddChoice	(Info_Mod_Edgor_IstBandit, "Ja, nat�rlich, den Spa� lasse ich mir nicht entgehen.", Info_Mod_Edgor_IstBandit_A);
};

FUNC VOID Info_Mod_Edgor_IstBandit_B()
{
	AI_Output(hero, self, "Info_Mod_Edgor_IstBandit_B_15_00"); //Ich habe wirklich Besseres zu tun, als einem Bauern die Schafe auf der Weide abzuschlachten.
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_B_31_01"); //Dann eben nicht.
	
	Info_ClearChoices	(Info_Mod_Edgor_IstBandit);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Edgor_IstBandit_A()
{
	AI_Output(hero, self, "Info_Mod_Edgor_IstBandit_A_15_00"); //Ja, nat�rlich, den Spa� lasse ich mir nicht entgehen.
	AI_Output(self, hero, "Info_Mod_Edgor_IstBandit_A_31_01"); //Na, dann lass uns losziehen.
	
	Info_ClearChoices	(Info_Mod_Edgor_IstBandit);

	Mod_Edgor_SchafeSchlachten = 1;

	Log_CreateTopic	(TOPIC_MOD_BDT_EDGOR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_EDGOR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_EDGOR, "Da Edgor langweilig ist, werde ich mit ihm und Franco die Schafe auf dem Weideplateau abschlachten.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MALAK");
	B_StartOtherRoutine	(Mod_952_BDT_Franco_NW, "MALAK");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_952_BDT_Franco_NW.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Edgor_SchafeTot (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_SchafeTot_Condition;
	information	= Info_Mod_Edgor_SchafeTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Edgor_SchafeTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Edgor_IstBandit))
	&& (Mod_Edgor_Schafeschlachten == 2)
	&& (Npc_IsDead(Sheep_Bengar_04))
	&& (Npc_IsDead(Sheep_Bengar_05))
	&& (Npc_GetDistToWP(Mod_946_BDT_Edgor_NW, "NW_FARM3_MOUNTAINLAKE_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Edgor_SchafeTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Edgor_SchafeTot_31_00"); //Na, das war ein Spa�. Die Schafskeulen lassen wir uns jetzt gut schmecken und die Felle werden wir bestimmt irgendwo f�r ein paar Goldm�nzen los. Hier ist dein Anteil.
	
	CreateInvItems	(hero, ItFo_MuttonRaw, 3);
	CreateInvItems	(hero, ItAt_SheepFur, 2);
	
	B_GivePlayerXP	(200);

	Mod_Edgor_SchafeSchlachten = 3;

	B_SetTopicStatus	(TOPIC_MOD_BDT_EDGOR, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_952_BDT_Franco_NW, "BEIFRANCO");

	CurrentNQ += 1;

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_952_BDT_Franco_NW.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Edgor_Pickpocket (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_Pickpocket_Condition;
	information	= Info_Mod_Edgor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Edgor_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 140);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

	Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_BACK, Info_Mod_Edgor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Edgor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

		Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Edgor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Edgor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Edgor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Edgor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Edgor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Edgor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Edgor_EXIT (C_INFO)
{
	npc		= Mod_946_BDT_Edgor_NW;
	nr		= 1;
	condition	= Info_Mod_Edgor_EXIT_Condition;
	information	= Info_Mod_Edgor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Edgor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Edgor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};