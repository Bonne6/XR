INSTANCE Info_Mod_Wolf_Rotkaeppchen_Hi (C_INFO)
{
	npc		= Wolf_Rotkaeppchen;
	nr		= 1;
	condition	= Info_Mod_Wolf_Rotkaeppchen_Hi_Condition;
	information	= Info_Mod_Wolf_Rotkaeppchen_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mich verstehen?";
};

FUNC INT Info_Mod_Wolf_Rotkaeppchen_Hi_Condition()
{
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_TIER] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Rotkaeppchen_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_00"); //Kannst du mich verstehen?
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_01"); //Sehe ich etwa schwerh�rig aus?
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_02"); //�h, nein. H�r mal, das M�dchen dort hinten f�hlt sich von dir bel�stigt.
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_03"); //Kein Wunder. Ich verfolge es so lange, bis ihm die Kr�fte ausgehen und ich meine Z�hne in sein junges Fleisch graben kann.
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_04"); //Das klingt aber gemein!
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_05"); //(nachdenklich) Ich wei� nicht, was "gemein" bedeutet. Aber es muss eine �hnliche Bedeutung wie "wohlschmeckend" haben.
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_Hi_15_06"); //Wie w�r's, wenn ich dir einen Ersatz f�r das M�dchenfleisch anbiete?
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_07"); //Es geht mir nicht nur um das Fressen. Ich will meinen Jagdinstinkt ausleben und mich wohl in meinem K�rper f�hlen.
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_Hi_18_08"); //Was also k�nntest du mir als Ersatz anbieten?
};

INSTANCE Info_Mod_Wolf_Rotkaeppchen_NimmMich (C_INFO)
{
	npc		= Wolf_Rotkaeppchen;
	nr		= 1;
	condition	= Info_Mod_Wolf_Rotkaeppchen_NimmMich_Condition;
	information	= Info_Mod_Wolf_Rotkaeppchen_NimmMich_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nimm doch mich!";
};

FUNC INT Info_Mod_Wolf_Rotkaeppchen_NimmMich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Rotkaeppchen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Rotkaeppchen_NimmMich_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_NimmMich_15_00"); //Nimm doch mich!
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_NimmMich_18_01"); //Du versprichst eine gute Herausforderung zu sein.
	AI_Output(self, hero, "Info_Mod_Wolf_Rotkaeppchen_NimmMich_18_02"); //Ich werde also zuerst dich fressen, und dann vielleicht das M�dchen verschonen.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wolf_Rotkaeppchen_NimmSie (C_INFO)
{
	npc		= Wolf_Rotkaeppchen;
	nr		= 1;
	condition	= Info_Mod_Wolf_Rotkaeppchen_NimmSie_Condition;
	information	= Info_Mod_Wolf_Rotkaeppchen_NimmSie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Vergiss es. Guten Hunger.";
};

FUNC INT Info_Mod_Wolf_Rotkaeppchen_NimmSie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Rotkaeppchen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Rotkaeppchen_NimmSie_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Rotkaeppchen_NimmSie_15_00"); //Vergiss es. Guten Hunger.

	B_KillNpc	(Mod_7556_OUT_Rotkaeppchen_REL);

	AI_GotoNpc	(self, Mod_7556_OUT_Rotkaeppchen_REL);

	AI_StopProcessInfos	(self);

	B_G�ttergefallen(3, 1);
};