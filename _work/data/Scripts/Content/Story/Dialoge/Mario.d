INSTANCE Info_Mod_Mario_Hi (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hi_Condition;
	information	= Info_Mod_Mario_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was machst du hier so allein?";
};

FUNC INT Info_Mod_Mario_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mario_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hi_15_00"); //Was machst du hier so allein?
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_01"); //Ich st�rze ein Bier nach dem anderen hinunter. Hilft tats�chlich gegen Frust.
	AI_Output(hero, self, "Info_Mod_Mario_Hi_15_02"); //Welcher Frust?
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_03"); //Den ewigen Milizen nennen sie mich. Seit Jahren versuche ich, ein Paladin zu werden, aber oben an der Befehlskette habe ich keine Freunde, sondern eher Feinde.
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_04"); //Deshalb werde ich blo� von einer Aufgabe, in der ich mich beweisen soll, zur n�chsten geschickt.
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_05"); //Zweiundzwanzig habe ich bisher absolviert. Manche schaffen es ganz ohne Aufnahmepr�fung.
	AI_Output(self, hero, "Info_Mod_Mario_Hi_07_06"); //Und jetzt haben sie mir eine Aufgabe gestellt, die ich nicht l�sen kann.
};

INSTANCE Info_Mod_Mario_WarumFeinde (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_WarumFeinde_Condition;
	information	= Info_Mod_Mario_WarumFeinde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Warum hast du Feinde unter den Paladinen?";
};

FUNC INT Info_Mod_Mario_WarumFeinde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_WarumFeinde_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_WarumFeinde_15_00"); //Warum hast du Feinde unter den Paladinen?
	AI_Output(self, hero, "Info_Mod_Mario_WarumFeinde_07_01"); //Ich habe nie einen Hehl daraus gemacht, dass ich schwul bin.
	AI_Output(self, hero, "Info_Mod_Mario_WarumFeinde_07_02"); //Da h�rt dann die N�chstenliebe bei den Paladinen auf. Die nettesten gucken mich nur komisch an.
	AI_Output(self, hero, "Info_Mod_Mario_WarumFeinde_07_03"); //�Ein schwuler Paladin? Da muss doch Innos selbst Einhalt gebieten!�
};

INSTANCE Info_Mod_Mario_Aufgabe (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Aufgabe_Condition;
	information	= Info_Mod_Mario_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was ist das f�r eine unl�sbare Aufgabe?";
};

FUNC INT Info_Mod_Mario_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Aufgabe_15_00"); //Was ist das f�r eine unl�sbare Aufgabe?
	AI_Output(self, hero, "Info_Mod_Mario_Aufgabe_07_01"); //In dem gro�en Wald vor der Stadt sollen sich zwei Drachensnapper aufhalten.
	AI_Output(self, hero, "Info_Mod_Mario_Aufgabe_07_02"); //Anstatt einen Trupp loszuschicken, der sich um die Viecher k�mmert, wird der ganze Dreck mir aufgehalst.
	AI_Output(self, hero, "Info_Mod_Mario_Aufgabe_07_03"); //W�rde den Obersten wohl gut in den Kram passen, wenn ich dort Snapperfra� w�rde.
};

INSTANCE Info_Mod_Mario_Hilfe (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe_Condition;
	information	= Info_Mod_Mario_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich k�nnte dir bei den Drachensnappern helfen.";
};

FUNC INT Info_Mod_Mario_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe_15_00"); //Ich k�nnte dir bei den Drachensnappern helfen.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe_07_01"); //Du, ein schw�chlicher Str�fling?
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe_15_02"); //Snapper sind eine meiner Spezialit�ten.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe_07_03"); //Einen Versuch ist es wert. Selbst deine Begleitung wird mich im Ansehen der anderen nicht weiter sinken lassen.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe_07_04"); //Wollen wir sofort aufbrechen? Ich kenne den Weg.

	Log_CreateTopic	(TOPIC_MOD_MARIO_UPGRADE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Der Milizion�r Mario bekommt eine Pr�fung nach der anderen auferlegt. Jetzt steht er vor einem Problem: Gegen zwei Drachensnapper kann er nichts ausrichten. Ich habe ihm meine Hilfe angeboten.");
};

INSTANCE Info_Mod_Mario_Hilfe2 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe2_Condition;
	information	= Info_Mod_Mario_Hilfe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ja, los geht's.";
};

FUNC INT Info_Mod_Mario_Hilfe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe2_15_00"); //Ja, los geht's.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe2_07_01"); //Folge mir.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");

	Wld_InsertNpc	(Dragonsnapper_Mario_01,	"WP_MARIOTOUR_04");
	Wld_InsertNpc	(Dragonsnapper_Mario_02,	"WP_MARIOTOUR_04");
};

INSTANCE Info_Mod_Mario_Hilfe3 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe3_Condition;
	information	= Info_Mod_Mario_Hilfe3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe2))
	&& (Npc_IsDead(Dragonsnapper_Mario_01))
	&& (Npc_IsDead(Dragonsnapper_Mario_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe3_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_07_00"); //Das ist ja gerade noch mal gegl�ckt. Jedenfalls danke ich dir f�r deine Unterst�tzung.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_07_01"); //Ich werde Garond Bescheid sagen, dass ich auch diese Pr�fung bestanden habe.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_07_02"); //Und dann sehe ich weiter, was mich als n�chstes erwartet ...
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe3_15_03"); //Sag Bescheid, wenn du noch mal meine Hilfe brauchst.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe3_07_04"); //Ist ja nicht unwahrscheinlich. Aber danke f�r das Angebot.

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Wir haben die Drachensnapper erlegt. Damit hat Mario eine weitere Aufgabe f�r die Paladine abgeschlossen.");

	B_GivePlayerXP	(50);

	Mod_Mario_Day = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Mario_Hilfe4 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe4_Condition;
	information	= Info_Mod_Mario_Hilfe4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du wurdest immer noch nicht als Paladin zugelassen?";
};

FUNC INT Info_Mod_Mario_Hilfe4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe3))
	&& (Wld_GetDay()-3 >= Mod_Mario_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe4_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_15_00"); //Du wurdest immer noch nicht als Paladin zugelassen?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_07_01"); //So sieht's aus. Sie haben mich wieder mit einer neuen Aufgabe abgewiegelt, und diesmal bin ich wirklich ratlos.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_15_02"); //Worum geht's denn?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_07_03"); //Es geht um eine wahre Horde gut ausger�steter Goblins, die in den letzten Wochen immer wieder f�r Scharm�tzel gesorgt haben. Neben euch Verbrechern.

	Info_ClearChoices	(Info_Mod_Mario_Hilfe4);

	Info_AddChoice	(Info_Mod_Mario_Hilfe4, "Diesmal kannst du nicht auf meine Hilfe z�hlen.", Info_Mod_Mario_Hilfe4_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe4, "Schaffen wir's zu zweit?", Info_Mod_Mario_Hilfe4_A);
};

FUNC VOID Info_Mod_Mario_Hilfe4_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_B_15_00"); //Diesmal kannst du nicht auf meine Hilfe z�hlen.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_B_07_01"); //Ich hatte auch gar nicht darum gebeten.

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe4);
};

FUNC VOID Info_Mod_Mario_Hilfe4_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_00"); //Schaffen wir's zu zweit?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_A_07_01"); //Kaum. Wir br�uchten noch mindestens einen Mitstreiter. Einen ge�bten Fernk�mpfer.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_02"); //Ich k�nnte Diego fragen. Der hat gerade nichts zu tun. Und gut ist er auch.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_A_07_03"); //Diego? Ist das nicht auch ein ehemaliger H�ftling?
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_04"); //Ja. Ist das ein Problem f�r dich?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe4_A_07_05"); //(seufzt) Nein, bin ja froh, dass �berhaupt jemand auf meiner Seite steht. Frag ihn ruhig und bring ihn her.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe4_A_15_06"); //Bis sp�ter.

	Mod_Mario = 1;

	Info_ClearChoices	(Info_Mod_Mario_Hilfe4);

	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Mario hat eine neue Aufgabe - eine Gruppe starker Goblins, die f�r Unfrieden sorgen. Da die Unternehmung zu zweit ein Selbstmordkommando w�re, will ich Diego um Unterst�tzung bitten.");
};

INSTANCE Info_Mod_Mario_Hilfe5 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe5_Condition;
	information	= Info_Mod_Mario_Hilfe5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Diego ist dabei. Zeig uns die Goblins.";
};

FUNC INT Info_Mod_Mario_Hilfe5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Mario))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe5_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe5_15_00"); //Diego ist dabei. Zeig uns die Goblins.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe5_07_01"); //Alles klar. Sie sind gar nicht so weit entfernt.

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOGOBBOS");

	Wld_InsertNpc	(Gobbo_Green_Mario_01,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_02,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_03,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_04,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_05,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Green_Mario_06,	"NW_CITY_TO_FOREST_04_05");

	Wld_InsertNpc	(Gobbo_Black_Mario_01,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Black_Mario_02,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Black_Mario_03,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Black_Mario_04,	"NW_CITY_TO_FOREST_04_05");

	Wld_InsertNpc	(Gobbo_Warrior_Mario_01,	"NW_CITY_TO_FOREST_04_05");
	Wld_InsertNpc	(Gobbo_Warrior_Mario_02,	"NW_CITY_TO_FOREST_04_05");
};

INSTANCE Info_Mod_Mario_Hilfe6 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe6_Condition;
	information	= Info_Mod_Mario_Hilfe6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe5))
	&& (Npc_IsDead(Gobbo_Green_Mario_01))
	&& (Npc_IsDead(Gobbo_Green_Mario_02))
	&& (Npc_IsDead(Gobbo_Green_Mario_03))
	&& (Npc_IsDead(Gobbo_Green_Mario_04))
	&& (Npc_IsDead(Gobbo_Green_Mario_05))
	&& (Npc_IsDead(Gobbo_Green_Mario_06))
	&& (Npc_IsDead(Gobbo_Black_Mario_01))
	&& (Npc_IsDead(Gobbo_Black_Mario_02))
	&& (Npc_IsDead(Gobbo_Black_Mario_03))
	&& (Npc_IsDead(Gobbo_Black_Mario_04))
	&& (Npc_IsDead(Gobbo_Warrior_Mario_01))
	&& (Npc_IsDead(Gobbo_Warrior_Mario_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe6_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_07_00"); //Ein hartes St�ck Arbeit. Teile deine Belohnung mit Diego.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_07_01"); //Ich bin wirklich gespannt, ob sich Garond noch eine schwierigere Pr�fung ausdenken kann.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_07_02"); //Aber auch wenn es mit seiner Fantasie nicht gut bestellt ist, f�rchte ich, dass er das schafft.

	self.aivar[AIV_PARTYMEMBER] = FALSE;

	B_LogEntry	(TOPIC_MOD_MARIO_UPGRADE, "Mario hat nun auch seinen vierundzwanzigsten Auftrag erfolgreich ausgef�hrt. W�rde mich trotzdem wundern, wenn er jetzt bef�rdert werden w�rde.");

	B_GivePlayerXP	(200);

	Mod_Mario_Day = Wld_GetDay();

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Mario_Hilfe6);

	Info_AddChoice	(Info_Mod_Mario_Hilfe6, "Von nun an bist du allein. Mir reicht's.", Info_Mod_Mario_Hilfe6_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe6, "Mit mir kannst du rechnen.", Info_Mod_Mario_Hilfe6_A);
};

FUNC VOID Info_Mod_Mario_Hilfe6_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe6_B_15_00"); //Von nun an bist du allein. Mir reicht's.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_B_07_01"); //Schade, aber ich kann dich nicht zwingen.

	Mod_Mario = 0;

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe6);
};

FUNC VOID Info_Mod_Mario_Hilfe6_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe6_A_15_00"); //Mit mir kannst du rechnen.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe6_A_07_01"); //Ich danke dir.

	Info_ClearChoices	(Info_Mod_Mario_Hilfe6);
};

INSTANCE Info_Mod_Mario_Hilfe7 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe7_Condition;
	information	= Info_Mod_Mario_Hilfe7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Immer noch nicht Paladin?";
};

FUNC INT Info_Mod_Mario_Hilfe7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mario_Hilfe6))
	&& (Wld_GetDay()-5 >= Mod_Mario_Day)
	&& (Mod_Mario == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe7_Info()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_15_00"); //Immer noch nicht Paladin?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_07_01"); //Ich kann jetzt aufgenommen werden.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_15_02"); //Gl�ckwunsch! Freust du dich denn gar nicht?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_07_03"); //In den letzten Tagen haben mich die Zweifel eingeholt, ob es wirklich richtig f�r mich w�re, Paladin zu werden.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_07_04"); //Ich wei� jetzt, dass ich unter ihnen kaum Freunde finden w�rde. Andererseits war es mein Wunsch, seit ich ein kleiner Junge war.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_07_05"); //Was meinst du?

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Mario_Hilfe7);

	Info_AddChoice	(Info_Mod_Mario_Hilfe7, "Es erscheint mir auch kl�ger, sie nicht weiter zu reizen.", Info_Mod_Mario_Hilfe7_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe7, "Du kannst doch jetzt nach deinem Sieg �ber die Paladine nicht kapitulieren!", Info_Mod_Mario_Hilfe7_A);
};

FUNC VOID Info_Mod_Mario_Hilfe7_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_B_15_00"); //Es erscheint mir auch kl�ger, sie nicht weiter zu reizen.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_07_01"); //(erleichtert) Genau das habe ich auch gedacht.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_07_02"); //Wer wei�, welche Regeln dieser Verein sich ausdenken w�rde, um mich weiter schikanieren zu k�nnen!
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_07_03"); //Mit den anderen Milizion�ren verstehe ich mich gut. Da sollte ich lieber kein Risiko eingehen.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_B_07_04"); //Hab Dank f�r deinen Rat und deine Hilfe. Ohne dich w�re wahrscheinlich Coragons Bier mein bester Freund geworden ...

	B_GivePlayerXP	(50);

	Mod_Mario = 2;

	Mod_Mario_Day = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe7);
};

FUNC VOID Info_Mod_Mario_Hilfe7_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe7_A_15_00"); //Du kannst doch jetzt nach deinem Sieg �ber die Paladine nicht kapitulieren!
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_A_07_01"); //Ich denke, du hast Recht. Es w�rde so aussehen, als w�rde mich im letzten Augenblick mein ganzer Mumm verlassen.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_A_07_02"); //Also gut, ich werde mich nachher bei Garond melden.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe7_A_07_03"); //Und du, hab vielen Dank f�r deine tatkr�ftige Unterst�tzung. Ohne dich w�re wahrscheinlich Coragons Bier mein bester Freund geworden ...

	B_GivePlayerXP	(50);

	Mod_Mario = 3;

	Mod_Mario_Day = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_MARIO_UPGRADE, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Mario_Hilfe7);
};

INSTANCE Info_Mod_Mario_Hilfe8 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe8_Condition;
	information	= Info_Mod_Mario_Hilfe8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe8_Condition()
{
	if (Mod_Mario == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe8_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_07_00"); //(leise) Du musst mir noch mal helfen, bitte!

	Info_ClearChoices	(Info_Mod_Mario_Hilfe8);

	Info_AddChoice	(Info_Mod_Mario_Hilfe8, "Daf�r habe ich keine Zeit mehr.", Info_Mod_Mario_Hilfe8_B);
	Info_AddChoice	(Info_Mod_Mario_Hilfe8, "Was hast du diesmal?", Info_Mod_Mario_Hilfe8_A);
};

FUNC VOID Info_Mod_Mario_Hilfe8_B()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_B_15_00"); //Daf�r habe ich keine Zeit mehr.

	Info_ClearChoices	(Info_Mod_Mario_Hilfe8);
};

FUNC VOID Info_Mod_Mario_Hilfe8_A()
{
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_00"); //Was hast du diesmal?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_01"); //Vor einiger Zeit habe ich Wachdienst im Gef�ngnis gehabt.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_02"); //Dort habe ich jemanden kennen gelernt, der so ist wie ich. Ich habe mich in ihn verliebt.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_03"); //Lass mich raten: Du willst den Gefangenen befreien.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_04"); //Er hat mir erz�hlt, dass er dort wegen seiner Neigungen gelandet ist. Weil seine Nachbarn ihn loswerden wollten. Er ist kein Verbrecher.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_05"); //Wir haben vor, Khorinis zu verlassen. Dies ist ein Ort der Unterdr�ckung.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_06"); //Wir werden uns auf die Suche nach einem besseren Zuhause machen.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_07"); //Vom Gef�ngnis bis zu den Stadttoren stehen allerdings einige Wachen der Miliz, die uns sicher nicht so einfach gehe lassen w�rden.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_08"); //Und worin besteht meine Aufgabe?
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_09"); //W�hrend ich zum Gef�ngnis gehe, k�mmerst du dich um die beiden Torwachen beim Marktplatz. Lock sie einfach irgendwo hin.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_10"); //Schick auch Olav weg, er steht auf dem Weg von der Kaserne zum Stadttor.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_11"); //Um die Milizion�re im Gef�ngnis k�mmere ich mich selbst.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe8_A_15_12"); //Gut, ich fange gleich an.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe8_A_07_13"); //Ich gehe jetzt los. Bitte versag nicht!

	Mod_Mario = 9;

	Log_CreateTopic	(TOPIC_MOD_MARIO_FLUCHTHILFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MARIO_FLUCHTHILFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MARIO_FLUCHTHILFE, "Ich sollte so schnell wie m�glich Olav und die zwei Stadtwachen am Tor von ihrer Position weglocken, damit Mario und sein Freund fliehen k�nnen.");

	Info_ClearChoices	(Info_Mod_Mario_Hilfe8);

	B_StartOtherRoutine	(self, "KNAST");

	Wld_InsertNpc	(Mod_7648_VLK_Buerger_NW, "TOT");
};

INSTANCE Info_Mod_Mario_Hilfe9 (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Hilfe9_Condition;
	information	= Info_Mod_Mario_Hilfe9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mario_Hilfe9_Condition()
{
	if (Mod_Mario == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mario_Hilfe9_Info()
{
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_07_00"); //Ich stehe in deiner Schuld. Aber ich habe eine kleine Entsch�digung f�r dich.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_07_01"); //Diese Geschwindigkeitstr�nke h�tten wir benutzt, wenn du uns nicht geholfen h�ttest.
	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_07_02"); //Jetzt haben wir keine Verwendung mehr f�r sie.

	B_GiveInvItems	(self, hero, ItPo_Speed, 2);

	AI_Output(self, hero, "Info_Mod_Mario_Hilfe9_07_03"); //Nun m�ssen wir aber aufbrechen. Ich w�nsche dir alles Gute.
	AI_Output(hero, self, "Info_Mod_Mario_Hilfe9_15_04"); //Macht's gut.

	B_SetTopicStatus	(TOPIC_MOD_MARIO_FLUCHTHILFE, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Mario_Pickpocket (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_Pickpocket_Condition;
	information	= Info_Mod_Mario_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Mario_Pickpocket_Condition()
{
	C_Beklauen	(68, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Mario_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

	Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_BACK, Info_Mod_Mario_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mario_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mario_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mario_Pickpocket);
};

FUNC VOID Info_Mod_Mario_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

		Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mario_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mario_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mario_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mario_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mario_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mario_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mario_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mario_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mario_EXIT (C_INFO)
{
	npc		= Mod_595_MIL_Mario_NW;
	nr		= 1;
	condition	= Info_Mod_Mario_EXIT_Condition;
	information	= Info_Mod_Mario_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mario_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mario_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};