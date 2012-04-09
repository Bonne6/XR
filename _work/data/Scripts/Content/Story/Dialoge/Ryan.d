INSTANCE Info_Mod_Ryan_Hi (C_INFO)
{
	npc		= Mod_1942_Ryan_NW;
	nr		= 1;
	condition	= Info_Mod_Ryan_Hi_Condition;
	information	= Info_Mod_Ryan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ryan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ryan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ryan_Hi_02_00"); //(gefasst) Ich habe gesehen, dass du kommen w�rdest.
	AI_Output(hero, self, "Info_Mod_Ryan_Hi_15_01"); //Du hast dein Spielchen �bertrieben. Die D�monenbeschw�rer sind m�chtig sauer auf dich.
	AI_Output(self, hero, "Info_Mod_Ryan_Hi_02_02"); //Auch das habe ich vorhergesehen. Und doch sp�re ich die Kraft der G�tter in mir. Ich wei�, dass ich gegen dich nicht verlieren kann.
	AI_Output(hero, self, "Info_Mod_Ryan_Hi_15_03"); //Wenn du dich da mal nicht t�uscht.
	AI_Output(self, hero, "Info_Mod_Ryan_Hi_02_04"); //(ruhig) Zuerst werde ich dich vernichten, und dann wird meine Anh�ngerschaft ins Endlose wachsen!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);
};