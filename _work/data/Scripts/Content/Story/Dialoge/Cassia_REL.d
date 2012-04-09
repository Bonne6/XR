INSTANCE Info_Mod_Cassia_REL_VorTaverne (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_VorTaverne_Condition;
	information	= Info_Mod_Cassia_REL_VorTaverne_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_VorTaverne_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_InTaverne))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_16_00"); //(halblaut) Das habt ihr wirklich fein gemacht. Sch�n schaurig.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_16_01"); //Das sollte sich in Windeseile in der ganzen Stadt verbreiten und den Einfallspinseln Respekt vor dem Geb�ude verschaffen.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_15_02"); //Du hast alles mit angeh�rt? Dann k�nnen wir also einziehen?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_16_03"); //Noch nicht ganz.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_16_04"); //Metzger und Braumeister werden bald schon von den Ger�chten erfahren und sich zu dem Haus begeben, um sich selbst ein Bild davon zu machen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_16_05"); //Die erste Rate f�r das Haus haben sie n�mlich schon gezahlt.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_16_06"); //Dort werde ich am Vordereingang auf sie warten und das hysterische Weib geben.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_16_07"); //W�hrend dessen wirst du dich hinter und herschleichen und von hinten die Fackel entz�nden, die im Keller steht.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_16_08"); //Das sollte ihnen den Rest geben ... und mir ihren Schl�ssel zum Geb�ude.

	B_GivePlayerXP	(150);

	Info_ClearChoices	(Info_Mod_Cassia_REL_VorTaverne);

	Info_AddChoice	(Info_Mod_Cassia_REL_VorTaverne, "Geht auch ein Beschw�rungszauber?", Info_Mod_Cassia_REL_VorTaverne_B);
	Info_AddChoice	(Info_Mod_Cassia_REL_VorTaverne, "Alles klar.", Info_Mod_Cassia_REL_VorTaverne_A);
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_C()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_C_16_00"); //Gut, dann folge mir.

	Info_ClearChoices	(Info_Mod_Cassia_REL_VorTaverne);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOHAUS");
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_B()
{
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_B_15_00"); //Geht auch ein Beschw�rungszauber?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_VorTaverne_B_16_01"); //Damit wir im Anschluss zwei Leichen im Keller haben und die Stadtwachen schwer bewaffnet bei uns an die T�re klopfen?
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_B_15_02"); //Verstehe.

	Info_Mod_Cassia_REL_VorTaverne_C();
};

FUNC VOID Info_Mod_Cassia_REL_VorTaverne_A()
{
	AI_Output(hero, self, "Info_Mod_Cassia_REL_VorTaverne_A_15_00"); //Alles klar.

	Info_Mod_Cassia_REL_VorTaverne_C();
};

INSTANCE Info_Mod_Cassia_REL_AtHaus (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_AtHaus_Condition;
	information	= Info_Mod_Cassia_REL_AtHaus_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe alle Pakete erhalten k�nnen.";
};

FUNC INT Info_Mod_Cassia_REL_AtHaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_VorTaverne))
	&& (Npc_GetDistToWP(hero, "REL_CITY_053") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_AtHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_AtHaus_16_00"); //Ahh, da kommen die beiden schon. Hier ist die Rune.

	B_GiveInvItems	(self, hero, ItRu_Fackel, 1);

	AI_Output(self, hero, "Info_Mod_Cassia_REL_AtHaus_16_01"); //Du wei�t, was zu tun ist.

	B_LogEntry	(TOPIC_MOD_DIEB_UMZUG, "W�hrend Cassia die beiden ablenkt, werde ich mich von hinten anschleichen und eine Fackel mit Hilfe eines Zaubers entz�nden.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BESICHTIGUNG");
	B_StartOtherRoutine	(Mod_7576_OUT_Metzger_REL, "BESICHTIGUNG");
	B_StartOtherRoutine	(Mod_7578_OUT_Brauer_REL, "BESICHTIGUNG");
};

INSTANCE Info_Mod_Cassia_REL_InHaus (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_InHaus_Condition;
	information	= Info_Mod_Cassia_REL_InHaus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_InHaus_Condition()
{
	if (Mod_Diebe_FackelAn == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_InHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_InHaus_16_00"); //Ausgezeichnet. Die beiden Narren werden wir hier bestimmt nicht wieder zu Gesicht bekommen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_InHaus_16_01"); //Jetzt k�nnen wir uns erst einmal in aller Seelenruhe hier einrichten.

	B_GivePlayerXP	(350);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_UMZUG, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7576_OUT_Metzger_REL, "START");
	B_StartOtherRoutine	(Mod_7578_OUT_Brauer_REL, "START");
	B_StartOtherRoutine	(self, "INHAUS");
	B_StartOtherRoutine	(Mod_7704_OUT_Jesper_REL, "INHAUS");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "INHAUS");
};

INSTANCE Info_Mod_Cassia_REL_Glorie (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie_Condition;
	information	= Info_Mod_Cassia_REL_Glorie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Lagerhaus2))
	&& (Wld_GetDay() > Mod_Dieb_Haus_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_00"); //Ahh, gut dass du das bist.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_01"); //Wir haben gerade etwas ausgearbeitet, bei dem du uns helfen kannst ... nein musst.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_02"); //Ein fertiger Plan, wie ich h�re. Was gibt es diesmal zu besorgen? Etwas Gold, paar Schinken ...
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_03"); //Nein, diesmal ist es etwas komplexer.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_04"); //Wir werden jedes Mitglied aus unserer Gemeinschaft brauchen, wenn es gl�cken soll.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_05"); //Das h�rt sich spannend an. Worum geht es?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_06"); //Es geht zuerst einmal darum wertvolle Dokumente zu beschaffen, die noch wertvollere Informationen beinhalten k�nnten.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_07"); //Diese lagern irgendwo in den Untiefen der Bibliothek.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_08"); //Also ein Einbruch?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_09"); //Nein, es w�rde wohl Tage, wenn nicht Wochen dauern, unter den ganzen Schriften und B�chern das zu finden, wonach wir suchen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_10"); //Und das Schloss, das zu knacken w�re, ist auch kein g�ngiges T�rschloss.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_11"); //H�r mir also erst einmal zu.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_12"); //Also, es gibt einen Gelehrten in dieser Stadt der jeden Tag zu Mittag die Bibliothek betritt.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_13"); //Er wird von einer Leibwache begleitet, die immer am Eingang stehen bleibt.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_14"); //Sobald der Bibliothekar den Alten erblickt, springt er auf und begibt sich durch eine verschlossene Fallt�re in einen Raum unterhalb.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_15"); //Nach wenigen Minuten kommt er mit einem Stapel Dokumente heraus und bringt diese dem Gelehrten.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_16"); //Das sind sehr exklusive und spezielle Dokumente, da niemand sonst diese ausgeh�ndigt bekommt.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_17"); //Und glaub mir, wir haben alle Register der Diplomatie gezogen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_18"); //Jedenfalls schm�kert der gelehrte Alte immer einige Stunden darin, ehe er sie dem Bibliothekar wieder zur�ckgibt und sie in dem Raum unterhalb verschwinden.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_19"); //Hmm, und wo wollen wir uns da einklinken?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_20"); //Beim Schneider.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_21"); //Das verstehe ich nicht ...
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_22"); //Weil du nicht die n�tigen Informationen gesammelt hast.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_23"); //Denn wie wir in Erfahrung gebracht haben, arbeitet der Schneider gerade an einem Kleid f�r den Gelehrten.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_24"); //Die Robe sieht fast genauso aus, wie der exzentrische Fummel, in dem der Alte sonst heruml�uft.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_25"); //Langsam verstehe ich. Jemand von uns besorgt sich das Kleid und gibt sich als der Alte aus.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_26"); //Nahe liegende Schl�sse kannst du also ziehen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_27"); //Aber genug der Schmeicheleien.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_28"); //Das wird deine und Ramirez Aufgabe sein.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_29"); //W�hrend er den Schneider ablenkt und bezirzt � glaub mir, ich h�tte keinen Erfolg � wirst du dir das Kleid unter den Nagel rei�en.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_30"); //Mit diesem Bart hier, solltest du dem Alten Schn�sel dann doch ganz �hnlich sehen.

	B_GiveInvItems	(self, hero, ItAr_Bart, 1);

	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_31"); //Ok, dann kenne ich meine weitere Aufgabe.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_32"); //Wie schon zu vermuten war, begibst du dich in entsprechender Verkleidung  in die Bibliothek.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_33"); //Attila sorgt w�hrend dessen daf�r, dass der Alte mit seinem Wachhund nicht in der Bibliothek aufkreuzt, indem er ihn in ein Gespr�ch verwickelt ... oder was auch notwendig sein wird.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_34"); //Nun gut, wird der Bibliothekar aber nicht merken, dass er nicht den richtigen Gelehrten vor sich hat.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_35"); //Ein guter Punkt ... wo Jesper zum Einsatz kommt.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_36"); //Der Bibliothekar ist n�mlich eigentlich blind wie ein Maulwurf, kann ohne sein Monokel gerade mal das Buch vor seiner Nase erkennen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_37"); //Sobald er sich die Augen reibt und das Monokel zur Seite legt, wird Jesper daf�r sorgen, dass er es so schnell nicht wieder in die Finger bekommt.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_38"); //Das einzige was du tun musst, ist also nah genug an den Bibliothekar heranzugehen, damit er den exzentrischen Fummel und den langen Bart erkennt.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_39"); //So l�uft n�mlich sonst keiner rum ... sogar in dieser Stadt nicht.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_40"); //Sagen brauchst und solltest du nichts ... der Junge wird von selbst kuschen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_41"); //Im Anschluss verl�sst du mit den Papieren die Bibliothek.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_42"); //Wenn alles gut l�uft solltest du auch noch genug Zeit haben das Kleid zur�ckzubringen, ehe der Schneider den Verlust bemerkt.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_43"); //Gut ... und was ist deine Aufgabe dabei?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_44"); //Ich?! Ich bin quasi der Joker, falls nicht alles so laufen sollte, wie geplant.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_45"); //Ich werde stets in der N�he sein, die Umgebung beobachten und eingreifen, wenn es mir notwendig erscheint.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie_15_46"); //Ok, und wann geht es los?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_47"); //Morgen fr�h gegen 10 wirst du dich hier mit Ramirez treffen und zum Schneider gehen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_48"); //Wenn alles l�uft, wie geplant, sollte es uns das ideale Zeitfenster f�r unseren Coup bieten.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie_16_49"); //Alles klar? Wir z�hlen auf dich.

	Log_CreateTopic	(TOPIC_MOD_DIEB_GLORIE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_GLORIE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "Das ist jetzt mal eine gr��ere Geschichte. Ich soll morgen fr�h um 10 hier Ramirez treffen. Mit ihm werde ich zum Schneider gehen und die Robe des Gelehrten stehlen, w�hrend Ramirez ihn ablenkt. Mit der neuen Kleidung und einem falschen Bart bekleidet gehe ich dann in die Bibliothek, wo Jesper den Bibliothekar seiner Sehhilfe beraubt hat. Ich brauche mich nur vor ihn zu stellen und er sollte mir einige wertvolle Dokumente bringen. W�hrend dessen Wird Attila daf�r sorgen, dass sich der Besuch des richtigen Gelehrten in der Bibliothek verz�gert. Sobald ich die Papiere habe muss ich nur noch das Kleid beim Schneider zur�cklegen, ehe ihm der Verlust auff�llt.");

	Mod_Dieb_Haus_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Cassia_REL_Glorie2 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie2_Condition;
	information	= Info_Mod_Cassia_REL_Glorie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Glorie3))
	&& (Npc_HasItems(hero, ItAr_GelehrterNeu) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie2_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie2_16_00"); //(halblaut) Keine Zeit zu verlieren. Zieh die Sachen an und dann weiter zur Bibliothek.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOBIB");
};

INSTANCE Info_Mod_Cassia_REL_Glorie3 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie3_Condition;
	information	= Info_Mod_Cassia_REL_Glorie3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie2))
	&& (Npc_GetDistToWP(hero, "REL_CITY_145") < 500)
	&& (Mod_Dieb_Verkleidung == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie3_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie3_16_00"); //(halblaut) Los, rein mit dir.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATBIB");
};

INSTANCE Info_Mod_Cassia_REL_Glorie4 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie4_Condition;
	information	= Info_Mod_Cassia_REL_Glorie4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie3))
	&& (Npc_HasItems(hero, ItWr_DiebDokumente) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie4_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_16_00"); //Nun aber genug der Worte. Hast du die Unterlagen?
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie4_15_01"); //Ja, hier.

	B_GiveInvItems	(hero, self, ItWr_DiebDokumente, 1);

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_16_02"); //Lass sehen.

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_16_03"); //Nein ... das scheint unwichtig ...

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_16_04"); //V�llig belanglos ...

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_16_05"); //Uninteressant ...
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie4_16_06"); //(zum Helden) Es wird wohl einige Stunden dauern in dem Haufen Dokumente etwas Brauchbares zu finden.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DOKUMENTELESEN");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "DOKUMENTELESEN");

	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "Wir konnten die Notizen erfolgreich entwenden. Nun wird es einige Zeit dauern sie zu studieren.");

	B_GivePlayerXP	(500);

	// Blubberlutsch: Milkys Zeitscripte nehmen und 6 Stunden Cooldown f�r n�chstes Gespr�ch!!!
};

INSTANCE Info_Mod_Cassia_REL_Glorie5 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie5_Condition;
	information	= Info_Mod_Cassia_REL_Glorie5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie5_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie5_16_00"); //Gut, ich glaube wir haben da was. Hier, lies selbst.

	B_GiveInvItems	(self, hero, ItWr_BesaenftigungBeliars, 1);

	AI_StopProcessInfos	(self);

	B_UseItem (hero, ItWr_BesaenftigungBeliars);

	Npc_SetRefuseTalk (self, 15);
};

INSTANCE Info_Mod_Cassia_REL_Glorie6 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie6_Condition;
	information	= Info_Mod_Cassia_REL_Glorie6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_REL_Glorie6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie5))
	&& (!Npc_RefuseTalk(self))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie6_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_16_00"); //Nun, klingt das nicht verlockend?
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie6_15_01"); //Ein kleines Opfer Goldes alle paar Tage ... wom�glich �ber Jahrhunderte.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_16_02"); //Nun gilt es noch herauszufinden, wo dieses Opfer erbracht wird.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_16_03"); //Nach der letzten Aktion bist du derjenige, den mit Sicherheit niemand wieder erkennen wird ...
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie6_15_04"); //... sodass ich das Vergn�gen haben werde. Verstehe.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie6_16_05"); //Also, immer sch�n dem Stadthalter auf den Fersen bleiben, sobald die D�mmerung einbricht ... (spitz) ich traue es dir zu.

	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "Scheinbar werden hier seit Ewigkeiten Beliar Goldopfer dargebracht, um die Stadt vor seinem Zorn zu sch�tzen. Ich muss den Stadthalter Nachts beschatten, um zu sehen, wo das Gold landet.");
};

INSTANCE Info_Mod_Cassia_REL_Glorie7 (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_Glorie7_Condition;
	information	= Info_Mod_Cassia_REL_Glorie7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe in Erfahrung gebracht, wo sie ihr Gold opfern.";
};

FUNC INT Info_Mod_Cassia_REL_Glorie7_Condition()
{
	if (Mod_Diebe_Brunnen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_REL_Glorie7_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie7_15_00"); //Ich habe in Erfahrung gebracht, wo sie ihr Gold opfern. Es ist der verschlossene Brunnen, gleich hier in der N�he.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_16_01"); //Ahh, nat�rlich ... nichts ist besser geeignet ein Opfer an Adanos vorzugaukeln, als ein Brunnen.
	AI_Output(hero, self, "Info_Mod_Cassia_REL_Glorie7_15_02"); //Was ist also als n�chstes zu tun?
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_16_03"); //Nun, die N�he des Brunnens zu unserer Behausung spielt uns nat�rlich in die H�nde.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_16_04"); //Selbige werden wir auch nutzen m�ssen, um uns mit Spitzhacken einen Weg durchs Erdreich zu bahnen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_16_05"); //Wenn wir Gl�ck haben, k�nnten wir schon nach wenigen Metern auf einen der Hohlr�ume sto�en, die offenbar unter der Stadt verlaufen.
	AI_Output(self, hero, "Info_Mod_Cassia_REL_Glorie7_16_06"); //Bis morgen haben wir hoffentlich alles zusammen, um mit dem Tunnel loszulegen.

	B_LogEntry	(TOPIC_MOD_DIEB_GLORIE, "Cassia plant den Bau eines Tunnels von unserem Versteck aus.");
};

INSTANCE Info_Mod_Cassia_REL_EXIT (C_INFO)
{
	npc		= Mod_7705_OUT_Cassia_REL;
	nr		= 1;
	condition	= Info_Mod_Cassia_REL_EXIT_Condition;
	information	= Info_Mod_Cassia_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cassia_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};