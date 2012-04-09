INSTANCE Info_Mod_Lawrence_Hi (C_INFO)
{
	npc		= Mod_1730_MIL_Lawrence_NW;
	nr		= 1;
	condition	= Info_Mod_Lawrence_Hi_Condition;
	information	= Info_Mod_Lawrence_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lawrence_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lawrence_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_00"); //Suchst du jemanden?
	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_01"); //Ja, aber mir f�llt sein Name nicht mehr ein. Er beginnt mit L.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_02"); //Hier in der Oberstadt gibt es nur drei. Einer ist Larius, der Stadthalter. Dann gibt es noch Lutero, ein H�ndler. Er sollte eigentlich hier irgendwo rumstehen.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_03"); //Und nat�rlich noch mich. Mein Namen ist Lawrence.

	Mod_1730_MIL_Lawrence_NW.name = "Lawrence";

	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_04"); //Achso, danke f�r die Informationen.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_05"); //Kein Problem. Was brauchst du denn?
	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_06"); //Ich suche den Erfinder.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_07"); //Den Erfinder?
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_08"); //(ver�ngstigt) �h, d-d-der ist ...a-auf Urlaub, genau, auf Urlaub! Er hat gesagt, er wolle einen Freund besuchen ...in Myrtana!
	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_09"); //Okay! Nochmal danke f�r die Informationen.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_10"); //Kein Problem. �h, ich muss jetzt weg!

	B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Eine Miliz namens Lawrence hat mir von drei Personen in der Oberstadt mit dem Anfangsbuchstaben L erz�hlt. Larius, der Stadthalter, Lutero, der H�ndler, und er selbst. Nachdem er erfahren hat, dass ich den Erfinder suche, wurde er ziemlich nerv�s. Ich sollte ihn wohl mal verfolgen.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LARIUS");
	B_StartOtherRoutine	(Mod_591_NONE_Larius_NW, "LARIUS");

	Mod_MitLawrenceGesprochen = 1;
};

INSTANCE Info_Mod_Lawrence_EXIT (C_INFO)
{
	npc		= Mod_1730_MIL_Lawrence_NW;
	nr		= 1;
	condition	= Info_Mod_Lawrence_EXIT_Condition;
	information	= Info_Mod_Lawrence_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lawrence_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lawrence_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};