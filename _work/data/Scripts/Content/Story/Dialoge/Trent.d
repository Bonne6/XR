INSTANCE Info_Mod_Trent_Hi (C_INFO)
{
	npc		= Mod_7629_RIT_Trent_NW;
	nr		= 1;
	condition	= Info_Mod_Trent_Hi_Condition;
	information	= Info_Mod_Trent_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_00"); //Ah, sehr gut, ein helfendes Schwert kommt mir gerade gelegen.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_01"); //Mein Name ist Trent, Ritter des gro�en K�nigs Rhobar und selbst gek�rter Abenteuer. Auf zweiteres kann man wenigstens Stolz sein.
	AI_Output(hero, self, "Info_Mod_Trent_Hi_15_02"); //Klingt so, als w�rest du nicht unbedingt ein Ritter aus Leidenschaft.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_03"); //Tja, da hast du wohl Recht. Sonderlich viel Leidenschaft hat wohl keiner, wenn er den ganzen Tag Tore bewachen darf oder beim Krieg in die erste Reihe gestellt wird.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_04"); //Allein die Tatsache, dass im Hafen eine ganze Armee Paladine nichts tut, w�hrend die Bauern auf ihren H�fen von Feldr�ubern zerrissen werden, zeigt doch, dass hier was nicht passt.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_05"); //Nein, noch einen Ritter, der dort unn�tig rumsteht, braucht diese Insel wirklich nicht.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_06"); //Meine Leidenschaft geh�rt dem Erkunden neuer L�nder.
	AI_Output(hero, self, "Info_Mod_Trent_Hi_15_07"); //Irgendwie geht es mir ziehlich �hnlich.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_08"); //Wenn du willst, kannst du mir helfen dem Schattenl�ufer dort vorne den garaus zu machen.
	AI_Output(hero, self, "Info_Mod_Trent_Hi_15_09"); //Klar, warum nicht.
	AI_Output(self, hero, "Info_Mod_Trent_Hi_06_10"); //Wunderbar!

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SHADOWBEAST");
};

INSTANCE Info_Mod_Trent_Shadowbeast (C_INFO)
{
	npc		= Mod_7629_RIT_Trent_NW;
	nr		= 1;
	condition	= Info_Mod_Trent_Shadowbeast_Condition;
	information	= Info_Mod_Trent_Shadowbeast_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Trent_Shadowbeast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trent_Hi))
	&& (Npc_IsDead(Shadowbeast_Trent))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trent_Shadowbeast_Info()
{
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_00"); //So, das w�r's ... nur aus Neugier: was hast du eigentlich hier gesucht?
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_01"); //Ich sollte dich von Kommandant Andre aufsuchen. Du sollst mir bei einem kleinen Problem in einer Mine helfen.
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_02"); //Was ist denn mit der Mine?
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_03"); //Wir haben ein kleines Problem mit den Monstern dort und zu wenig M�nner.
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_04"); //In Ordnung, du hast mir geholfen, dann helf ich auch dir. Was f�r eine Mine ist es denn?
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_05"); //Die am Eingang zum Minental. Wei�t du �berhaupt, wo das ist?
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_06"); //Nat�rlich, ich kenne die Insel wie meine Westentasche.
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_07"); //Ich dachte, du warst noch nie hier?
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_08"); //Die �berfahrten zwischen den Inseln sind teilweise so langweilig, da studiere ich meistens die Karten der Inseln.
	AI_Output(hero, self, "Info_Mod_Trent_Shadowbeast_15_09"); //Na dann, Kommandant Andre wollte dich allerdings vorher noch sehen. Er wollte ... (wird unterbrochen)
	AI_Output(self, hero, "Info_Mod_Trent_Shadowbeast_06_10"); //Das kann warten. Diese Kommandanten reden meistens sowieso nur um den hei�en Brei rum. Wir sehen uns dann in der Mine.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Trent ist vorausgeeilt und wird in der Mine auf mich warten.");

	self.aivar[AIV_Partymember] = FALSE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Trent_EXIT (C_INFO)
{
	npc		= Mod_7629_RIT_Trent_NW;
	nr		= 1;
	condition	= Info_Mod_Trent_EXIT_Condition;
	information	= Info_Mod_Trent_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trent_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trent_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};