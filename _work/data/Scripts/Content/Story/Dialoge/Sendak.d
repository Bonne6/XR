INSTANCE Info_Mod_Sendak_Hi (C_INFO)
{
	npc		= Mod_7753_BDT_Sendak_EIS;
	nr		= 1;
	condition	= Info_Mod_Sendak_Hi_Condition;
	information	= Info_Mod_Sendak_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sendak_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sendak_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Sendak_Hi_03_00"); //Da bist du ja. Du hast noch etwas, was uns geh�rt.
	AI_Output(self, hero, "Info_Mod_Sendak_Hi_03_01"); //Gib mir das Gold, das du Aslan abgenommen hast, und ich werde den Orks sagen, dass sie dich schnell t�ten sollen.
	AI_Output(hero, self, "Info_Mod_Sendak_Hi_15_02"); //Das Gold hab ich leider schon f�r Hochprozentiges ausgegeben, aber wenn du bei mir noch etwas findest, geh�rt es dir.
	AI_Output(self, hero, "Info_Mod_Sendak_Hi_03_03"); //Wie du willst. Suppe aus menschlichen Ged�rmen essen diese Untoten am liebsten.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Wld_InsertNpc	(UndeadOrcWarrior, "EIS_327");
	Wld_InsertNpc	(UndeadOrcWarrior, "EIS_327");
};