// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_PsiNov_2_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_PsiNov_2 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_PsiNov_2_EXIT_Condition;
	information	= Info_PsiNov_2_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_PsiNov_2_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_2_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_PsiNov_2_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_PsiNov_2_EinerVonEuchWerden_Condition;
	information	= Info_PsiNov_2_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Ich will bei euch mitmachen.";
};                       

FUNC INT Info_PsiNov_2_EinerVonEuchWerden_Condition()
{
	if (SumpfNovize_Dabei == FALSE)
	&& (Templer_Dabei == FALSE)
	&& (HoherTempler_Dabei == FALSE)
	&& (Guru_Dabei == FALSE)
	&& (HoherGuru_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_PsiNov_2_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_PsiNov_2_EinerVonEuchWerden_15_00"); //Ich will bei euch mitmachen.
	AI_Output(self,hero,"Info_PsiNov_2_EinerVonEuchWerden_02_01"); //Du hast dich entschieden dich uns anzuschlie�en? Vor dir liegt ein Weg voller Freude und Gl�ck.
	AI_Output(self,hero,"Info_PsiNov_2_EinerVonEuchWerden_02_02"); //Gehe zu Cor Cadar, er entscheidet, f�r welche Aufgabe du am besten geeignet bist.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_PsiNov_2_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_PsiNov_2_WichtigePersonen_Condition;
	information	= Info_PsiNov_2_WichtigePersonen_Info;
	permanent	= 1;
	description = "Wer sind eure Anf�hrer?";
};                       

FUNC INT Info_PsiNov_2_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_2_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_PsiNov_2_WichtigePersonen_15_00"); //Wer sind eure Anf�hrer?
	AI_Output(self,hero,"Info_PsiNov_2_WichtigePersonen_02_01"); //Cor Cadar und Cor Angar sind unsere geistigen V�ter.
	AI_Output(self,hero,"Info_PsiNov_2_WichtigePersonen_02_02"); //Sie sorgen daf�r, dass wir in Sicherheit sind und die Krautproduktion ohne Schwierigkeiten verl�uft.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_PsiNov_2_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_PsiNov_2_DasLager_Condition;
	information	= Info_PsiNov_2_DasLager_Info;
	permanent	= 1;
	description = "Was gibt es wichtiges �ber diesen Ort zu wissen?";
};                       

FUNC INT Info_PsiNov_2_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_2_DasLager_Info()
{
	AI_Output(hero,self,"Info_PsiNov_2_DasLager_15_00"); //Was gibt es wichtiges �ber diesen Ort zu wissen?
	AI_Output(self,hero,"Info_PsiNov_2_DasLager_02_01"); //Es ist ein Ort des Glaubens, Bruder. Wir haben nicht viel, aber was wir haben, teilen wir gerne mit denen, die sich unsere Lehren anh�ren wollen.
	AI_Output(self,hero,"Info_PsiNov_2_DasLager_02_02"); //Suche einen der Gurus auf, und lass deine Seele bereichern.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_PsiNov_2_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_PsiNov_2_DieLage_Condition;
	information	= Info_PsiNov_2_DieLage_Info;
	permanent	= 1;
	description = "Wie sieht's aus?";
};                       

FUNC INT Info_PsiNov_2_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_2_DieLage_Info()
{
	AI_Output(hero,self,"Info_PsiNov_2_DieLage_15_00"); //Wie sieht's aus?
	AI_Output(self,hero,"Info_PsiNov_2_DieLage_02_01"); //Ich habe wenig Zeit - muss mich um meine Aufgaben k�mmern.
};

INSTANCE Info_Mod_PsiNov_2_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_PsiNov_2_Pickpocket_Condition;
	information	= Info_Mod_PsiNov_2_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_PsiNov_2_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Gold, 110);
};

FUNC VOID Info_Mod_PsiNov_2_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);

	Info_AddChoice	(Info_Mod_PsiNov_2_Pickpocket, DIALOG_BACK, Info_Mod_PsiNov_2_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_PsiNov_2_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_PsiNov_2_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_PsiNov_2_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);
};

FUNC VOID Info_Mod_PsiNov_2_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_PsiNov_2(var c_NPC slf)
{
	Info_PsiNov_2_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_PsiNov_2_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_PsiNov_2_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_PsiNov_2_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_PsiNov_2_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_PsiNov_2_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
