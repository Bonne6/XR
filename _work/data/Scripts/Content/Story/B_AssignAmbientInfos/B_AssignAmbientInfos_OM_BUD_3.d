// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_OM_BUD_3_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Vlk_3 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_OM_BUD_3_EXIT_Condition;
	information	= Info_OM_BUD_3_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_OM_BUD_3_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_OM_BUD_3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Mine
// *************************************************************************

INSTANCE Info_OM_BUD_3_Mine (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_OM_BUD_3_Mine_Condition;
	information	= Info_OM_BUD_3_Mine_Info;
	permanent	= 1;
	description = "Erz�hl mir was von der Mine";
};                       

FUNC INT Info_OM_BUD_3_Mine_Condition()
{
	return 1;
};

FUNC VOID Info_OM_BUD_3_Mine_Info()
{
	AI_Output(other,self,"Info_OM_BUD_3_Mine_15_00"); //Erz�hl mir was von der Mine
	AI_Output(self,other,"Info_OM_BUD_3_Mine_01_01"); //Wir m�ssen alle arbeiten. Wochenlang ohne Tageslicht. Es gibt kein Entkommen. Die einzige Freiheit ist der Tod.
	
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_OM_BUD_3_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_OM_BUD_3_WichtigePersonen_Condition;
	information	= Info_OM_BUD_3_WichtigePersonen_Info;
	permanent	= 1;
	description = "Wer hat hier was zu Sagen?";
};                       

FUNC INT Info_OM_BUD_3_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_OM_BUD_3_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_OM_BUD_3_WichtigePersonen_15_00"); //Wer hat hier was zu sagen?
	AI_Output(self,other,"Info_OM_BUD_3_WichtigePersonen_01_01"); //Kurgan ist der Chef der Mine. Er hat die Kontrolle �ber die Mine und befehligt alle Wachen.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_OM_BUD_3_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_OM_BUD_3_DieLage_Condition;
	information	= Info_OM_BUD_3_DieLage_Info;
	permanent	= 1;
	description = "Wie sieht's aus?";
};                       

FUNC INT Info_OM_BUD_3_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_OM_BUD_3_DieLage_Info()
{
	AI_Output(other,self,"Info_OM_BUD_3_DieLage_15_00"); //Wie sieht's aus?
	AI_Output(self,other,"Info_OM_BUD_3_DieLage_01_01"); //Tja, also mein R�cken schmerzt, meine Arme fallen mir ab, meine Kehle ist trocken und ich bin m�de.
	AI_Output(self,other,"Info_OM_BUD_3_DieLage_01_02"); //Und das st�ndige Ger�usch der Spitzhacken. Ich werde noch wahnsinnig.
};

INSTANCE Info_Mod_OM_BUD_3_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_OM_BUD_3_Pickpocket_Condition;
	information	= Info_Mod_OM_BUD_3_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_20;
};

FUNC INT Info_Mod_OM_BUD_3_Pickpocket_Condition()
{
	C_Beklauen	(20, ItMi_Gold, 10);
};

FUNC VOID Info_Mod_OM_BUD_3_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_OM_BUD_3_Pickpocket);

	Info_AddChoice	(Info_Mod_OM_BUD_3_Pickpocket, DIALOG_BACK, Info_Mod_OM_BUD_3_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_OM_BUD_3_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_OM_BUD_3_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_OM_BUD_3_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_OM_BUD_3_Pickpocket);
};

FUNC VOID Info_Mod_OM_BUD_3_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_OM_BUD_3_Pickpocket);
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_OM_BUD_3(var c_NPC slf)
{
	Info_OM_BUD_3_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_OM_BUD_3_Mine.npc					= Hlp_GetInstanceID(slf);
	Info_OM_BUD_3_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_OM_BUD_3_DieLage.npc					= Hlp_GetInstanceID(slf);
	Info_Mod_OM_BUD_3_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
