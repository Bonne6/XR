INSTANCE Info_Mod_Richard_Hi (C_INFO)
{
	npc		= Mod_7409_OUT_Richard_EIS;
	nr		= 1;
	condition	= Info_Mod_Richard_Hi_Condition;
	information	= Info_Mod_Richard_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richard_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richard_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Richard_Hi_12_00"); //Wer zum Teufel bist du und warum t�test du meine ganzen Freunde.
	AI_Output(hero, self, "Info_Mod_Richard_Hi_15_01"); //Dein Freund Cirio hat den Fehler gemacht, mich als Futter zu sehen, und nun ist ER Futter f�r die W�rmer, lustig nicht wahr?
	AI_Output(self, hero, "Info_Mod_Richard_Hi_12_02"); //Cirio ist kein gro�er Verlust, er hat seine Aufgabe erf�llt, und nun, wo du meine ganzen Freunde get�tet hast, bleibt mehr von der Frau f�r mich.
	AI_Output(hero, self, "Info_Mod_Richard_Hi_15_03"); //Ich wollte dir eigentlich nur den Kopf abschlagen und ihn an die Wand h�ngen, also lass uns anfangen.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORM");
};

INSTANCE Info_Mod_Richard_EXIT (C_INFO)
{
	npc		= Mod_7409_OUT_Richard_EIS;
	nr		= 1;
	condition	= Info_Mod_Richard_EXIT_Condition;
	information	= Info_Mod_Richard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Richard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};