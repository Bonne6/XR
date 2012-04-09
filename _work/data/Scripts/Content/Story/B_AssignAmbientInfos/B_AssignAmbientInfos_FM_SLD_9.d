// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_FM_SLD_9_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_FM_SLD_9_EXIT_Condition;
	information	= DIA_FM_SLD_9_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_FM_SLD_9_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_FM_SLD_9_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_FM_SLD_9_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_FM_SLD_9_JOIN_Condition;
	information	= DIA_FM_SLD_9_JOIN_Info;
	permanent	= TRUE;
	description = "Ich will mich euch anschlie�en!";
};                       

FUNC INT DIA_FM_SLD_9_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_FM_SLD_9_JOIN_Info()
{	
	AI_Output (other, self, "DIA_FM_SLD_9_JOIN_15_00"); //Ich will mich euch anschlie�en!
	AI_Output(self, hero, "DIA_FM_SLD_9_JOIN_07_01"); //Dann geh zu Lares, er k�mmert sich um die Neuen.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_FM_SLD_9_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_FM_SLD_9_PEOPLE_Condition;
	information	= DIA_FM_SLD_9_PEOPLE_Info;
	permanent	= TRUE;
	description = "Wer hat hier das Sagen?";
};                       

FUNC INT DIA_FM_SLD_9_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_FM_SLD_9_PEOPLE_Info()
{	
	AI_Output (other, self, "DIA_FM_SLD_9_PEOPLE_15_00"); //Wer hat hier das Sagen?
	AI_Output (self, other, "DIA_FM_SLD_9_PEOPLE_07_01"); //Lee ist unser Anf�hrer. Lares ist seine rechte Hand. Die meisten M�nner folgen ihm, denn er hat sie schon damals in der Kolonie angef�hrt.
	AI_Output(self, hero, "DIA_FM_SLD_9_PEOPLE_07_02"); //Hier in der Mine jedoch gibt es eigentlich keinen Anf�hrer.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_FM_SLD_9_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_FM_SLD_9_LOCATION_Condition;
	information	= DIA_FM_SLD_9_LOCATION_Info;
	permanent	= TRUE;
	description = "Erz�hl mir was �ber die Mine.";
};                       

FUNC INT DIA_FM_SLD_9_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_FM_SLD_9_LOCATION_Info()
{	
	AI_Output (other, self, "DIA_FM_SLD_9_LOCATION_15_00"); //Erz�hl mir was �ber die Mine.
	AI_Output (self, other, "DIA_FM_SLD_9_LOCATION_07_01"); //Hier gibts ne Menge Erz. Die Sch�rfer bauen es ab und wir lagern das ganze im Lager. Jeder bekommt nat�rlich einen Teil davon ab.
};

INSTANCE Info_Mod_FM_SLD_9_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_FM_SLD_9_Pickpocket_Condition;
	information	= Info_Mod_FM_SLD_9_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_FM_SLD_9_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 500);
};

FUNC VOID Info_Mod_FM_SLD_9_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_FM_SLD_9_Pickpocket);

	Info_AddChoice	(Info_Mod_FM_SLD_9_Pickpocket, DIALOG_BACK, Info_Mod_FM_SLD_9_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_FM_SLD_9_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_FM_SLD_9_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_FM_SLD_9_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_FM_SLD_9_Pickpocket);
};

FUNC VOID Info_Mod_FM_SLD_9_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_FM_SLD_9_Pickpocket);
};


// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_FM_SLD_9 (var c_NPC slf)
{
	DIA_FM_SLD_9_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_FM_SLD_9_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_FM_SLD_9_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_FM_SLD_9_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_FM_SLD_9_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
