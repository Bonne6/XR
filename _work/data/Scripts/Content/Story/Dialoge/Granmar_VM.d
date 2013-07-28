INSTANCE Info_Mod_Granmar_VM_Hi (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_Hi_Condition;
	information	= Info_Mod_Granmar_VM_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Granmar_VM_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Hi_26_00"); //Ah, da bist du ja. Ich w�rde sagen, wir sichern erst einmal das n�chste Lager und den See dort unten. Folge mir!

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOSEE");
};

INSTANCE Info_Mod_Granmar_VM_AtSee (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_AtSee_Condition;
	information	= Info_Mod_Granmar_VM_AtSee_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_AtSee_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_Hi))
	&& (Npc_GetDistToWP(hero, "MINE_GO_17") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_AtSee_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtSee_26_00"); //Ich muss sagen, die Keulen erf�llen ihren Zweck. Ohne sie w�ren wir aufgeschmissen.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtSee_26_01"); //Gut, dann gehen wir jetzt tiefer in die Mine, mal sehen, was dort unten noch so lauert.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETONAGER");
};

INSTANCE Info_Mod_Granmar_VM_AtNager (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_AtNager_Condition;
	information	= Info_Mod_Granmar_VM_AtNager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_AtNager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_AtSee))
	&& (Npc_GetDistToWP(self, "MINE_GO_51") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_AtNager_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_00"); //Verdammt, was sind das denn schon wieder f�r Viecher?!
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_01"); //Na gut - ich w�rde sagen, wir sichern jetzt erst mal den Teil der Mine, den wir frei gemacht haben.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_02"); //Ich gehe zur�ck zum Eingang und lass dort Erz sch�rfen, du �bernimmst die Wache hier.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_AtNager_26_03"); //Und geh noch nicht tiefer in die Mine, ich brauch dich hier als Wachposten.

	self.aivar[AIV_Partymember] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Wld_InsertNpc	(Mod_7626_OUT_Glenn_VM,	"MINE_GO_52");
	Wld_InsertNpc	(Mod_7627_BUD_Costa_VM,	"MINE_GO_52");
	Wld_InsertNpc	(Mod_7628_BUD_Sterling_VM,	"MINE_GO_52");
};

INSTANCE Info_Mod_Granmar_VM_SpecialErzguardian (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_SpecialErzguardian_Condition;
	information	= Info_Mod_Granmar_VM_SpecialErzguardian_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_SpecialErzguardian_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_AtNager))
	&& (Mod_KG_SpecialErzguardian == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_SpecialErzguardian_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_SpecialErzguardian_26_00"); //Gut, dass du kommst. Wir haben die 50 Erzbrocken zusammen. Hymir will, dass du sie Lord Andre �berbringst.

	B_GiveInvItems	(self, hero, ItMi_ErzPaketAndre, 1);

	AI_Output(self, hero, "Info_Mod_Granmar_VM_SpecialErzguardian_26_01"); //Ich halte so lange die Stellung, bis du mit den Paladinen zur�ck bist.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WACHE");

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Granmar hat mir die ersten 50 Erzbrocken f�r Lord Andre gegeben. Ich soll sie �berbringen und gleich die Paladine mitbringen.");
};

INSTANCE Info_Mod_Granmar_VM_Trent (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_Trent_Condition;
	information	= Info_Mod_Granmar_VM_Trent_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_Trent_Condition()
{
	if (Mod_KG_TrentInMine == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_Trent_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent_26_00"); //Ich h�tte es wissen m�ssen. Wenn beim n�chsten mal ein Paladin meint, er schickt uns Verst�rkung, mache ich mir keine Hoffnungen.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent_26_01"); //Wer wei�, wie viele Monster uns dort unten auflauern, und sie schicken uns nur einen Mann.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent_26_02"); //Na ja, zumindest scheint der Kerl in Ordnung zu sein. Am besten begleitest du ihn. Ich glaube, er wollte demn�chst aufbrechen.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Granmar ist etwas ver�rgert, dass Lord Andre nur einen Paladin geschickt hat. Ich sollte Trent lieber begleiten ...");
};

INSTANCE Info_Mod_Granmar_VM_Trent2 (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_Trent2_Condition;
	information	= Info_Mod_Granmar_VM_Trent2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_VM_Trent2_Condition()
{
	if (Mod_KG_SchwarzesErz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_VM_Trent2_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent2_26_00"); //Was war los? Habt ihr es geschafft? Ist die Mine sauber?
	AI_Output(hero, self, "Info_Mod_Granmar_VM_Trent2_15_01"); //So weit schon. Wenn ihr nicht zu gierig grabt und noch mehr Monster freilegt, wird die Mine einiges abwerfen.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent2_26_02"); //Sch�n zu h�ren. Gab es Probleme?
	AI_Output(hero, self, "Info_Mod_Granmar_VM_Trent2_15_03"); //Nichts, was man nicht in den Griff bekommen konnte.
	AI_Output(self, hero, "Info_Mod_Granmar_VM_Trent2_26_04"); //Gut. Hymir will dir bestimmt zu deinem Erfolg gratulieren. Wir sehen uns sp�ter.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Granmar ist zufrieden mit unserer Leistung. Ich sollte mal bei Hymir vorbeisehen.");
};

INSTANCE Info_Mod_Granmar_VM_EXIT (C_INFO)
{
	npc		= Mod_7625_KGD_Granmar_VM;
	nr		= 1;
	condition	= Info_Mod_Granmar_VM_EXIT_Condition;
	information	= Info_Mod_Granmar_VM_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Granmar_VM_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Granmar_VM_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};