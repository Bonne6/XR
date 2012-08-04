INSTANCE Info_Mod_SNOV_05_Leader (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_Leader_Condition;
	information	= Info_Mod_SNOV_05_Leader_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wer hat hier das Sagen?";
};

FUNC INT Info_Mod_SNOV_05_Leader_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_05_Leader_Info()
{
	B_Say	(hero, self, "$AMBISNOV01");

	AI_Output(self, hero, "Info_Mod_SNOV_05_Leader_05_00"); //Das ist nicht ganz so einfach. Hier in der Festung bestimmt Andokai die Richtung.
	AI_Output(self, hero, "Info_Mod_SNOV_05_Leader_05_01"); //Der D�monenritter Raven hat aber bei den Kriegern auch einiges zu sagen.
	AI_Output(self, hero, "Info_Mod_SNOV_05_Leader_05_02"); //Au�erdem gibt es da noch Xardas. Der l�sst sich selten blicken, aber seine Worte sind Gesetz, und nicht mal Andokai traut sich, sie nicht zu befolgen.
};

INSTANCE Info_Mod_SNOV_05_Beliarkloster (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_Beliarkloster_Condition;
	information	= Info_Mod_SNOV_05_Beliarkloster_Info;
	permanent	= 1;
	important	= 0;
	description	= "Was gibt es hier f�r wichtige Orte?";
};

FUNC INT Info_Mod_SNOV_05_Beliarkloster_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_05_Beliarkloster_Info()
{
	B_Say	(hero, self, "$AMBISNOV03");

	AI_Output(self, hero, "Info_Mod_SNOV_05_Beliarkloster_05_00"); //Die Kirche ist das Herzst�ck unserer Festung. Dort huldigen wir Beliar.
	AI_Output(self, hero, "Info_Mod_SNOV_05_Beliarkloster_05_01"); //Au�erdem gibt es noch die Schmiede, um die sich Eduard k�mmert, und die K�che, wo's Essen gibt.
	AI_Output(self, hero, "Info_Mod_SNOV_05_Beliarkloster_05_02"); //Meistens ist das ein ziemlicher Fra�, aber Hauptsache, man �berlebt.
};

INSTANCE Info_Mod_SNOV_05_Interessantes (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_Interessantes_Condition;
	information	= Info_Mod_SNOV_05_Interessantes_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ist in letzter Zeit was Interessantes passiert?";
};

FUNC INT Info_Mod_SNOV_05_Interessantes_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_05_Interessantes_Info()
{
	B_Say	(hero, self, "$AMBISNOV04");

	AI_Output(self, hero, "Info_Mod_SNOV_05_Interessantes_05_00"); //Nicht dass ich w�sste.
};

INSTANCE Info_Mod_SNOV_05_Pickpocket (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_Pickpocket_Condition;
	information	= Info_Mod_SNOV_05_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_SNOV_05_Pickpocket_Condition()
{
	C_Beklauen	(30+r_max(30), ItMi_Gold, 100+r_max(50));
};

FUNC VOID Info_Mod_SNOV_05_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SNOV_05_Pickpocket);

	Info_AddChoice	(Info_Mod_SNOV_05_Pickpocket, DIALOG_BACK, Info_Mod_SNOV_05_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SNOV_05_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SNOV_05_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SNOV_05_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SNOV_05_Pickpocket);
};

FUNC VOID Info_Mod_SNOV_05_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_SNOV_05_Pickpocket);
};

INSTANCE Info_Mod_SNOV_05_EXIT (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_05_EXIT_Condition;
	information	= Info_Mod_SNOV_05_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SNOV_05_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_05_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_SNOV_05 (var c_NPC slf)
{
	Info_Mod_SNOV_05_Leader.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_05_Beliarkloster.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_05_Interessantes.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_05_Pickpocket.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_05_EXIT.npc	= Hlp_GetInstanceID(slf);
};