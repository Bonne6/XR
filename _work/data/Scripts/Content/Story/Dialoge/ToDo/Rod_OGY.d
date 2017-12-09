INSTANCE Info_Mod_Rod_OGY_Hi (C_INFO)
{
	npc		= Mod_7533_SLD_Rod_OGY;
	nr		= 1;
	condition	= Info_Mod_Rod_OGY_Hi_Condition;
	information	= Info_Mod_Rod_OGY_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rod_OGY_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rod_OGY_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_00"); //Verdammt, endlich Verst�rkung.
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_01"); //Was ist geschehen.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_02"); //Was gibt es da noch zu fragen! Wir wurden von den untoten Bastarden eiskalt in einen Hinterhalt gelockt. Pl�tzlich Untote von allen Seiten.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_03"); //Wir haben uns hier verschanzt, um auf Verst�rkung zu warten.
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_04"); //Ja, da bin ich.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_05"); //Und die anderen? Du bist ja wohl nicht der einzige ...
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_06"); //Nun, �hh ... doch.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_07"); //Was?! Na, fantastisch ... Ne, man, ehe du nicht die beiden Jungs von drau�en noch zur Unterst�tzung hereingeholt hast mach ich bestimmt keinen Schritt mehr.
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_08"); //Nun, wenn es denn nicht anders geht ...
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_09"); //Na dann beeil dich. Wir halten hier so lange die Stellung.

	B_LogEntry	(TOPIC_MOD_SLD_FRIEDHOF, "Die �berlebenden im Orkfriedhof haben mich darum gebeten, die Orkj�ger vor dem Eingang zur Unterst�tzung heranzuziehen.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Rod_OGY_GetZombie (C_INFO)
{
	npc		= Mod_7533_SLD_Rod_OGY;
	nr		= 1;
	condition	= Info_Mod_Rod_OGY_GetZombie_Condition;
	information	= Info_Mod_Rod_OGY_GetZombie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tja, sieht schlecht aus, was die Unterst�tzung betrifft.";
};

FUNC INT Info_Mod_Rod_OGY_GetZombie_Condition()
{
	if (Mod_NL_ZombieVerwandlung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rod_OGY_GetZombie_Info()
{
	AI_Output(hero, self, "Info_Mod_Rod_OGY_GetZombie_15_00"); //Tja, sieht schlecht aus, was die Unterst�tzung betrifft.

	AI_StopProcessInfos	(self);
};