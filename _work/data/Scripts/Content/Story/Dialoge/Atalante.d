INSTANCE Info_Mod_Atalante_Hi (C_INFO)
{
	npc		= Mod_7678_OUT_Atalante_NW;
	nr		= 1;
	condition	= Info_Mod_Atalante_Hi_Condition;
	information	= Info_Mod_Atalante_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Atalante_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Atalante_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Atalante_Hi_16_00"); //(hechelnd) Ich werde Euch zerfetzen!
	AI_Output(hero, self, "Info_Mod_Atalante_Hi_15_01"); //Ganz ruhig, ich will dir nichts tun.
	AI_Output(self, hero, "Info_Mod_Atalante_Hi_16_02"); //(knurrt bedrohlich)
};

INSTANCE Info_Mod_Atalante_Bosper (C_INFO)
{
	npc		= Mod_7678_OUT_Atalante_NW;
	nr		= 1;
	condition	= Info_Mod_Atalante_Bosper_Condition;
	information	= Info_Mod_Atalante_Bosper_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich soll dir eine Nachricht von Bosper bringen.";
};

FUNC INT Info_Mod_Atalante_Bosper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Atalante_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Atalante_Bosper_Info()
{
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_00"); //Ich soll dir eine Nachricht von Bosper bringen.
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_01"); //(heult auf) Ich will nichts davon h�ren! Schick ihn her, und ich werde mich seiner annehmen.
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_02"); //Er will dir verzeihen.
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_03"); //Verzeihen?! Auf seinen Knien soll er angekrochen kommen und um Vergebung flehen!
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_04"); //Was hat Bosper dir denn getan?
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_05"); //H�r auf, diesen Namen zu nennen! Er hat nur Leid �ber mein Leben gebracht.
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_06"); //Meinst du nicht, dass man dar�ber reden kann?
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_07"); //Nein, ich brauche nicht mehr zu reden. Was mir nicht gef�llt, wird get�tet und gefressen.
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_16_08"); //Und du gef�llst mir nicht, neugieriger Mensch. Dein saftiges Fleisch wird meinen Magen f�llen!

	B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, "Es ist mir nicht gelungen, vern�nftig mit Atalante zu sprechen. Sie griff mich an, und so blieb mir nichts anderes �brig, als sie zu t�ten. Ich sollte Bosper die traurige Nachricht �berbringen.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORM");
};