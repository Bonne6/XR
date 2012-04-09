FUNC VOID Info_Mod_BauerLobart_VinoBrennerei()
{
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei_15_00"); //Ich habe geh�rt, dass Vino seit einiger Zeit verschwunden ist. Wei�t du etwas dar�ber?
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_14_01"); //(unsicher) �hh, nun, ich wei� ja nicht ... (zu sich selbst) aber wenn ihm nun doch was zugesto�en ist ...
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei_15_02"); //Spuck�s schon aus. Vielleicht kann ich ja helfen.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_14_03"); //(z�gerlich) Nun gut ... Vino hat im gro�en Wald eine Brennerei eingerichtet ... in der N�he von einem Steinkreis glaube ich.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_14_04"); //Er geht dort ab und zu mal hin, um sich anschlie�end in der Stadt mit dem Selbstgebrannten ein paar M�nzen hinzu zu verdienen ... oder bringt uns Landarbeitern auch mal was mit f�r den Feierabend.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei_14_05"); //So jetzt wei�t du es. Erz�hl es aber bitte niemandem weiter.

	B_LogEntry	(TOPIC_MOD_VINO_WO, "Wie ich von einem anderen Landarbeiter erfuhr, hat sich Vino im gro�en Wald eine Brennerei eingerichtet, in der N�he eines Steinkreises.");
};

FUNC VOID Info_Mod_BauerLobart_VinoBrennerei2()
{
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei2_15_00"); //Und warum habt ihr niemandem davon berichtet? Er k�nnte in gro�en Schwierigkeiten sein ...
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei2_14_01"); //Ja, ich wei�. Aber wem h�tten wir davon erz�hlen sollen?
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei2_14_02"); //Lobart w�rde ihm die H�lle hei� machen, wenn er das mitbek�me ... und Mika, der alles vor der Stadt im Auge beh�lt, ist nicht gerade zimperlich, wenn es um Rauschmittel geht.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei2_14_03"); //Vino k�nnte daf�r geradewegs in den Knast wandern ...
};

FUNC VOID Info_Mod_BauerLobart_VinoBrennerei3()
{
	AI_Output(hero, self, "Info_Mod_BauerLobart_VinoBrennerei3_15_00"); //Ein Bauer ganz alleine durch den monsterverseuchten Wald?! Das ist Irrsinn ...
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei3_14_01"); //Achja, stimmt, das hatte ich noch nicht erw�hnt.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei3_14_02"); //Er berichtete mal, hinter Jack�s Leuchtturm eine seltsame Plattform gefunden zu haben.
	AI_Output(self, hero, "Info_Mod_BauerLobart_VinoBrennerei3_14_03"); //Die bringt ihn angeblich direkt in diese abgelegene H�hle, vorbei an allen Monstern.
};

INSTANCE Info_Mod_BauerLobart_01_VinoBrennerei (C_INFO)
{
	npc		= Mod_1414_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_01_VinoBrennerei_Condition;
	information	= Info_Mod_BauerLobart_01_VinoBrennerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe geh�rt, dass Vino seit einiger Zeit verschwunden ist.";
};

FUNC INT Info_Mod_BauerLobart_01_VinoBrennerei_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_01_VinoBrennerei_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_02_VinoBrennerei (C_INFO)
{
	npc		= Mod_1415_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_02_VinoBrennerei_Condition;
	information	= Info_Mod_BauerLobart_02_VinoBrennerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe geh�rt, dass Vino seit einiger Zeit verschwunden ist.";
};

FUNC INT Info_Mod_BauerLobart_02_VinoBrennerei_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_02_VinoBrennerei_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_01_VinoBrennerei2 (C_INFO)
{
	npc		= Mod_1414_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_01_VinoBrennerei2_Condition;
	information	= Info_Mod_BauerLobart_01_VinoBrennerei2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Und warum habt ihr niemandem davon berichtet?";
};

FUNC INT Info_Mod_BauerLobart_01_VinoBrennerei2_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_01_VinoBrennerei2_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei2();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_02_VinoBrennerei2 (C_INFO)
{
	npc		= Mod_1415_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_02_VinoBrennerei2_Condition;
	information	= Info_Mod_BauerLobart_02_VinoBrennerei2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Und warum habt ihr niemandem davon berichtet?";
};

FUNC INT Info_Mod_BauerLobart_02_VinoBrennerei2_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_02_VinoBrennerei2_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei2();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_01_VinoBrennerei3 (C_INFO)
{
	npc		= Mod_1414_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_01_VinoBrennerei3_Condition;
	information	= Info_Mod_BauerLobart_01_VinoBrennerei3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ein Bauer ganz alleine durch den monsterverseuchten Wald?!";
};

FUNC INT Info_Mod_BauerLobart_01_VinoBrennerei3_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_01_VinoBrennerei3_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei3();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_BauerLobart_02_VinoBrennerei3 (C_INFO)
{
	npc		= Mod_1415_BAU_Bauer_NW;
	nr		= 1;
	condition	= Info_Mod_BauerLobart_02_VinoBrennerei3_Condition;
	information	= Info_Mod_BauerLobart_02_VinoBrennerei3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ein Bauer ganz alleine durch den monsterverseuchten Wald?!";
};

FUNC INT Info_Mod_BauerLobart_02_VinoBrennerei3_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BauerLobart_02_VinoBrennerei3_Info()
{
	Info_Mod_BauerLobart_VinoBrennerei3();

	AI_StopProcessInfos	(self);
};