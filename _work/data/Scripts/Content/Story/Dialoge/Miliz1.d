INSTANCE Info_Mod_Miliz1_Hi (C_INFO)
{
	npc		= Mod_1893_MIL_Miliz_NW;
	nr		= 1;
	condition	= Info_Mod_Miliz1_Hi_Condition;
	information	= Info_Mod_Miliz1_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Miliz1_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Miliz1_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_00"); //Was machst du hier?
	AI_Output(hero, self, "Info_Mod_Miliz1_Hi_15_01"); //Das Selbe kann ich euch fragen.
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_02"); //Wir haben einen Schl�ssel bei Attila gefunden und der passte in die T�r dorthinten.
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_03"); //Sieht so aus als h�tten wir das Versteck der Diebe gefunden... aber sag mal, wie bist du �berhaupt hierher gekommen?
	AI_Output(hero, self, "Info_Mod_Miliz1_Hi_15_04"); //Rate mal.
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_05"); //Sag blo� nicht, dass du zu den Dieben geh�rst.
	AI_Output(hero, self, "Info_Mod_Miliz1_Hi_15_06"); //Und wenn?
	AI_Output(self, hero, "Info_Mod_Miliz1_Hi_07_07"); //Du wirst hier nicht mehr lebend rauskommen!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};