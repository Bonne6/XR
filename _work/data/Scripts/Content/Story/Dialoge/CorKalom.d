INSTANCE Info_Mod_Kalom_Hi (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_Hi_Condition;
	information	= Info_Mod_Kalom_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kalom_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_Hi_12_00"); //Wen haben wir denn hier?

	if (HeroIstKeinZombie == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Kalom_Hi_12_01"); //Der verwesende Leichnam des ungl�ubigen Narren, der die gro�en Pl�ne meines Meisters vereitelt hat, ist zum Untotendasein erwacht.
		AI_Output(self, hero, "Info_Mod_Kalom_Hi_12_02"); //Verrotte du nur, es wird mir lange genug Ablenkung und Genugtuung verschaffen, w�hrend ich auf die Wiederkehr meines Meisters warte.
	};
};

INSTANCE Info_Mod_Kalom_LeckMich (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LeckMich_Condition;
	information	= Info_Mod_Kalom_LeckMich_Info;
	permanent	= 0;
	important	= 0;
	description	= "Da kannst du lange warten, du ektoplasmatischer Unrat.";
};

FUNC INT Info_Mod_Kalom_LeckMich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_Hi))
	&& (HeroIstKeinZombie == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LeckMich_Info()
{
	AI_Output(hero, self, "Info_Mod_Kalom_LeckMich_15_00"); //Da kannst du lange warten, du ektoplasmatischer Unrat.
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_01"); //Was, wie ...?! Dein Geist hat die verwesende H�lle nicht verlassen?! Wie ist das m�glich ...?
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_02"); //Nun denn, auch das wird nichts an deinem Schicksal �ndern. (lacht)
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_03"); //Der Ausgang ist durch tonnenschwere Felsbrocken versperrt, die Br�cke eingest�rzt und nach vielen Jahren wird von dir nichts mehr �brig sein au�er Staub.
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_04"); //Und ich kann keinerlei magische Bef�higung in dir sp�ren, die dir dazu verhelfen k�nnte, diesen heiligen Ort zu verlassen.
	AI_Output(self, hero, "Info_Mod_Kalom_LeckMich_12_05"); //Du bist nun ein einfacher Zombie. An dem Anblick deiner verfaulenden Eingeweide werde ich mich laben.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Kalom_KeinZombie (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_KeinZombie_Condition;
	information	= Info_Mod_Kalom_KeinZombie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_KeinZombie_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Kalom_LeckMich))
	|| (!Npc_KnowsInfo(hero, Info_Mod_Kalom_Hi)))
	&& (HeroIstKeinZombie == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_KeinZombie_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_KeinZombie_12_00"); //Was, wie ist das m�glich?! Du weilst wieder unter den Lebenden. Aber ...
	AI_Output(hero, self, "Info_Mod_Kalom_KeinZombie_15_01"); //Entt�uscht? Ist deine Rechnung nicht ganz aufgegangen?
	AI_Output(self, hero, "Info_Mod_Kalom_KeinZombie_12_02"); //Das k�nnen wir gleich wieder �ndern. Du Narr! Und du kommst tats�chlich wieder hierher.
	AI_Output(hero, self, "Info_Mod_Kalom_KeinZombie_15_03"); //Warum nicht? Du bist doch nur ein Geist.
	AI_Output(self, hero, "Info_Mod_Kalom_KeinZombie_12_04"); //(lacht) Genau, nur ein Geist. Sp�re die Macht, die mir der Schl�fer verliehen hat.

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(200);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Kalom_LebtNoch01 (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LebtNoch01_Condition;
	information	= Info_Mod_Kalom_LebtNoch01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_LebtNoch01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_KeinZombie))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LebtNoch01_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_LebtNoch01_12_00"); //Was! Du lebst immer noch?

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Kalom_LebtNoch02 (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LebtNoch02_Condition;
	information	= Info_Mod_Kalom_LebtNoch02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_LebtNoch02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_LebtNoch01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LebtNoch02_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_LebtNoch02_12_00"); //Du schon wieder.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Kalom_LebtNoch03 (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_LebtNoch03_Condition;
	information	= Info_Mod_Kalom_LebtNoch03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kalom_LebtNoch03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kalom_LebtNoch02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kalom_LebtNoch03_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_LebtNoch03_12_00"); //Wie l�stig. Wird man dich denn gar nicht mehr los?

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Kalom_EXIT (C_INFO)
{
	npc		= Mod_7021_GUR_CorKalom_OT;
	nr		= 1;
	condition	= Info_Mod_Kalom_EXIT_Condition;
	information	= Info_Mod_Kalom_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kalom_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kalom_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Kalom_EXIT_12_00"); //Dir h�ngt da ein wenig Fleisch vom Arm. (lacht)

	AI_StopProcessInfos	(self);
};