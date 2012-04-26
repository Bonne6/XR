INSTANCE Info_Mod_Furgas_Hi (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_Hi_Condition;
	information	= Info_Mod_Furgas_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Furgas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Furgas_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_00"); //Ein neues Gesicht in unseren Reihen, wie erfreulich.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_01"); //Lass mich dir kurz etwas wichtiges erkl�ren.
	AI_Output(hero, self, "Info_Mod_Furgas_Hi_15_02"); //Erz�hl.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_03"); //Dieser Turm ist eine zentrale Stelle im Kloster.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_04"); //Auf der Spitze findest du das Orakel, das sehr n�tzlich sein kann.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_05"); //Wenn du jedoch in das Pentagramm schreitest, so wirst du in unsere H�hle teleportiert.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_06"); //Dort gibt es eine Mine, in der wir Runensteine abbauen, und einen Kr�utergarten.
	AI_Output(hero, self, "Info_Mod_Furgas_Hi_15_07"); //Ein Kr�utergarten unter der Erde?
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_08"); //Ja, und die Pflanzen gedeihen dort dank unserer Magie pr�chtig.
	AI_Output(hero, self, "Info_Mod_Furgas_Hi_15_09"); //Danke f�r die Informationen.
};

INSTANCE Info_Mod_Furgas_Paket (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_Paket_Condition;
	information	= Info_Mod_Furgas_Paket_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab hier ein Nahrungspaket f�r dich.";
};

FUNC INT Info_Mod_Furgas_Paket_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tojan_Hi))
	&& (Npc_HasItems(hero, ItMi_PAT_Nahrung) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furgas_Paket_Info()
{
	AI_Output(hero, self, "Info_Mod_Furgas_Paket_15_00"); //Ich hab Paketer ein Nahrungspaket f�r dich.
	
	B_GiveInvItems	(hero, self, ItMi_Pat_Nahrung, 1);

	AI_Output(self, hero, "Info_Mod_Furgas_Paket_13_01"); //Ah, endlich. Die Paladine haben schon darauf gewartet.
	AI_Output(self, hero, "Info_Mod_Furgas_Paket_13_02"); //Hier hast du einen Runenstein als Dank.

	B_GiveInvItems	(self, hero, ItMi_Runeblank, 1);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Furgas_MangelQuest (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_MangelQuest_Condition;
	information	= Info_Mod_Furgas_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie ich gesehen habe, besitzt ihr viele Erzadern da unten ...";
};

FUNC INT Info_Mod_Furgas_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furgas_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Furgas_MangelQuest_15_00"); //Wie ich gesehen habe, besitzt ihr viele Erzadern da unten ... aber niemand ist mit dem Abbau besch�ftigt.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_01"); //Nunja, seit der Belagerung l�uft eben doch nicht alles so ganz seinen gewohnten Gang.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_02"); //Wir waren wirklich nicht darauf  vorbereitet, dass die Schwarzmagier mit ihren Legionen so pl�tzlich vor unseren Toren stehen.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_03"); //Und als es ernst wurde, konnten wir nicht lange �berlegen, sondern mussten kurzerhand jedes St�ck Metall zu einer Klinge f�r unsere Streiter umschmieden.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_04"); //Darunter waren eben auch die Spitzhacken ... Ach, aber so langsam k�nnten wir doch hier und da wieder das Erz f�r die Runensteine brauchen.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_05"); //Wenn wir doch nur f�nf Spitzhacken h�tten ...

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Furgas k�nnte f�nf Spitzhacken gebrauchen, um den Erzabbau wieder in Gang zu bringen.");
};

INSTANCE Info_Mod_Furgas_MangelQuest2 (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_MangelQuest2_Condition;
	information	= Info_Mod_Furgas_MangelQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe hier einige Spitzhacken.";
};

FUNC INT Info_Mod_Furgas_MangelQuest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Furgas_MangelQuest))
	&& (Npc_HasItems(hero, ItMw_2H_Axe_L_01) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furgas_MangelQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Furgas_MangelQuest2_15_00"); //Ich habe hier einige Spitzhacken.

	B_GiveInvItems	(hero, self, ItMw_2H_Axe_L_01, 5);

	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest2_13_01"); //Tats�chlich ... habe vielen Dank. Nimm diese Runensteine zur Belohnung.

	B_GiveInvItems	(self, hero, ItMi_Runeblank, 2);

	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest2_13_02"); //Es sind unsere letzten, aber mit den Spitzhacken werden wir in K�rze gen�gend neue haben.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest2_13_03"); //Innos beh�te dich auf deinen Wegen.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Furgas hat die Spitzhacken und der Erzabbau kann weitergehen.");

	B_StopMangel();

	B_RemoveNpc	(Mod_7787_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7788_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7789_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7790_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7791_SFB_Flaemar_PAT);
};

INSTANCE Info_Mod_Furgas_EXIT (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_EXIT_Condition;
	information	= Info_Mod_Furgas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Furgas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Furgas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};