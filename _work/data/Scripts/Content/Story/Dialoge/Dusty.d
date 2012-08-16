INSTANCE Info_Mod_Dusty_Hi (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Hi_Condition;
	information	= Info_Mod_Dusty_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dusty_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dusty_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_14_00"); //Du hier? Es hie�, du w�rst im Schl�fertempel versch�ttet ...
	AI_Output(hero, self, "Info_Mod_Dusty_Hi_15_01"); //Eine lange, nicht sehr erfreuliche Geschichte. Aber wieso bist du hier?
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_14_02"); //Ich wollte eigentlich r�ber aufs Festland, Familie und so. (lacht gequ�lt)
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_14_03"); //Problem ist nur, dass momentan kein Schiff im Hafen liegt, das in n�chster Zeit dorthin auslaufen wird.
	AI_Output(self, hero, "Info_Mod_Dusty_Hi_14_04"); //Und weil die Paladine selbst im Hafenviertel Stress machen, bin ich wieder raus und verdinge mich als J�ger.
};

INSTANCE Info_Mod_Dusty_Lehrer (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Lehrer_Condition;
	information	= Info_Mod_Dusty_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du als J�ger vielleicht ein paar Tipps f�r mich auf Lager?";
};

FUNC INT Info_Mod_Dusty_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Fanatiker))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Lehrer_15_00"); //Hast du als J�ger vielleicht ein paar Tipps f�r mich auf Lager?
	AI_Output(self, hero, "Info_Mod_Dusty_Lehrer_14_01"); //Die Grundlagen kann ich dir auf jeden Fall zeigen. Du hast mir in der Kolonie ja auch geholfen.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORINIS, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Dusty kann mir beibringen, wie ich an Jagdtroph�en komme.");
};

INSTANCE Info_Mod_Dusty_Infos (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Infos_Condition;
	information	= Info_Mod_Dusty_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wei�t du was �ber die Schl�feranh�nger hier in der Gegend?";
};

FUNC INT Info_Mod_Dusty_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Fanatiker))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Infos_15_00"); //Wei�t du was �ber die Schl�feranh�nger hier in der Gegend?
	AI_Output(self, hero, "Info_Mod_Dusty_Infos_14_01"); //Ja, ich hab ein paar gesehen. Es waren zwei kleine Gruppen.
	AI_Output(hero, self, "Info_Mod_Dusty_Infos_15_02"); //Wo kann ich sie finden?
	AI_Output(self, hero, "Info_Mod_Dusty_Infos_14_03"); //Wei�t du was? Ich bin schon seit Tagen auf Entzug. Da arbeitet mein Gehirn nicht mehr so schnell, wenn du verstehst, was ich meine.
	AI_Output(hero, self, "Info_Mod_Dusty_Infos_15_04"); //Du brauchst mal wieder eine Dosis Sumpfkraut?
	AI_Output(self, hero, "Info_Mod_Dusty_Infos_14_05"); //(woll�stig) Oh ja! Wenn du mir einen ordentlichen Stengel bringst, ordnen sich meine Gedanken auch wieder.

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Bevor Dusty mir sagen kann, wo sich die Schl�feranh�nger aufhalten, soll ich ihm einen Sumpfkrautstengel bringen.");
};

INSTANCE Info_Mod_Dusty_Kippe (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Kippe_Condition;
	information	= Info_Mod_Dusty_Kippe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier hast du dein Sumpfkraut.";
};

FUNC INT Info_Mod_Dusty_Kippe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Infos))
	&& (Npc_HasItems(hero, ItMi_Joint) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Kippe_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Kippe_15_00"); //Hier hast du dein Sumpfkraut.
	
	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_14_01"); //Ah, sehr sch�n. Mein Blick wird wieder klar.
	AI_Output(hero, self, "Info_Mod_Dusty_Kippe_15_02"); //Dann sag mir, wo ich die Fanatiker finde.
	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_14_03"); //Die eine Gruppe hat sich beim Leuchtturm niedergelassen. Das ist die gr��ere Gruppe. Wenn du dort hingehst, musst du sehr vorsichtig sein.
	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_14_04"); //Die andere Gruppe ist in einer H�hle im Wald s�dlich der Stadt. Dort solltest du zuerst vorbeischauen.
	AI_Output(self, hero, "Info_Mod_Dusty_Kippe_14_05"); //Den Leuchtturm l�sst du besser mal noch bleiben, bevor du mehr herausgefunden hast.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Dusty hat mir gesagt, dass die eine Gruppe ihr Lager beim Leuchtturm hat, die andere in einer H�hle s�dlich der Stadt. Den Leuchtturm sollte ich noch in Ruhe lassen, bis ich mehr wei�.");
};

INSTANCE Info_Mod_Dusty_Crawlersekret (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Crawlersekret_Condition;
	information	= Info_Mod_Dusty_Crawlersekret_Info;
	permanent	= 0;
	important	= 0;
	description	= "Woher k�nnte ich starkes Minecrawler-Sekret bekommen?";
};

FUNC INT Info_Mod_Dusty_Crawlersekret_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_Lehrling))
	&& (Mod_MinecrawlerEi >= 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Constantino_Stimme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Crawlersekret_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Crawlersekret_15_00"); //Woher k�nnte ich starkes Minecrawler-Sekret bekommen?
	AI_Output(self, hero, "Info_Mod_Dusty_Crawlersekret_14_01"); //Ich habe von den anderen J�gern geh�rt, dass im Norden Minecrawler gesichtet wurden.
	AI_Output(self, hero, "Info_Mod_Dusty_Crawlersekret_14_02"); //Wenn du Gl�ck hast, dann gibt es dort auch eine K�nigin, deren Eier du stehlen kannst, um daraus das Sekret zu gewinnen.
};

INSTANCE Info_Mod_Dusty_OtherHunters (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_OtherHunters_Condition;
	information	= Info_Mod_Dusty_OtherHunters_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir sagen, wo ich noch andere J�ger finde?";
};

FUNC INT Info_Mod_Dusty_OtherHunters_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_OtherHunters_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_OtherHunters_15_00"); //Kannst du mir sagen, wo ich noch andere J�ger finde?
	AI_Output(self, hero, "Info_Mod_Dusty_OtherHunters_14_01"); //Bei der Taverne "Zur toten Harpie" nord�stlich von hier ist ein gro�es Lager, an dem ich vorbeigekommen bin. Ob es noch andere Treffpunkte gibt, wei� ich nicht.
	AI_Output(hero, self, "Info_Mod_Dusty_OtherHunters_15_02"); //Danke, das hilft mir schon weiter.
};

INSTANCE Info_Mod_Dusty_Bruderschaft (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_Bruderschaft_Condition;
	information	= Info_Mod_Dusty_Bruderschaft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was ist nach dem Fall der Barriere mit der Bruderschaft passiert?";
};

FUNC INT Info_Mod_Dusty_Bruderschaft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Bruderschaft_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Bruderschaft_15_00"); //Was ist nach dem Fall der Barriere mit der Bruderschaft passiert?
	AI_Output(self, hero, "Info_Mod_Dusty_Bruderschaft_14_01"); //Keine Ahnung, es gab keine gro�e Aufbruchstimmung oder so. Die meisten haben sich im Lager ein neues Leben aufgebaut und wollen gar nicht mehr weg.
	AI_Output(self, hero, "Info_Mod_Dusty_Bruderschaft_14_02"); //Dass der Schl�fer ein Erzd�mon war, mussten nat�rlich einige erst mal verdauen, aber ob sie sich jetzt einen Ersatz gesucht haben oder nur noch Sumpfkraut rauchen, wei� ich nicht.
};

INSTANCE Info_Mod_Dusty_BosperFelle (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_BosperFelle_Condition;
	information	= Info_Mod_Dusty_BosperFelle_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du hast nicht zuf�llig ein paar sch�ne Wolfsfelle, die du nicht mehr brauchst?";
};

FUNC INT Info_Mod_Dusty_BosperFelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_BosperFelle_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_BosperFelle_15_00"); //Du hast nicht zuf�llig ein paar sch�ne Wolfsfelle, die du nicht mehr brauchst?
	AI_Output(self, hero, "Info_Mod_Dusty_BosperFelle_14_01"); //W�lfe habe ich schon ein paar erlegt, auch wenn die verdammt gef�hrlich sind.
	AI_Output(self, hero, "Info_Mod_Dusty_BosperFelle_14_02"); //Aber das Fell hab ich nicht allen abgezogen. Wart mal ... (Suchger�usch) Zwei unbesch�digte Felle h�tte ich. Interesse?
	AI_Output(hero, self, "Info_Mod_Dusty_BosperFelle_15_03"); //Nur her damit. Wie kann ich dir danken?

	B_GiveInvItems	(self, hero, ItAt_WolfFur_Rein, 2);

	AI_Output(self, hero, "Info_Mod_Dusty_BosperFelle_14_04"); //Du hast die Barriere beseitigt. Mehr brauchst du nicht f�r mich tun.
};

INSTANCE Info_Mod_Dusty_Lernen (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr          	= 1;
	condition	= Info_Mod_Dusty_Lernen_Condition;
	information	= Info_Mod_Dusty_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Was kannst du mir beibringen?";
};

FUNC INT Info_Mod_Dusty_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dusty_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Dusty_Lernen_15_00"); //Was kannst du mir beibringen?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_14_01"); //Kommt darauf an, was du wissen willst.

		Info_ClearChoices	(Info_Mod_Dusty_Lernen);

		Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Z�hne reissen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Klauen hacken",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("Fliegenstachel", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
		};
		if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
		{ 
			Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Fell abziehen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_14_02"); //Ich kann dir im Moment nicht mehr beibringen, als du ohnehin schon wei�t. Tut mir Leid.
	};
};

FUNC void Info_Mod_Dusty_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Dusty_Lernen);
};

FUNC void Info_Mod_Dusty_Lernen_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Claws))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Claws_14_00"); //Tiere geben ihre Klauen nicht sehr gerne her. Du musst schon sehr genau den Punkt treffen, an dem du mit deinem Messer ansetzt.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Claws_14_01"); //Die Haltung deiner Hand sollte etwas verschr�nkt sein. Mit einem kr�ftigen Ruck trennst du dann die Klaue ab.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Claws_14_02"); //Klauen sind immer ein begehrtes Zahlungsmittel bei einem H�ndler.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Z�hne reissen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Klauen hacken",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("Fliegenstachel", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Fell abziehen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
		
};

FUNC void Info_Mod_Dusty_Lernen_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Teeth))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Teeth_14_00"); //Das einfachste, was du Tieren entnehmen kannst, sind seine Z�hne. Du f�hrst mit deinem Messer in seinem Maul um das Gebiss.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Teeth_14_01"); //Dann trennst es geschickt mit einem Ruck vom Sch�del des Tieres.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Z�hne reissen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Klauen hacken",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("Fliegenstachel", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Fell abziehen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
};

FUNC void Info_Mod_Dusty_Lernen_BFSting()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFSting))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_BFSting_07_00"); //Die Fliege hat am R�cken eine weiche Stelle.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_BFSting_07_01"); //Wenn du dort mit der Hand gegen dr�ckst, f�hrt der Stachel sehr weit aus und du kannst ihn mit dem Messer abtrennen.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Z�hne reissen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Klauen hacken",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("Fliegenstachel", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Fell abziehen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
};

FUNC void Info_Mod_Dusty_Lernen_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Fur))
	{
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Fur_14_00"); //Felle ziehst du am besten ab, indem du einen tiefen Schnitt an den Hinterl�ufen des Tieres vornimmst.
		AI_Output(self, hero, "Info_Mod_Dusty_Lernen_Fur_14_01"); //Dann kannst du das Fell von vorne nach hinten eigentlich immer sehr leicht abziehen.
	};

	Info_ClearChoices	(Info_Mod_Dusty_Lernen);

	Info_AddChoice	(Info_Mod_Dusty_Lernen, DIALOG_BACK, Info_Mod_Dusty_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Z�hne reissen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Dusty_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Klauen hacken",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Dusty_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString("Fliegenstachel", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Dusty_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Dusty_Lernen, B_BuildLearnString ("Fell abziehen",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Dusty_Lernen_Fur);
	};
};

INSTANCE Info_Mod_Dusty_EXIT (C_INFO)
{
	npc		= Mod_1724_PSINOV_Dusty_NW;
	nr		= 1;
	condition	= Info_Mod_Dusty_EXIT_Condition;
	information	= Info_Mod_Dusty_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dusty_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dusty_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};