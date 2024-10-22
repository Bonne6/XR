INSTANCE Info_Mod_Will_Hi (C_INFO)
{
	npc		= Mod_7589_OUT_Will_REL;
	nr		= 1;
	condition	= Info_Mod_Will_Hi_Condition;
	information	= Info_Mod_Will_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Will_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Will_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_00"); //Tritt herein, Freund. Gerade eben l�uft mein neues revolution�res B�hnenst�ck.
	AI_Output(hero, self, "Info_Mod_Will_Hi_15_01"); //Was ist denn daran so revolution�r?
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_02"); //(euphorisch) Ich habe das ganze St�ck auf seine H�hepunkte zusammengestrichen!
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_03"); //Innovation � la Will Shakesbeer!
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_04"); //Wie oft sitzt man im teatro und schaut sich ein - wom�glich spannendes - pi�ce teatrale, ein St�ck, an, fiebert mit, und doch - nach zwei Stunden, nach drei Stunden schleicht sich ein G�hnen ein;
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_05"); //man unterdr�ckt es, aber je weiter die Zeit fortschreitet, desto h�ufiger muss man dagegen ank�mpfen.
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_06"); //Und wahrlich niemand vermag es, mehrere Stunden ohne Br�ckenszenen zu f�llen, L�ckenb��er, wenn Er so will, unn�tig allemal.
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_07"); //Dies wird sich nun �ndern! Mein Konzept sieht eine Konzentration der suspense, der Spannung, vor, es geht Schlag auf Schlag, Schicksalsschlag auf Hammerschlag, oder so, wie Er will.
	AI_Output(self, hero, "Info_Mod_Will_Hi_06_08"); //Die n�chste recita, Auff�hrung, beginnt gleich. F�r nur 100 Goldm�nzen kann Er dabei sein.
};

INSTANCE Info_Mod_Will_EXIT (C_INFO)
{
	npc		= Mod_7589_OUT_Will_REL;
	nr		= 1;
	condition	= Info_Mod_Will_EXIT_Condition;
	information	= Info_Mod_Will_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Will_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Will_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};