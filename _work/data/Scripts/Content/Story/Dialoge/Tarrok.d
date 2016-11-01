INSTANCE Info_Mod_Tarrok_Hi (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Hi_Condition;
	information	= Info_Mod_Tarrok_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sch�n, dich gesund zu sehen.";
};

FUNC INT Info_Mod_Tarrok_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tarrok_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Hi_15_00"); //Sch�n, dich gesund zu sehen.
	AI_Output(self, hero, "Info_Mod_Tarrok_Hi_18_01"); //Tarrok eben wollen das Gleiche sagen.
	AI_Output(hero, self, "Info_Mod_Tarrok_Hi_15_02"); //Ur Shak hat mir schon erz�hlt, was passiert ist.
	AI_Output(self, hero, "Info_Mod_Tarrok_Hi_18_03"); //Dann Tarrok nicht m�ssen wiederholen. Sprache von Menschen zu viele W�rter f�r Geschmack von Tarrok.
};

INSTANCE Info_Mod_Tarrok_AtStonehenge (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_AtStonehenge_Condition;
	information	= Info_Mod_Tarrok_AtStonehenge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wei�t du etwas �ber den Fokus, der hier sein sollte?";
};

FUNC INT Info_Mod_Tarrok_AtStonehenge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_AtStonehenge_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_AtStonehenge_15_00"); //Wei�t du etwas �ber den Fokus, der hier sein sollte?
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_01"); //Ur Shak haben Tarrok geschickt zu holen Fokus und bringen in Sicherheit vor Orks in Stadt.
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_02"); //Doch Tarrok sein gekommen zu sp�t zu retten.
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_03"); //Hosh Pak haben lassen geholt, bevor Tarrok kommen.
	AI_Output(hero, self, "Info_Mod_Tarrok_AtStonehenge_15_04"); //Was wirst du jetzt machen?
	AI_Output(self, hero, "Info_Mod_Tarrok_AtStonehenge_18_05"); //Werden gehen zur�ck zu Ur Shak in Festung in Berg.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE,	"Tarrok sollte f�r Ur Shak den Fokus aus dem Stonehenge holen, doch die Orks der Stadt waren schneller.");

	B_StartOtherRoutine	(self, "ANFELSENFESTUNG");
};

INSTANCE Info_Mod_Tarrok_Fokussuche (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Fokussuche_Condition;
	information	= Info_Mod_Tarrok_Fokussuche_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich brauche wieder ein Ulu-Mulu.";
};

FUNC INT Info_Mod_Tarrok_Fokussuche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ranad_WasHier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Fokussuche_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_15_00"); //Ich brauche wieder ein Ulu-Mulu.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_18_01"); //Freund brauchen wieder Ulu-Mulu? Aber Freund sehen schwach aus, zu schwach zu besorgen Sachen f�r Ulu-Mulu.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_18_02"); //Aber es keinen anderen weg geben, du m�ssen suchen Sachen. Freund noch wissen, was Tarrok brauchen f�r Ulu-Mulu?

	Info_ClearChoices	(Info_Mod_Tarrok_Fokussuche);

	Info_AddChoice	(Info_Mod_Tarrok_Fokussuche, "Nein.", Info_Mod_Tarrok_Fokussuche_Nein);
	Info_AddChoice	(Info_Mod_Tarrok_Fokussuche, "Ja.", Info_Mod_Tarrok_Fokussuche_Ja);
};

FUNC VOID Info_Mod_Tarrok_Fokussuche_Nein()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_Nein_15_00"); //Nein.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_01"); //Freund brauchen KROTAHK, KHAZ-TAK, DWACHKARR und ORTH-ANTAK.
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_Nein_15_02"); //Was bedeutet das?
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_03"); //KROTAHK sein Flammenzunge. Sein Zunge von Feuerechse.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_04"); //KHAZ-TAK sein Horn von Schattenl�ufer.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_05"); //DWACHKARR sein Z�hne von Sumpfhai.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_06"); //ORTH-ANTAK sein Hauer von gro�es Troll.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Nein_18_07"); //Wenn Freund haben gefunden Sachen, er sie bringen zu Tarrok.

	Log_CreateTopic	(TOPIC_MOD_ULUMULU, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ULUMULU, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ULUMULU, "Ich brauche f�r das Ulu-Mulu folgende Sachen: Flammenzunge, Schattenl�uferhorn, Sumpfhaiz�hne und Trollhauer. Wenn ich die Sachen habe, soll ich sie Tarrok bringen.");

	Info_ClearChoices	(Info_Mod_Tarrok_Fokussuche);

	Wld_InsertNpc	(Troll,	"OW_PATH_WOLF05_SPAWN02");
	Wld_InsertNpc	(Swampshark,	"FP_ROAM_NEW_302");
	Wld_InsertNpc	(Shadowbeast,	"OW_PATH_218");
	Wld_InsertNpc	(Firewaran,	"OW_MOVEMENT_BGOBBO1");
	Wld_InsertNpc	(Firewaran,	"OW_COAST_SHIPWRECK_WARAN_2");
	Wld_InsertNpc	(Firewaran,	"FP_ROAM_OW_WARAN_SHIPWRECK_2");
};

FUNC VOID Info_Mod_Tarrok_Fokussuche_Ja()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Fokussuche_Ja_15_00"); //Ja.
	AI_Output(self, hero, "Info_Mod_Tarrok_Fokussuche_Ja_18_01"); //Gut, dann Freund gehen besorgen Sachen und bringen zu mir.

	Log_CreateTopic	(TOPIC_MOD_ULUMULU, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ULUMULU, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ULUMULU, "Ich soll die Sachen f�r das Ulu-Mulu besorgen und dann zu Tarrok bringen. Wenn ich mich richtig erinnere, waren das eine Flammenzunge, ein Schattenl�uferhorn, Sumpfhaiz�hne und ein Trollhauer.");

	Info_ClearChoices	(Info_Mod_Tarrok_Fokussuche);

	Wld_InsertNpc	(Troll,	"OW_PATH_WOLF05_SPAWN02");
	Wld_InsertNpc	(Swampshark,	"FP_ROAM_NEW_302");
	Wld_InsertNpc	(Shadowbeast,	"OW_PATH_218");
	Wld_InsertNpc	(Firewaran,	"OW_MOVEMENT_BGOBBO1");
};

INSTANCE Info_Mod_Tarrok_HabSachen (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_HabSachen_Condition;
	information	= Info_Mod_Tarrok_HabSachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab die Sachen.";
};

FUNC INT Info_Mod_Tarrok_HabSachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Fokussuche))
	&& (Npc_HasItems(hero, ItAt_WaranFiretongue) > 0)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) > 0)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) > 0)
	&& (Npc_HasItems(hero, ItAt_TrollTooth) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_HabSachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_HabSachen_15_00"); //Ich hab die Sachen.
	
	Npc_RemoveInvItems	(hero, ItAt_TrollTooth, 1);
	Npc_RemoveInvItems	(hero, ItAt_WaranFiretongue, 1);
	Npc_RemoveInvItems	(hero, ItAt_ShadowHorn, 1);
	Npc_RemoveInvItems	(hero, ItAt_SharkTeeth, 1);

	AI_Output(self, hero, "Info_Mod_Tarrok_HabSachen_18_01"); //Sehr gut. Tarrok werden bauen Ulu-Mulu. Freund kommen wieder, wenn n�chster Tag sein.

	Mod_TarrokbautUluMulu	=	Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_ULUMULU, "Tarrok hat alle Sachen und baut mir nun das Ulu-Mulu. Ich soll morgen wieder kommen.");
	B_SetTopicStatus	(TOPIC_MOD_ULUMULU, LOG_SUCCESS);
};

INSTANCE Info_Mod_Tarrok_UluMulu_Fertig (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_UluMulu_Fertig_Condition;
	information	= Info_Mod_Tarrok_UluMulu_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tarrok_UluMulu_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_HabSachen))
	&& (Wld_GetDay() > Mod_TarrokbautUluMulu)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_UluMulu_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Tarrok_UluMulu_Fertig_18_00"); //Tarrok sein fertig. Du nun k�nnen gehen in Orkstadt mit Ulu-Mulu.

	CreateInvItems	(self, UluMulu, 1);
	B_GiveInvItems	(self, hero, UluMulu, 1);

	AI_Output(self, hero, "Info_Mod_Tarrok_UluMulu_Fertig_18_01"); //Freund aber m�ssen darauf achten, dass immer haben angelegt Ulu-Mulu, wenn gehen in Stadt.

	B_GivePlayerXP	(2000);

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Ich hab jetzt das Ulu-Mulu und kann in die Orkstadt gehen.");

	B_StartOtherRoutine	(Mod_10002_Orc_HoshPak_MT, "TOT");

	AI_Teleport	(Mod_10006_Orc_Ranad_MT, "TOT");
	B_StartOtherRoutine	(Mod_10006_Orc_Ranad_MT, "TOT");
	AI_Teleport	(Mod_10006_Orc_Ranad_MT, "TOT");
};

INSTANCE Info_Mod_Tarrok_WasVor (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_WasVor_Condition;
	information	= Info_Mod_Tarrok_WasVor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was habt ihr nun mit eurer kleinen Truppe hier vor?";
};

FUNC INT Info_Mod_Tarrok_WasVor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_WasVor_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_WasVor_15_00"); //Was habt ihr nun mit eurer kleinen Truppe hier vor?
	AI_Output(self, hero, "Info_Mod_Tarrok_WasVor_18_01"); //Erstes Ziel zu �berzeugen restliche Orks, dass Krushak b�se. Nicht einfach, weil Orks nicht wollen reden mit Ausgesto�enen.
	AI_Output(self, hero, "Info_Mod_Tarrok_WasVor_18_02"); //Als n�chstes m�ssen Festung herrichten. In altem Lager Orks nicht k�nnen bleiben, zu viele schlechte Erinnerungen an Krushak.
	AI_Output(self, hero, "Info_Mod_Tarrok_WasVor_18_03"); //Deshalb hier m�ssen neues Leben beginnen und wieder zu alten G�ttern beten.
};

INSTANCE Info_Mod_Tarrok_Hilfe (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Hilfe_Condition;
	information	= Info_Mod_Tarrok_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Brauchst du Hilfe?";
};

FUNC INT Info_Mod_Tarrok_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Hilfe_15_00"); //Brauchst du Hilfe?
	AI_Output(self, hero, "Info_Mod_Tarrok_Hilfe_18_01"); //Mensch leider k�nnen nicht helfen, Orks in Lager zu �berzeugen. Orks nicht w�rden auf ihn h�ren.
	AI_Output(self, hero, "Info_Mod_Tarrok_Hilfe_18_02"); //Aber hier in Festung genug Probleme. Tarrok h�ren, dass Streit zwischen Neuank�mmlingen. Vielleicht Mensch k�nnen schlichten.
};

INSTANCE Info_Mod_Tarrok_Lehrer (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Lehrer_Condition;
	information	= Info_Mod_Tarrok_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir beibringen, an die Sachen zu kommen?";
};

FUNC INT Info_Mod_Tarrok_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Fokussuche))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Lehrer_15_00"); //Kannst du mir beibringen, an die Sachen zu kommen?
	AI_Output(self, hero, "Info_Mod_Tarrok_Lehrer_18_01"); //Ja, k�nnen zeigen Freund wie zu nehmen Sachen von totes Tier.
};

INSTANCE Info_Mod_Tarrok_Lernen (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_Lernen_Condition;
	information	= Info_Mod_Tarrok_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir was bei.";
};

FUNC INT Info_Mod_Tarrok_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tarrok_Lehrer))
	&& ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SHADOWHORN] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FIRETONGUE] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SWAMPSHARKTEETH] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TROLLTEETH] == FALSE))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tarrok_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Tarrok_Lernen_15_00"); //Bring mir was bei.
	AI_Output(self, hero, "Info_Mod_Tarrok_Lernen_18_01"); //Was Freund wollen lernen?

	Info_ClearChoices	(Info_Mod_Tarrok_Lernen);

	Info_AddChoice	(Info_Mod_Tarrok_Lernen, DIALOG_BACK, Info_Mod_Tarrok_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_TrollTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("Trollhauer", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_TROLLTEETH)), Info_Mod_Tarrok_Lernen_TrollTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_SwampSharkTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("Sumpfhaiz�hne", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_SWAMPSHARKTEETH)), Info_Mod_Tarrok_Lernen_SwampSharkTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_ShadowHorn] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("Horn des Schattenl�ufers", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ShadowHorn)), Info_Mod_Tarrok_Lernen_ShadowHorn);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY [TROPHY_FireTongue] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Tarrok_Lernen, B_BuildLearnString ("Feuerzunge", B_GetLearnCostTalent (hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FireTongue)), Info_Mod_Tarrok_Lernen_FireTongue);
	};
};

FUNC VOID Info_Mod_Tarrok_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Tarrok_Lernen);
};

FUNC VOID Info_Mod_Tarrok_Lernen_TrollTeeth()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_TROLLTEETH);
};

FUNC VOID Info_Mod_Tarrok_Lernen_SwampSharkTeeth()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_SWAMPSHARKTEETH);
};

FUNC VOID Info_Mod_Tarrok_Lernen_ShadowHorn()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_SHADOWHORN);
};

FUNC VOID Info_Mod_Tarrok_Lernen_FireTongue()
{
	B_TeachPlayerTalentTakeAnimalTrophy	(self, hero, TROPHY_FIRETONGUE);
};

INSTANCE Info_Mod_Tarrok_EXIT (C_INFO)
{
	npc		= Mod_10000_Orc_Tarrok_MT;
	nr		= 1;
	condition	= Info_Mod_Tarrok_EXIT_Condition;
	information	= Info_Mod_Tarrok_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tarrok_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tarrok_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};