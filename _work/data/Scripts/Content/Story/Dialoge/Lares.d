INSTANCE Info_Mod_Lares_Hi (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Hi_Condition;
	information	= Info_Mod_Lares_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lares_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Hi_37_00"); //Du lebst noch?
	AI_Output(hero, self, "Info_Mod_Lares_Hi_15_01"); //Lange Geschichte.
	AI_Output(self, hero, "Info_Mod_Lares_Hi_37_02"); //Was machst du jetzt?
};

INSTANCE Info_Mod_Lares_Daemonisch (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Daemonisch_Condition;
	information	= Info_Mod_Lares_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_00"); //Na, was treibt dich hier so rum?
	AI_Output(hero, self, "Info_Mod_Lares_Daemonisch_15_01"); //Ach, ich wollte mich nur mal etwas umsehen ...
	AI_Output(hero, self, "Info_Mod_Lares_Daemonisch_15_02"); //Ist irgendetwas Besonderes bei euch auf dem Hof passiert in letzter Zeit?
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_03"); //Ja, da war schon was. Pepe hatte nachts dunkle Schatten im Wald gesehen, vermutlich von W�lfen.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_04"); //Ich habe dann einige Jungs mit ihm zu dem kleinen Lager dort geschickt, um sich die Nacht �ber umzusehen.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_05"); //Pepe kam am fr�hen Morgen panisch angelaufen und blickte sich nach allen Richtungen verst�rt um.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_06"); //Als dann meine Jungs ebenfalls wieder aus dem Wald kamen, lief er schreiend in Richtung Bergfestung davon.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_07"); //Die Jungs meinten, dass ein gro�es Rudel W�lfe sie �berfallen h�tte und Pepe daraufhin weggelaufen sei.
	AI_Output(self, hero, "Info_Mod_Lares_Daemonisch_37_08"); //Leider ist durch die Mistviecher auch einer meiner S�ldner draufgegangen. Na ja, das kommt schon alles wieder ins Lot.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Von Lares habe ich erfahren, dass Pepe dunkle Schatten im Wald gesehen hat, welche wohl von W�lfen herger�hrt haben. Einige S�ldner hatten sich daher mit Pepe zum kleinen Lager im Wald begeben. Pepe kam am fr�hen Morgen panisch angerannt und verschwand Richtung Bergfestung, als er hinter sich die S�ldner aus dem Wald kommen sah. Angeblich hatte ein gro�es Rudel W�lfe sie �berfallen, woraufhin Pepe in Panik verfiel. Ein S�ldner kam dabei um.");
};

INSTANCE Info_Mod_Lares_Grog (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Grog_Condition;
	information	= Info_Mod_Lares_Grog_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab hier was f�r dich.";
};

FUNC INT Info_Mod_Lares_Grog_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Skip_Francis))
	&& (Npc_HasItems(hero, Mod_GrogPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Grog_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Grog_15_00"); //Ich hab hier was f�r dich.
	AI_Output(self, hero, "Info_Mod_Lares_Grog_37_01"); //Was denn?
	AI_Output(hero, self, "Info_Mod_Lares_Grog_15_02"); //Ein Paket voller Grog.

	B_GiveInvItems	(hero, self, Mod_GrogPaket, 1);

	AI_Output(self, hero, "Info_Mod_Lares_Grog_37_03"); //Wurde aber auch langsam Zeit. Endlich kann ich mit meinen Jungs mal wieder ein wenig feiern.
	AI_Output(self, hero, "Info_Mod_Lares_Grog_37_04"); //Hier ist dein Gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);
};

INSTANCE Info_Mod_Lares_BronkoMehlsack (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_BronkoMehlsack_Condition;
	information	= Info_Mod_Lares_BronkoMehlsack_Info;
	permanent	= 0;
	important	= 0;
	description	= "K�nnt ihr etwas mit einer kostenlosen Lieferung Mehl anfangen?";
};

FUNC INT Info_Mod_Lares_BronkoMehlsack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Ambient01))
	&& (Npc_HasItems(hero, ItMi_Mehlsack_Bronko) == 5)
	&& (Mod_BronkoMehlsack == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_BronkoMehlsack_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_BronkoMehlsack_15_00"); //K�nnt ihr etwas mit einer kostenlosen Lieferung Mehl anfangen?
	AI_Output(self, hero, "Info_Mod_Lares_BronkoMehlsack_37_01"); //Gib nur her. Wo hast du das aufgetrieben?

	B_GiveInvItems	(hero, self, ItMi_Mehlsack_Bronko, 5);

	AI_Output(hero, self, "Info_Mod_Lares_BronkoMehlsack_15_02"); //Das ist mir sozusagen zugefallen.
	AI_Output(self, hero, "Info_Mod_Lares_BronkoMehlsack_37_03"); //(lacht) Dann frag ich lieber nicht weiter nach. Jedenfalls vielen Dank.
	AI_Output(self, hero, "Info_Mod_Lares_BronkoMehlsack_37_04"); //Hier, diese paar Tr�nke hab ich �brig. Bin momentan eh nicht so viel unterwegs, als dass ich die brauchen w�rde.

	CreateInvItems	(hero, ItPo_Health_01, 2);
	CreateInvItems	(hero, ItPo_Mana_01, 2);

	B_ShowGivenThings	("2 Essenzen der Heilung und 2 Manaessenzen erhalten");

	B_GivePlayerXP	(100);

	B_G�ttergefallen(3, 1);

	Mod_BronkoMehlsack = 3;
};

INSTANCE Info_Mod_Lares_WillSoeldner (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_WillSoeldner_Condition;
	information	= Info_Mod_Lares_WillSoeldner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich will mich euch anschlie�en.";
};

FUNC INT Info_Mod_Lares_WillSoeldner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_WillSoeldner_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_WillSoeldner_15_00"); //Ich will mich euch anschlie�en.
	AI_Output(self, hero, "Info_Mod_Lares_WillSoeldner_37_01"); //Das ist gut. Sehr gut. Du m�sstest nur dem Lager deine Loyalit�t erweisen.
	AI_Output(hero, self, "Info_Mod_Lares_WillSoeldner_15_02"); //(st�hnt) Du kennst mich doch.
	AI_Output(self, hero, "Info_Mod_Lares_WillSoeldner_37_03"); //Im Minental ist viel passiert. Ich wei�, dass ich dir trauen kann, aber das verschafft dir bei den anderen noch keinen Respekt.
	AI_Output(self, hero, "Info_Mod_Lares_WillSoeldner_37_04"); //Geh zu Torlof und sage ihm, dass ich dich schicke.

	B_LogEntry	(TOPIC_MOD_S�LDNER, "Um bei den S�ldner aufgenommen zu werden, muss ich sie ein wenig beeindrucken und meine Loyalit�t unter Beweis stellen. Ich sollte mal mit Torlof sprechen.");
};

INSTANCE Info_Mod_Lares_AndereSoeldner (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_AndereSoeldner_Condition;
	information	= Info_Mod_Lares_AndereSoeldner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wo sind eigentlich die anderen S�ldner?";
};

FUNC INT Info_Mod_Lares_AndereSoeldner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_AndereSoeldner_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_AndereSoeldner_15_00"); //Wo sind eigentlich die anderen S�ldner?
	AI_Output(self, hero, "Info_Mod_Lares_AndereSoeldner_37_01"); //Die sind noch im Neuen Lager.
	AI_Output(self, hero, "Info_Mod_Lares_AndereSoeldner_37_02"); //Lee hat mich zusammen mit Torlof und Cord hierher geschickt, damit wir ein paar Leute aus Khorinis dazu �berreden, sich uns anzuschlie�en.
	AI_Output(hero, self, "Info_Mod_Lares_AndereSoeldner_15_03"); //Wie viele habt ihr schon �berredet?
	AI_Output(self, hero, "Info_Mod_Lares_AndereSoeldner_37_04"); //Einige. Das ist bei der derzeitigen Langeweile hier aber auch kein gro�es Problem.
};

INSTANCE Info_Mod_Lares_Aufnahme (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Aufnahme_Condition;
	information	= Info_Mod_Lares_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich bin bereit, S�ldner zu werden.";
};

FUNC INT Info_Mod_Lares_Aufnahme_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Torlof_KristallEntgelt))
	|| (Npc_KnowsInfo(hero, Info_Mod_Torlof_Alvares)))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Aufnahme_15_00"); //Ich bin bereit, S�ldner zu werden.
	
	if (hero.level	>=	5)
	&& (Gardist_Dabei == FALSE)
	&& (Orks_Dabei == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_01"); //Es freut mich, dich bei uns begr��en zu k�nnen.
		AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_02"); //Doch wenn du einmal eine von unseren R�stungen tr�gst, dann gibt es kein Zur�ck mehr.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			Info_ClearChoices	(Info_Mod_Lares_Aufnahme);

			Info_AddChoice	(Info_Mod_Lares_Aufnahme, "Ich habs mir anders �berlegt.", Info_Mod_Lares_Aufnahme_Nein);
			Info_AddChoice	(Info_Mod_Lares_Aufnahme, "Ich will mich euch anschlie�en.", Info_Mod_Lares_Aufnahme_Ja);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_04"); //Du solltest dir vorher aber noch eine neutrale R�stung besorgen.
		};
	}
	else if (Gardist_Dabei == TRUE)
	|| (Orks_Dabei == TRUE)
	{
		if (Gardist_Dabei == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_05"); //Du glaubst doch nicht ernsthaft, dass wir einen Gardisten in unseren Reihen dulden.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_06"); //Unter uns sind auch Orkj�ger, da ist ein Orkfreund bei uns falsch.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_37_03"); //Du solltest lieber noch etwas Erfahrung sammeln.
	};
};

FUNC VOID Info_Mod_Lares_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Lares_Aufnahme_Nein_15_00"); //Ich hab's mir anders �berlegt.
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Nein_37_01"); //Wie du meinst.

	Info_ClearChoices	(Info_Mod_Lares_Aufnahme);
};

FUNC VOID Info_Mod_Lares_Aufnahme_Ja()
{
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_58);
		
	AI_Output(hero, self, "Info_Mod_Lares_Aufnahme_Ja_15_00"); //Ich will mich euch anschlie�en.
	
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Ja_37_01"); //Wenn du eine Waffe brauchst, dann solltest du mal Bennet fragen.
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Ja_37_02"); //Hier ist deine R�stung.

	CreateInvItems	(self, ITAR_SLD_L, 1);
	B_GiveInvItems	(self, hero, ITAR_SLD_L, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_SLD_L);
	
	AI_Output(self, hero, "Info_Mod_Lares_Aufnahme_Ja_14_03"); //Geh mit der R�stung aber nicht in die Stadt, die Miliz w�rde dich nicht reinlassen.
	
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	{
		Log_CreateTopic	(TOPIC_MOD_SLD_ORKJAEGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_RUNNING);
		B_LogEntry_NMore	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_S�LDNER, TOPIC_MOD_SLD_ORKJAEGER, "Ich bin jetzt ein S�ldner.", "Ich bin jetzt ein S�ldner.", "Sylvio entscheidet, wer bei den Orkj�gern aufgenommen wird.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_S�LDNER, "Ich bin jetzt ein S�ldner.", "Ich bin jetzt ein S�ldner.");
	};

	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_S�LDNER, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_FAILED);
	
	Mod_Gilde = 4;

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	hero.guild = GIL_MIL;
	Npc_SetTrueGuild	(hero, GIL_MIL);

	Monster_Max += 6;

	Info_ClearChoices	(Info_Mod_Lares_Aufnahme);
};

INSTANCE Info_Mod_Lares_Drachen (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Drachen_Condition;
	information	= Info_Mod_Lares_Drachen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Drachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Drachen_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_00"); //Verdammte Drecksviecher!
	AI_Output(hero, self, "Info_Mod_Lares_Drachen_15_01"); //Was ist los?
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_02"); //Das fragst du noch? Hast du nicht die Drachen auf dem Feld gesehen?
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_03"); //Haben dem Bauern Sekob alle Schafe und sogar den Hirtenhund gefressen.
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_04"); //Als wir gegen sie vorger�ckt sind, mussten wir feststellen, dass unsere Waffen nicht viel gegen sie ausrichten k�nnen.
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_05"); //Einen Mann haben wir dabei verloren.
	AI_Output(hero, self, "Info_Mod_Lares_Drachen_15_06"); //Tja, was kann man da machen ...
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_07"); //Das fragst du mich? Du bist doch st�ndig unterwegs, l�st R�tsel und schnappst Informationen von Menschen, Magiern und Orks auf.
	AI_Output(self, hero, "Info_Mod_Lares_Drachen_37_08"); //Wenn du einen Weg findest, die Drachen zu t�ten, lass es mich wissen. Drecksviecher ...

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Lares hat sich �ber die Drachen beklagt und den Schaden, welchen sie verursacht haben. Er und die S�ldner konnten ihnen nichts anhaben. Er bat mich darum, ihn dar�ber zu informieren, sobald ich einen Weg gefunden h�tte, sie zu erledigen.");
};

INSTANCE Info_Mod_Lares_LeeDJGHelfer (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_LeeDJGHelfer_Condition;
	information	= Info_Mod_Lares_LeeDJGHelfer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_LeeDJGHelfer_Condition()
{
	if (Mod_NL_HasKamm >= 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lee_Gormgniez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_LeeDJGHelfer_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer_37_00"); //Verdammt, wo bleibt die Verst�rkung? Hast du Lee Bescheid gesagt? Wenn nicht, dann beeile dich.
};

INSTANCE Info_Mod_Lares_LeeDJGHelfer2 (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_LeeDJGHelfer2_Condition;
	information	= Info_Mod_Lares_LeeDJGHelfer2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_LeeDJGHelfer2_Condition()
{
	if (Mod_NL_HasKamm >= 3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_Gormgniez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_LeeDJGHelfer2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_00"); //Wie sieht es aus? Gibt es endlich mal was Neues wegen der h�sslichen Riesenechsen?
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_01"); //Mit der Verst�rkung aus dem Minental sind wir jetzt auf jeden Fall gut ger�stet.
	AI_Output(hero, self, "Info_Mod_Lares_LeeDJGHelfer2_15_02"); //Ja, jetzt sollten wir sie erledigen k�nnen. Der Zauber, der sie sch�tzte, ist gebrochen.
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_03"); //Wirklich? Dann lass uns keine Sekunde z�gern.
	AI_Output(self, hero, "Info_Mod_Lares_LeeDJGHelfer2_37_04"); //Jungs, habt ihr geh�rt? Es kann losgehen.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "HEXEN");
	B_StartOtherRoutine	(self, "HEXEN");

	if (!Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG)) {
		B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "HEXEN");
	};

	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_7296_DJG_Drachenjaeger_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_7297_DJG_Drachenjaeger_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_7298_DJG_Butch_NW, "HEXEN");
};

INSTANCE Info_Mod_Lares_Knucker (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Knucker_Condition;
	information	= Info_Mod_Lares_Knucker_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Knucker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_LeeDJGHelfer2))
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_CROSS") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Knucker_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Knucker_37_00"); //Na dann. Jetzt geht�s ans Eingemachte.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "KNUCKER");
	B_StartOtherRoutine	(self, "KNUCKER");

	if (!Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG)) {
		B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "KNUCKER");
	};

	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_7296_DJG_Drachenjaeger_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_7297_DJG_Drachenjaeger_NW, "KNUCKER");
	B_StartOtherRoutine	(Mod_7298_DJG_Butch_NW, "KNUCKER");

	Mod_798_SLD_Wolf_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7296_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7297_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_7298_DJG_Butch_NW.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Lares_KnuckerTot (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_KnuckerTot_Condition;
	information	= Info_Mod_Lares_KnuckerTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_KnuckerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Knucker))
	&& (Npc_IsDead(Knucker_11001_NW))
	&& (Npc_IsDead(Feuerdrache_11002_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_KnuckerTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_KnuckerTot_37_00"); //Na, das war ja leichter, als ich gedacht habe. Und die Jungs hatten auch mal wieder etwas Bewegung. Das m�ssen wir unbedingt irgendwann wiederholen.
	AI_Output(hero, self, "Info_Mod_Lares_KnuckerTot_15_01"); //Wo ist eigentlich Gorn? Ich habe ihn beim Kampf vermisst.
	AI_Output(self, hero, "Info_Mod_Lares_KnuckerTot_37_02"); //Der darf bei der Kapelle Wache schieben. Wir wollen ja keine unerfreuliche �berraschung aus dem Wald erleben.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "START");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "PRESTART");
	B_StartOtherRoutine	(self, "START");

	if (!Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG)) {
		B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "START");
	};

	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "START");
	B_StartOtherRoutine	(Mod_7296_DJG_Drachenjaeger_NW, "START");
	B_StartOtherRoutine	(Mod_7297_DJG_Drachenjaeger_NW, "START");
	B_StartOtherRoutine	(Mod_7298_DJG_Butch_NW, "START");

	Mod_798_SLD_Wolf_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_527_SLD_Torlof_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1200_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1201_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1202_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1203_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1204_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1205_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1206_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1207_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1208_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1209_SLD_Soeldner_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7296_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7297_DJG_Drachenjaeger_NW.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_7298_DJG_Butch_NW.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Lares_Hexen (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Hexen_Condition;
	information	= Info_Mod_Lares_Hexen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Hexen_Condition()
{
	if (Mod_WM_HexenTot == 1)
	&& (!Npc_IsDead(DienerDesBoesen_01))
	&& (Mod_WM_GornAttack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Hexen_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_37_00"); //Hey, die Untoten bei Sekobs Hof haben sich zerstreut. Jetzt k�nnten wir sie aufmischen.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_37_01"); //Wenn du mitmachst, m�sste unsere Schlagkraft ausreichen.
	
	Info_ClearChoices	(Info_Mod_Lares_Hexen);

	Info_AddChoice	(Info_Mod_Lares_Hexen, "Nein, ich habe gerade Wichtigeres zu tun.", Info_Mod_Lares_Hexen_B);
	Info_AddChoice	(Info_Mod_Lares_Hexen, "Klar, ich bin dabei.", Info_Mod_Lares_Hexen_A);
};

FUNC VOID Info_Mod_Lares_Hexen_B()
{
	AI_Output(hero, self, "Info_Mod_Lares_Hexen_B_15_00"); //Nein, ich habe gerade Wichtigeres zu tun.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_B_37_01"); //Hmm, schade, h�tte ich nicht gedacht, dass du dir das entgehen lassen willst.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_B_37_02"); //Dann m�ssen wir eben noch etwas mit dem Angriff warten, bis wir Verst�rkung bekommen.

	Info_ClearChoices	(Info_Mod_Lares_Hexen);
	
	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Lares_Hexen_A()
{
	AI_Output(hero, self, "Info_Mod_Lares_Hexen_A_15_00"); //Klar, ich bin dabei.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_A_37_01"); //Sehr gut, ich habe auch nichts anderes von dir erwartet. Dann kann es ja losgehen.
	AI_Output(self, hero, "Info_Mod_Lares_Hexen_A_37_02"); //Wir sammeln uns dann an der Kreuzung. Wie in alten Zeiten.

	Mod_WM_GornAttack = 1;

	Info_ClearChoices	(Info_Mod_Lares_Hexen);
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_798_SLD_Wolf_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_526_SLD_Lares_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_528_SLD_Cord_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_533_SLD_Gorn_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1200_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1201_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1202_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1203_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1204_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1205_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1206_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1207_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1208_SLD_Soeldner_NW, "HEXEN");
	B_StartOtherRoutine	(Mod_1209_SLD_Soeldner_NW, "HEXEN");
};

INSTANCE Info_Mod_Lares_NahkampfJG (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_NahkampfJG_Condition;
	information	= Info_Mod_Lares_NahkampfJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Waldl�ufer suchen Leute. M�glichst Schwertk�mpfer.";
};

FUNC INT Info_Mod_Lares_NahkampfJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Opferschale))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_NahkampfJG_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG_15_00"); //Die Waldl�ufer suchen Leute. M�glichst Schwertk�mpfer.
	AI_Output(self, hero, "Info_Mod_Lares_NahkampfJG_37_01"); //Hm. Hier sind einige, die den ganzen Tag nur rumgammeln. Aber da musst du Cord fragen.
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG_15_02"); //Gut. Bis sp�ter.
};

INSTANCE Info_Mod_Lares_NahkampfJG2 (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_NahkampfJG2_Condition;
	information	= Info_Mod_Lares_NahkampfJG2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cord hat mir den Hock mitgegeben. Daf�r bekommt ihr einen J�ger geschickt.";
};

FUNC INT Info_Mod_Lares_NahkampfJG2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_NahkampfJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_NahkampfJG2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG2_15_00"); //Cord hat mir Hock mitgegeben. Daf�r bekommt ihr einen J�ger geschickt.
	AI_Output(self, hero, "Info_Mod_Lares_NahkampfJG2_37_01"); //Nur zu. Der kann dann mit mir auf Jagd gehen.
	AI_Output(hero, self, "Info_Mod_Lares_NahkampfJG2_15_02"); //Bis dann.
};

INSTANCE Info_Mod_Lares_AndereGilde (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_AndereGilde_Condition;
	information	= Info_Mod_Lares_AndereGilde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_AndereGilde_Condition()
{
	if (Mod_Gilde > 0)
	&& (hero.guild != GIL_MIL)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lares_WillSoeldner))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_AndereGilde_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_AndereGilde_37_00"); //Hey, mir ist zu Ohren gekommen, dass du schon einem anderen gro�en Lager angeh�rst.
	AI_Output(hero, self, "Info_Mod_Lares_AndereGilde_15_01"); //�h, nun ...
	AI_Output(self, hero, "Info_Mod_Lares_AndereGilde_37_02"); //Tja, in dem Fall kannst du uns nun leider nicht mehr beitreten.
	AI_Output(self, hero, "Info_Mod_Lares_AndereGilde_37_03"); //Das Risiko w�re zu gro�, dass du die Interessen anderer vertrittst, wenn du verstehst.
};

INSTANCE Info_Mod_Lares_Friedensbote (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Friedensbote_Condition;
	information	= Info_Mod_Lares_Friedensbote_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Friedensbote_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Friedensbote_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_00"); //(neckisch) Na, haben die Paladine dich mal wieder auf Landurlaub geschickt?
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_01"); //Ja, gewisserma�en. Ich soll dir diese Botschaft von Lord Hagen pers�nlich �berbringen.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_02"); //(ungl�ubig) Von Lord Kastrat-des-K�nigs Hagilein h�chstpers�nlich? Du willst mich veralbern!
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_03"); //Hier.

	B_GiveInvItems	(hero, self, ItWr_HagenLares, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_04"); //Tatsache ...

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_05"); //... unterbreite ich den Vorschlag ... bla ... die Konflikte ... bla ... Paladine und S�ldner ... usw. ... so, so, aha ... Zeichen des Vertrauens ... Aspirant auf Posten des Hauptmanns ... oha.
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_06"); //Und?
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_07"); //Ich muss schon sagen, du hast es aber verdammt weit gebracht, Junge. Meine Fresse.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_08"); //H�chster Ritter und Anw�rter auf den Hauptmannsposten in der Stadt.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_09"); //Als du uns damals in der Kolonie die Bedarfsliste des Alten Lagers gebracht hast, h�tte ich als Letztes vermutet, dass du mal bei der Truppe des K�nigs weit vorne mitmischst.
	AI_Output(hero, self, "Info_Mod_Lares_Friedensbote_15_10"); //Und was sagst du nun zu Hagens Anfrage?
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_11"); //Wenn du als zuk�nftiger Hauptmann f�r die Einhaltung der Waffenruhe b�rgst, sehe ich keinen Grund, warum nicht auch wir uns daran halten sollten.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_12"); //Die Orks im Minental werden ja wirklich immer mehr zur Bedrohung.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_13"); //Da w�re so eine kleine Waffenpause gar nicht schlecht, um in Ruhe unsere Position in Khorinis zu festigen und uns auf alles Weitere vorzubereiten.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_14"); //Du kannst also Hagen ausrichten, dass wir uns f�r unseren Teil daran halten werden.
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_15"); //(neckisch) Da wird er auch gewiss mit dir zufrieden sein, wie?
	AI_Output(self, hero, "Info_Mod_Lares_Friedensbote_37_16"); //Nichts f�r ungut. Ich bin gespannt, wie sich das weiterentwickelt. Mach�s gut.

	B_LogEntry	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, "Lares hat der Waffenruhe zugestimmt. Ich sollte Lord Hagen davon berichten.");
};

INSTANCE Info_Mod_Lares_Banditenfestung (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Banditenfestung_Condition;
	information	= Info_Mod_Lares_Banditenfestung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lares_Banditenfestung_Condition()
{
	if (Mod_Irdorath == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Banditenfestung_Info()
{
	AI_Output(self, hero, "Info_Mod_Lares_Banditenfestung_37_00"); //He, warte mal. Ich wollte dich warnen, falls du nach S�den in die Berge gehen willst.
	AI_Output(hero, self, "Info_Mod_Lares_Banditenfestung_15_01"); //Wieso? Was ist da?
	AI_Output(self, hero, "Info_Mod_Lares_Banditenfestung_37_02"); //In der Festung hat sich irgendwelcher Abschaum aus dem Minental niedergelassen. Pass also gut auf, wenn du dort unterwegs bist.
};

INSTANCE Info_Mod_Lares_Banditenfestung2 (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Banditenfestung2_Condition;
	information	= Info_Mod_Lares_Banditenfestung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die M�nner in den Bergen Stellen keine Gefahr dar.";
};

FUNC INT Info_Mod_Lares_Banditenfestung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Banditenfestung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Banditenfestung2_15_00"); //Die M�nner in den Bergen Stellen keine Gefahr dar. Es sind alte Bekannte aus der Kolonie.
	AI_Output(self, hero, "Info_Mod_Lares_Banditenfestung2_37_01"); //Hmm, sch�n, wenn du es sagst, wird es wohl stimmen. Dann kann ich ja beruhigt sein.

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lares_Lehrer (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Lehrer_Condition;
	information	= Info_Mod_Lares_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir was beibringen?";
};

FUNC INT Info_Mod_Lares_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Hi))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Lares_Lehrer_37_00"); //Ich kann dir helfen geschickter zu werden.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Lares kann mir helfen geschickter zu werden.");
};

var int Lares_LastPetzCounter;
var int Lares_LastPetzCrime;

INSTANCE Info_Mod_Lares_PMSchulden (C_INFO)
{
	npc         	= Mod_526_SLD_Lares_NW;
	nr          	= 1;
	condition   	= Info_Mod_Lares_PMSchulden_Condition;
	information 	= Info_Mod_Lares_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Lares_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Lares_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Lares_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lares_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_00"); //Bist du gekommen, um deine Strafe zu zahlen?

	if (B_GetTotalPetzCounter(self) > Lares_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_01"); //Ich hatte mich schon gefragt, ob du es �berhaupt noch wagst, hierher zu kommen!
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_02"); //Anscheinend ist es nicht bei den letzten Anschuldigungen geblieben!

		if (Lares_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_03"); //Ich hatte dich gewarnt! Die Strafe, die du jetzt zahlen musst, ist h�her!
			AI_Output (hero, self, "Info_Mod_Lares_PMAdd_15_00"); //Wie viel?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Lares_LastPetzCounter);
		
			if (diff > 0)
			{
				Lares_Schulden = Lares_Schulden + (diff * 50);
			};
		
			if (Lares_Schulden > 1000)	{	Lares_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Lares_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_04"); //Du hast mich schwer entt�uscht!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Lares_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_05"); //Es haben sich einige neue Dinge ergeben.
		
		if (Lares_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_06"); //Pl�tzlich gibt es niemanden mehr, der dich des Mordes bezichtigt.
		};
		
		if (Lares_LastPetzCrime == CRIME_THEFT)
		|| ( (Lares_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_07"); //Niemand erinnert sich mehr, dich bei einem Diebstahl gesehen zu haben.
		};
		
		if (Lares_LastPetzCrime == CRIME_ATTACK)
		|| ( (Lares_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_08"); //Es gibt keine Zeugen mehr daf�r, dass du jemals in eine Schl�gerei verwickelt warst.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_09"); //Anscheinend haben sich alle Anklagen gegen dich in Wohlgefallen aufgel�st.
		};
		
		AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_10"); //Ich wei� nicht, was da gelaufen ist, aber ich warne dich: Spiel keine Spielchen mit mir.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_11"); //Ich habe mich jedenfalls entschieden, dir deine Schulden zu erlassen.
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_12"); //Sieh zu, dass du nicht wieder in Schwierigkeiten kommst.
	
			Lares_Schulden			= 0;
			Lares_LastPetzCounter 	= 0;
			Lares_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_13"); //Damit eins klar ist: Deine Strafe musst du trotzdem in voller H�he zahlen.
			B_Say_Gold (self, hero, Lares_Schulden);
			AI_Output (self, hero, "Info_Mod_Lares_PMSchulden_37_14"); //Also, was ist?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
		Info_AddChoice		(Info_Mod_Lares_PMSchulden,"Ich habe nicht genug Gold!",Info_Mod_Lares_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Lares_PMSchulden,"Wieviel war es nochmal?",Info_Mod_Lares_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Lares_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Lares_PMSchulden,"Ich will die Strafe zahlen.",Info_Mod_Lares_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Lares_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Lares_PMSchulden_HowMuchAgain_15_00"); //Wie viel war es noch mal?
	B_Say_Gold (self, hero, Lares_Schulden);

	Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lares_PMSchulden,"Ich habe nicht genug Gold!",Info_Mod_Lares_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Lares_PMSchulden,"Wieviel war es nochmal?",Info_Mod_Lares_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Lares_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lares_PMSchulden,"Ich will die Strafe zahlen.",Info_Mod_Lares_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Lares_PETZMASTER   (C_INFO)
{
	npc         	= Mod_526_SLD_Lares_NW;
	nr          	= 1;
	condition   	= Info_Mod_Lares_PETZMASTER_Condition;
	information 	= Info_Mod_Lares_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lares_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Lares_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lares_PETZMASTER_Info()
{
	Lares_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime h�her ist...
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_01"); //Gut, dass du zu mir kommst, bevor alles noch schlimmer f�r dich wird.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_02"); //Mord ist ein schweres Vergehen!

		Lares_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Lares_Schulden = Lares_Schulden + 500;						//PLUS M�rder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_03"); //Ganz zu schweigen von den anderen Sachen, die du angerichtet hast.
		};

		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_06"); //Ich habe kein Interesse daran, dich an den Galgen zu bringen. Wir sind im Krieg und wir brauchen jeden Mann.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_07"); //Aber es wird nicht leicht sein, die Leute wieder gn�dig zu stimmen.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_08"); //Du k�nntest deine Reue zeigen, indem du eine Strafe zahlst - nat�rlich muss die Strafe angemessen hoch sein.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_09"); //Gut, dass du kommst! Du wirst des Diebstahls bezichtigt! Es gibt Zeugen!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_10"); //Von den anderen Dingen, die mir zu Ohren gekommen sind, will ich gar nicht erst reden.
		};

		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_11"); //Ich werde so ein Verhalten bei uns nicht dulden!
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_12"); //Du wirst eine Strafe zahlen m�ssen, um dein Verbrechen wieder gutzumachen!
		
		Lares_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_13"); //Wenn du dich mit dem Gesindel in der Stadt herumpr�gelst, ist das eine Sache ...
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_14"); //Aber wenn du die Bauern oder andere S�ldner angreifst, muss ich dich zur Rechenschaft ziehen.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_15"); //Und die Sache mit den Schafen musste wohl auch nicht sein.
		};

		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_16"); //Wenn ich dir das durchgehen lasse, macht hier bald jeder, was er will.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_17"); //Also wirst du eine angemessene Strafe zahlen - und die Sache ist vergessen.
		
		Lares_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf get�tet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_18"); //Mir ist zu Ohren gekommen, du h�ttest dich an unseren Schafen vergriffen.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_19"); //Dir ist klar, dass ich das nicht durchgehen lassen kann.
		AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_37_20"); //Du wirst eine Entsch�digung zahlen m�ssen!
		
		Lares_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Lares_PETZMASTER_15_21"); //Wie viel?
	
	if (Lares_Schulden > 1000)	{	Lares_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Lares_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lares_PETZMASTER,"Ich habe nicht genug Gold!",Info_Mod_Lares_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Lares_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lares_PETZMASTER,"Ich will die Strafe zahlen.",Info_Mod_Lares_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Lares_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Lares_PETZMASTER_PayNow_15_00"); //Ich will die Strafe zahlen!
	B_GiveInvItems (hero, self, itmi_gold, Lares_Schulden);
	AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_PayNow_37_01"); //Gut! Ich werde daf�r sorgen, dass es jeder Bauer und S�ldner erf�hrt - damit w�re dein Ruf einigerma�en wiederhergestellt.

	B_GrantAbsolution (LOC_FARM);
	
	Lares_Schulden			= 0;
	Lares_LastPetzCounter 	= 0;
	Lares_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Lares_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Lares_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Lares_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Lares_PETZMASTER_PayLater_15_00"); //Ich habe nicht genug Gold!
	AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_PayLater_37_01"); //Dann sieh zu, dass du das Gold so schnell wie m�glich beschaffst.
	AI_Output (self, hero, "Info_Mod_Lares_PETZMASTER_PayLater_37_02"); //Und ich warne dich: Wenn du dir noch was zu schulden kommen l�sst, wird die Sache noch schlimmer f�r dich!
	
	Lares_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Lares_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Lares_Lernen (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Lernen_Condition;
	information	= Info_Mod_Lares_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir was bei.";
};

FUNC INT Info_Mod_Lares_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Lehrer))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lares_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lares_Lernen_15_00"); //Bring mir was bei.
	AI_Output(self, hero, "Info_Mod_Lares_Lernen_37_01"); //Was willst du lernen?

	Info_ClearChoices	(Info_Mod_Lares_Lernen);

	Info_AddChoice 		(Info_Mod_Lares_Lernen, DIALOG_BACK, Info_Mod_Lares_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Lares_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Lares_Lernen);
};

FUNC VOID Info_Mod_Lares_Lernen_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 140);
	
	Info_ClearChoices	(Info_Mod_Lares_Lernen);

	Info_AddChoice 		(Info_Mod_Lares_Lernen, DIALOG_BACK, Info_Mod_Lares_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Lares_Lernen_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 140);
	
	Info_ClearChoices	(Info_Mod_Lares_Lernen);

	Info_AddChoice 		(Info_Mod_Lares_Lernen, DIALOG_BACK, Info_Mod_Lares_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Lares_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Lares_Lernen_Geschick_1);
};

INSTANCE Info_Mod_Lares_Pickpocket (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_Pickpocket_Condition;
	information	= Info_Mod_Lares_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Lares_Pickpocket_Condition()
{
	C_Beklauen	(124, ItMi_Gold, 60);
};

FUNC VOID Info_Mod_Lares_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

	Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_BACK, Info_Mod_Lares_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lares_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lares_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lares_Pickpocket);
};

FUNC VOID Info_Mod_Lares_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

		Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lares_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lares_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lares_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lares_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lares_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lares_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lares_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lares_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lares_EXIT (C_INFO)
{
	npc		= Mod_526_SLD_Lares_NW;
	nr		= 1;
	condition	= Info_Mod_Lares_EXIT_Condition;
	information	= Info_Mod_Lares_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lares_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lares_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};