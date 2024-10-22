INSTANCE Info_Mod_Bollok_MT_Hi (C_INFO)
{
	npc		= Mod_10044_Orc_Bollok_MT;
	nr		= 1;
	condition	= Info_Mod_Bollok_MT_Hi_Condition;
	information	= Info_Mod_Bollok_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bollok_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bollok_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_00"); //(�berrascht) Ich erkennen dich ... du seien Mensch der tapfer gek�mpft in Mine.
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_15_01"); //Ahh, du bist es. Wie ich sehe bist du nicht mehr l�nger Sklave in der Alten Mine.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_02"); //Nein, seien weggelaufen in Minental ... haben getroffen Br�der nach viele Jahren.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_03"); //(bedr�ckt) Hmm, und hatte gehofft dir nicht zu begegnen.
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_15_04"); //Was, wieso?
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_05"); //Du seien Feind der Orks und meines neuen Meisters.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_06"); //Pflicht verlangen, dass ich dich versuchen muss zu t�ten ... auch, wenn nicht wollen.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_07"); //Du haben gek�mpft mit Ehre und mir gezeigt, dass du nicht b�se, wie andere Menschen.

	self.guild = GIL_ORC;
	Npc_SetTrueGuild (self, GIL_ORC);

	Info_ClearChoices	(Info_Mod_Bollok_MT_Hi);

	Info_AddChoice	(Info_Mod_Bollok_MT_Hi, "Dann lass es uns zu Ende bringen.", Info_Mod_Bollok_MT_Hi_B);
	Info_AddChoice	(Info_Mod_Bollok_MT_Hi, "Du kannst dich auch anders entscheiden.", Info_Mod_Bollok_MT_Hi_A);
};

FUNC VOID Info_Mod_Bollok_MT_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_B_15_00"); //Dann lass es uns zu Ende bringen. M�ge der bessere Krieger gewinnen.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_B_18_01"); //Froh bin, dass du Unver�nderliches mutig ins Auge blickst und akzeptierst.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_B_18_02"); //Werden dich mit Ehre eines Kriegers bestatten, falls t�ten.

	Info_ClearChoices	(Info_Mod_Bollok_MT_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Bollok_MT_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_A_15_00"); //Du kannst dich auch anders entscheiden. Du musst das nicht tun.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_A_18_01"); //Tut mir Leid ... m�ssen meine Pflicht tun.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_A_18_02"); //Werden f�r deine Seele beten.

	Info_ClearChoices	(Info_Mod_Bollok_MT_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};