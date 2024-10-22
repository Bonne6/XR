INSTANCE Info_Mod_Bollok_Hi (C_INFO)
{
	npc		= Mod_10043_Orc_Bollok_OM;
	nr		= 1;
	condition	= Info_Mod_Bollok_Hi_Condition;
	information	= Info_Mod_Bollok_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Verstehst du unsere Sprache?";
};

FUNC INT Info_Mod_Bollok_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bollok_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_00"); //Verstehst du unsere Sprache?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_01"); //(�berrascht) Mensch sprechen ganz normal ... nicht wie andere, die pl�tzlich komisch ver�ndert und mit Schwert sich gegenseitig angreifen.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_02"); //Kannst du mir sagen, was passiert ist?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_03"); //In dem gro�en finsteren H�hle hinten, wo fr�her Gachluk gewesen, pl�tzlich aufstehen Menschensklaven, die vorher tot, nun nicht mehr tot ... aber auch nicht lebend.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_04"); //Andere sie genannt "Zombies", glaube ich.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_05"); //Aha, die Leichname der Sklaven sind zu Untotendasein erwacht.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_06"); //Was ist dann passiert?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_07"); //Chef der Mine Kurgan sagen, dass viele M�nner in Finsternis gehen, um "Zombies" zu schlagen mit Schwert.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_08"); //Haben auch getan und gek�mpft. Aber nicht alle �berlebt und die, die wieder herauskamen, ver�ndert.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_09"); //Ver�ndert?
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_10"); //Ja, finsterer Schatten auf Gesicht und haben angegriffen alle anderen.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_11"); //Andere die verletzt und tot dann brachten auch in die Finsternis ... ebenfalls ver�ndert und die tot als Zombies herausgekommen.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_12"); //Bollok hat auch bef�rchtet, dass mich angreifen und umbringen ... aber nicht getan.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_13"); //Danke f�r die Informationen.
	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_14"); //Dann muss ich da wohl hin um die Wurzel des �bels zu finden.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_15"); //Mensch seien starker und mutiger Krieger. W�nschen Gl�ck auf Weg ...
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_16"); //Warte, bevor vergessen, Ver�nderte haben auch gebracht viel magisches Erz in Finsternis.
	AI_Output(self, hero, "Info_Mod_Bollok_Hi_18_17"); //Alles sehr sonderbar.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Bollok_Hi_15_18"); //(zu sich selbst) Ja, das klingt wirklich merkw�rdig.

	AI_TurnToNpc	(hero, self);
};

INSTANCE Info_Mod_Bollok_EXIT (C_INFO)
{
	npc		= Mod_10043_Orc_Bollok_OM;
	nr		= 1;
	condition	= Info_Mod_Bollok_EXIT_Condition;
	information	= Info_Mod_Bollok_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bollok_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bollok_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};