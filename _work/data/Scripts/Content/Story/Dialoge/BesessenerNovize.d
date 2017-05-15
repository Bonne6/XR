INSTANCE Info_Mod_BesessenerNovize_Hi (C_INFO)
{
	npc		= Mod_4015_SNOV_BesessenerNovize_MT;
	nr		= 1;
	condition	= Info_Mod_BesessenerNovize_Hi_Condition;
	information	= Info_Mod_BesessenerNovize_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hab' ich dich, D�mon!";
};

FUNC INT Info_Mod_BesessenerNovize_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_BesessenerNovize_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_BesessenerNovize_Hi_15_00"); //Hab' ich dich, D�mon!
	AI_Output(self, hero, "Info_Mod_BesessenerNovize_Hi_01_01"); //Du kommst zu sp�t, kleiner Mensch. Ich werde alle Diener Beliars t�ten und meinen Meistern einen gro�en Dienst erweisen!
	AI_Output(hero, self, "Info_Mod_BesessenerNovize_Hi_15_02"); //Lass uns lieber zur Sache kommen!

	AI_DrawWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_BesessenerNovize_Hi_01_03"); //Ganz wie du willst.

	B_LogEntry	(TOPIC_MOD_BEL_DAEMON, "Der D�mon ist ein besessener Novize. Ich muss ihn t�ten.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TURNDEMON");
};