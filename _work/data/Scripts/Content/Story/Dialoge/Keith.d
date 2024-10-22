INSTANCE Info_Mod_Keith_Hi (C_INFO)
{
	npc		= Mod_7568_OUT_Keith_EIS;
	nr		= 1;
	condition	= Info_Mod_Keith_Hi_Condition;
	information	= Info_Mod_Keith_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Keith_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_Hi))
	&& (Npc_IsDead(Mod_7570_OUT_Bandit_EIS))
	&& (Npc_IsDead(Mod_7571_OUT_Bandit_EIS))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Keith_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_00"); //(�ngstlich) Bitte t�te mich nicht. Ich bin nur ein armer J�ger, ich habe weder Gold, noch sonst etwas von Wert.
	AI_Output(hero, self, "Info_Mod_Keith_Hi_15_01"); //Keine Sorge, ich bin kein Bandit, und die zwei vor deiner H�tte sind erledigt.
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_02"); //Puh ...! Da hab ich ja noch mal Gl�ck gehabt.
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_03"); //Als die Kerle in mein Haus einbrechen wollten habe ich es gerade noch so geschafft, die T�r zu verschlie�en, aber wer wei�, wie lange die sie aufgehalten h�tte.
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_04"); //Auf jeden Fall danke ich dir. Ich habe nicht viel, aber nimm diese Felle als Belohnung.

	B_GiveInvItems	(self, hero, ItAt_ShadowFur, 2);

	AI_Output(hero, self, "Info_Mod_Keith_Hi_15_05"); //Dein Freund Randi hatte aber nicht so viel Gl�ck. sie haben ihn vor deiner H�tte erschlagen.
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_06"); //Diese verdammten Banditen nisten sich einfach in unserem Land ein. Ich w�nschte der alte Turm w�rde sie unter sich begraben.
	AI_Output(hero, self, "Info_Mod_Keith_Hi_15_07"); //Alter Turm?! Dieser Turm befindet sich aber nicht zuf�llig am Eissee, oder?
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_08"); //Doch. Woher wei�t du von dem Turm?
	AI_Output(hero, self, "Info_Mod_Keith_Hi_15_09"); //Ich habe vom J�ger Luis erfahren, dass Randi diesen Turm als Nachtlager f�r die Jagd nutzen wollte und er dich deshalb aufsuchen wollte.
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_10"); //Welch eine Ironie des Schicksals. H�tte er es bis zu mir geschaft, h�tte ich ihm von den Banditen dort erz�hlen k�nnen.
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_11"); //Aber was ist mit dir? Was hast du mit dem Turm zu schaffen?
	AI_Output(hero, self, "Info_Mod_Keith_Hi_15_12"); //Eigentlich wollte ich Randi und dir dabei helfen, den Turm zu nutzen, und wenn wir damit die Banditen von hier vertreiben k�nnten, w�rden wir doch zwei Fliegen mit einer Klatsche schlagen.
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_13"); //Wenn du uns bei dem Problem mit den Banditen helfen w�rdest, w�ren dir warscheinlich alle zum Dank verpflichtet.
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_14"); //Ganz davon abgesehen, dass wir den Turm dann wieder nutzen k�nnten.
	AI_Output(hero, self, "Info_Mod_Keith_Hi_15_15"); //Wenn du mir zeigen w�rdest, wo der alte Turm ist, k�nnte ich mir ein Bild von der Situation machen.
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_16"); //Ok, ich zeig dir den Weg. Allerdings werde ich dich nicht im Kampf unterst�tzen k�nnen. Ich bin alt geworden und will nicht fr�her sterben, als ich sowieso schon muss.
	AI_Output(hero, self, "Info_Mod_Keith_Hi_15_17"); //Bring mich zum Turm, den Rest erledige ich!
	AI_Output(self, hero, "Info_Mod_Keith_Hi_08_18"); //In Ordnung, komm mit!

	B_LogEntry	(TOPIC_MOD_EIS_ALTERTURM, "Randi wurde von Banditen erschlagen. Ihr Lager befindet sich laut Keith beim alten Turm, zu dem Randi wollte. Er wird mich dorthin bringen, dann kann ich mich ihrer annehmen.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "EISSEE");
};

INSTANCE Info_Mod_Keith_AtEissee (C_INFO)
{
	npc		= Mod_7568_OUT_Keith_EIS;
	nr		= 1;
	condition	= Info_Mod_Keith_AtEissee_Condition;
	information	= Info_Mod_Keith_AtEissee_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Keith_AtEissee_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Keith_Hi))
	&& (Npc_GetDistToWP(self, "EIS_358") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Keith_AtEissee_Info()
{
	AI_Output(self, hero, "Info_Mod_Keith_AtEissee_08_00"); //So, wir sind da. Ich nehme an, dass der Anf�hrer dieser Bande sich im Turm aufh�lt.
	AI_Output(self, hero, "Info_Mod_Keith_AtEissee_08_01"); //Ich hab vor ein paar Jahren, als der Turm noch verlassen war, einen Schl�ssel dort gefunden.
	AI_Output(self, hero, "Info_Mod_Keith_AtEissee_08_02"); //Falls der Turm verschlossen ist, kommst du damit bestimmt rein. Viel Gl�ck, Junge!

	B_GiveInvItems	(self, hero, ItKe_Eisturm01, 1);

	B_LogEntry	(TOPIC_MOD_EIS_ALTERTURM, "Keith hat mich zum alten Turm gebracht und mir den Schl�ssel daf�r gegeben. Mal sehen, was mich dort erwartet ...");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Keith_Dalma (C_INFO)
{
	npc		= Mod_7568_OUT_Keith_EIS;
	nr		= 1;
	condition	= Info_Mod_Keith_Dalma_Condition;
	information	= Info_Mod_Keith_Dalma_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Banditen sind vertrieben.";
};

FUNC INT Info_Mod_Keith_Dalma_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vigonza_Dalma))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Keith_Dalma_Info()
{
	AI_Output(hero, self, "Info_Mod_Keith_Dalma_15_00"); //Die Banditen sind vertrieben.
	AI_Output(self, hero, "Info_Mod_Keith_Dalma_08_01"); //Sehr sch�n, hier hast du 100 Goldm�nzen als Belohnung.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Keith_Dalma_08_02"); //Du solltest auch noch mal zu Luis gehen und ihm von Randis tot berichten. Warscheinlich wird es ihn auch interessieren, dass der Turm jetzt sicher ist.

	B_LogEntry	(TOPIC_MOD_EIS_ALTERTURM, "Der Eisturm ist gesichert. Jetzt sollte ich zu Luis zur�ckkehren.");

	B_SetTopicStatus	(TOPIC_MOD_EIS_ALTERTURM, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	CurrentNQ += 1;

	B_RemoveNpc	(Mod_7572_OUT_Vigonza_EIS);

	B_StartOtherRoutine	(Mod_7566_OUT_Pilar_EIS, "FRIEDHOF");
};

INSTANCE Info_Mod_Keith_EXIT (C_INFO)
{
	npc		= Mod_7568_OUT_Keith_EIS;
	nr		= 1;
	condition	= Info_Mod_Keith_EXIT_Condition;
	information	= Info_Mod_Keith_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Keith_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Keith_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};