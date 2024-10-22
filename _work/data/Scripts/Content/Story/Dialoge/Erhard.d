INSTANCE Info_Mod_Erhard_NeuHier (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_NeuHier_Condition;
	information	= Info_Mod_Erhard_NeuHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich bin neu hier. Wie komme ich am schnellsten nach Khorata?";
};

FUNC INT Info_Mod_Erhard_NeuHier_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_August_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_NeuHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_NeuHier_15_00"); //Ich bin neu hier. Wie komme ich am schnellsten nach Khorata?
	AI_Output(self, hero, "Info_Mod_Erhard_NeuHier_06_01"); //Ein Neuer? Und kein H�ndler? Ist noch nicht h�ufig vorgekommen, dass wir Besuch kriegen.
	AI_Output(self, hero, "Info_Mod_Erhard_NeuHier_06_02"); //Der k�rzeste Weg f�hrt hinter meinem Haus durch einen schmalen Felspass.
	AI_Output(self, hero, "Info_Mod_Erhard_NeuHier_06_03"); //Danach triffst du auf eine Stra�e, die links zum Stadttor f�hrt.
};

INSTANCE Info_Mod_Erhard_Arbeit (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Arbeit_Condition;
	information	= Info_Mod_Erhard_Arbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du Arbeit f�r mich?";
};

FUNC INT Info_Mod_Erhard_Arbeit_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erhard_Arbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Arbeit_15_00"); //Hast du Arbeit f�r mich?
	AI_Output(self, hero, "Info_Mod_Erhard_Arbeit_06_01"); //N�, Mann. Wir kommen schon gut zurecht.
	AI_Output(self, hero, "Info_Mod_Erhard_Arbeit_06_02"); //In der Stadt gibt es aber sicherlich jemanden, der was zu tun hat f�r dich.
};

INSTANCE Info_Mod_Erhard_Moor (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Moor_Condition;
	information	= Info_Mod_Erhard_Moor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir etwas �ber das Moor erz�hlen?";
};

FUNC INT Info_Mod_Erhard_Moor_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erhard_Moor_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Moor_15_00"); //Kannst du mir etwas �ber das Moor erz�hlen?
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_01"); //Ja, das k�nnte ich machen. Es w�rde aber nicht daf�r sorgen, dass du heute Nacht angenehme Tr�ume hast.
	AI_Output(hero, self, "Info_Mod_Erhard_Moor_15_02"); //Ich geh das Risiko ein.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_03"); //Dort leben einige Ausgesto�ene unter der Fuchtel einer alten Hexe.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_04"); //Es ist schon einige Generationen her, dass ihre Vorfahren Khorata verlassen mussten, aufgrund irgendwelcher Rituale.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_05"); //Tja, und jetzt sind sie noch durchgeknallter als der durchschnittliche Hofstaatler.
	AI_Output(hero, self, "Info_Mod_Erhard_Moor_15_06"); //Hofstaatler?
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_07"); //Herrje, du hast noch nicht von ihnen geh�rt?
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_08"); //Sie haben eine sehr wirkungsvolle Droge entdeckt, die sie Freudenspender nennen.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_09"); //Und jetzt laufen sie den ganzen Tag v�llig zugedr�hnt rum.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_10"); //Frag mich nicht, wie sie es noch schaffen, mit dem Zeug zu handeln.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_11"); //Aber es erfreut sich auch in Khorata gro�er Beliebtheit. So viel ist mal sicher ...
};

INSTANCE Info_Mod_Erhard_Hofstaat (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Hofstaat_Condition;
	information	= Info_Mod_Erhard_Hofstaat_Info;
	permanent	= 0;
	important	= 0;
	description	= "Und wie komme ich zum Hofstaat?";
};

FUNC INT Info_Mod_Erhard_Hofstaat_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Erhard_Moor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Hofstaat_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Hofstaat_15_00"); //Und wie komme ich zum Hofstaat?
	AI_Output(self, hero, "Info_Mod_Erhard_Hofstaat_06_01"); //Das ist noch ein ganzes St�ck.
	AI_Output(self, hero, "Info_Mod_Erhard_Hofstaat_06_02"); //Wenn du diesen Weg vor meinem Haus weiterl�ufst und dich au�er beim Eingang zum Sumpf bei den Abzweigungen immer rechts h�ltst, kommst du irgendwann zu einer langgezogenen H�hle, hinter der der Hofstaat liegt.
	AI_Output(self, hero, "Info_Mod_Erhard_Hofstaat_06_03"); //Allen, die noch einigerma�en klar in der Birne sind, ist der Hofstaat allerdings nicht zu empfehlen.
};

INSTANCE Info_Mod_Erhard_Korndiebe (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Korndiebe_Condition;
	information	= Info_Mod_Erhard_Korndiebe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Es gibt da etwas, das ich dir erz�hlen muss ...";
};

FUNC INT Info_Mod_Erhard_Korndiebe_Condition()
{
	if (Mod_REL_Korndiebe == 2)
	&& (Npc_HasItems(hero, ItMi_Kornballen) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Korndiebe_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Korndiebe_15_00"); //Es gibt da etwas, das ich dir erz�hlen muss ...
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_01"); //Was denn?
	AI_Output(hero, self, "Info_Mod_Erhard_Korndiebe_15_02"); //Eine R�uberbande hat mich geschickt, damit ich ihnen dein Korn bringe.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_03"); //(lacht) Ach, das ist ja nichts Neues, dass sie versuchen, meine Ernte zu stehlen.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_04"); //Einmal ist einer in der Mittagszeit in mein Haus geschlichen.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_05"); //Alle haben ihn beobachtet, aber es ist ihm erst aufgefallen, als er mit dem Korn auf dem Arm rauskam.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_06"); //Mach dir um die Jungs keine Sorge, ich habe schon in der Stadt Bescheid gegeben.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_07"); //Ihr Lager wird nicht mehr lange bestehen.

	B_LogEntry	(TOPIC_MOD_KHORATA_KORNDIEBE, "Ich habe die Korndiebe verraten. Sie sollten ihre Dumme-Jungen-Spielchen bleiben lassen.");

	B_GivePlayerXP	(100);

	B_G�ttergefallen (1, 1);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Erhard_Dokumente (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Dokumente_Condition;
	information	= Info_Mod_Erhard_Dokumente_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du hier zuf�llig ein paar verirrte Zettel gefunden?";
};

FUNC INT Info_Mod_Erhard_Dokumente_Condition()
{
	if (Mod_REL_Dokumente == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_00"); //Hast du hier zuf�llig ein paar verirrte Zettel gefunden?
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_01"); //Und ob! Vor ein paar Tagen, hinter dem Haus.
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_02"); //Ich muss sagen, davon konnten meine Frau und ich noch eine Menge lernen!
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_03"); //Darf ich die Seiten haben?
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_04"); //Kann ich gut verstehen, dass du auch mal einen Blick hineinwerfen willst.
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_05"); //Ich muss dich aber leider entt�uschen; kurz danach habe ich die Aufzeichnungen an einen befreundeten H�ndler weitergegeben.
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_06"); //Wo finde ich den H�ndler?
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_07"); //Nicht immer am gleichen Ort! Aber zur Zeit h�lt er sich in Khorinis auf, wenn ich recht informiert bin.
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_08"); //Baltram ist sein Name.
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_09"); //Danke f�r die Informationen.

	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "Erhard hatte die Dokumente kurzzeitig, hat sie aber an Baltram weitergegeben, den ich in der Stadt Khorinis finde.");

	Mod_REL_Dokumente = 2;
};

INSTANCE Info_Mod_Erhard_Hopfensack (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Hopfensack_Condition;
	information	= Info_Mod_Erhard_Hopfensack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dem Brauer geht das Bier aus, weil du keinen Hopfen lieferst.";
};

FUNC INT Info_Mod_Erhard_Hopfensack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brauer_August02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Hopfensack_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Hopfensack_15_00"); //Dem Brauer geht das Bier aus, weil du keinen Hopfen lieferst.
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_01"); //Na und? Sollen die doch kiffen oder diesen Freudenspender schlucken ...
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_02"); //Im Ernst. Ich hab drei Sack Hopfen. Der Knecht sollte es zum Brauer bringen. Aber der ist abg�ngig.
	AI_Output(hero, self, "Info_Mod_Erhard_Hopfensack_15_03"); //Das kann nicht sein. Ich komme gerade vom Brauer.
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_04"); //Den Knecht meine ich. Er sollte die S�cke in die Stadt bringen. Nun ist er schon zwei Tagen weg. Wenn's eilt, k�nntest du vielleicht ...
	AI_Output(hero, self, "Info_Mod_Erhard_Hopfensack_15_06"); //Verstehe. Ich nehme die S�cke mit.
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_07"); //Prima. Hier, etwas Tr�gerlohn. Und sag dem Brauer, er schuldet mit 150 Gold.

	CreateInvItems	(hero, ItMi_Gold, 30);
	CreateInvItems	(hero, ItMi_Hopfensack, 3);

	B_ShowGivenThings	("30 Gold und 3 Hopfens�cke erhalten");
};

INSTANCE Info_Mod_Erhard_RebellischesSchaf (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_RebellischesSchaf_Condition;
	information	= Info_Mod_Erhard_RebellischesSchaf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich soll eines deiner Schafe zum Metzger f�hren.";
};

FUNC INT Info_Mod_Erhard_RebellischesSchaf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_Schaf))
	&& (Mod_Metzger_Schaf == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_RebellischesSchaf_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_00"); //Ich soll eines deiner Schafe zum Metzger f�hren.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_01"); //(erleichtert) Na endlich kommt mal jemand!
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_02"); //Warum bist du dar�ber so gl�cklich?
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_03"); //Ich habe ein ganz junges Schaf, das mir die ganze Zeit Probleme bereitet.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_04"); //Vor ein paar Jahren hat einer meiner Erntehelfer ein paar L�mmchen gestohlen und sp�ter freigelassen.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_05"); //Diese L�mmer haben durch Zufall �berlebt und sind mittlerweile auf eine kleine Herde angewachsen.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_06"); //Seit Vincent dem Freudenspender verfallen ist, k�mmert er sich nicht mehr um die Regulation der Tierbest�nde.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_07"); //Und so wird die wilde Schafpopulation immer gr��er.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_08"); //Mein Lamm Emma ist mir vor einiger Zeit davongelaufen und wohl in Kontakt mit dieser Gruppe gekommen.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_09"); //Seitdem nutzt es jede Ablenkung f�r einen Fluchtversuch.
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_10"); //Warum l�sst du Emma nicht einfach ziehen?
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_11"); //Wei�t du, wie viel Gold ein Lamm bringt? Nat�rlich nicht, sonst h�ttest du nicht gefragt.
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_12"); //Fang doch ein paar Exemplare aus der wilden Herde als Ausgleich. Vielleicht sind die gen�gsamer.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_13"); //Nein. Deren Fleisch bringt auf dem Markt kaum Ertrag.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_14"); //In der freien Natur sammeln Schafe kaum Fettreserven, und ihr mageres Fleisch ist z�h und sehnig.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_15"); //Damit gibt sich heutzutage doch niemand zufrieden.
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_16"); //Also gut. Dann nehme ich Emma mit zum Metzger.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_17"); //Genau das wollte ich auch vorschlagen. Aber lass dich von dem Vieh blo� nicht austricksen!
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_18"); //Die wilde Herde grast auf der Wiese mit dem verlassenen Haus, gegen�ber vom Wasserfall.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_19"); //Du solltest sie weitr�umig umgehen.

	B_LogEntry	(TOPIC_MOD_METZGER_SCHAF, "Das Lamm Emma hat Erhard in letzter Zeit immer wieder Probleme bereitet, weil es zu einer wilden Schafherde �berlaufen wollte. Dem soll ich ein Ende setzen, indem ich Emma zum Metzger f�hre. Dabei darf ich nicht in Sichtkontakt zur Schafsherde geraten, um Emma nicht zu verlieren.");

	Wld_InsertNpc	(Hammel_Emma_01,	"REL_SURFACE_225");
	Wld_InsertNpc	(Hammel_Emma_02,	"REL_SURFACE_225");

	Wld_InsertNpc	(Schaf_Emma_01,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_02,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_03,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_04,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_05,	"REL_SURFACE_225");
};

INSTANCE Info_Mod_Erhard_Bierhexen (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Bierhexen_Condition;
	information	= Info_Mod_Erhard_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Gerste des Braumeisters ist durch Urin verunreinigt.";
};

FUNC INT Info_Mod_Erhard_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brauer_Bierhexen4))
	&& (Mod_Bierhexen == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Bierhexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_00"); //Die Gerste des Braumeisters ist durch Urin verunreinigt. Was wei�t du dar�ber?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_01"); //Dass wohl jemand seine Blase dar�ber entleert hat. (kriegt einen Lachanfall)
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_02"); //Hast du damit was zu tun?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_03"); //(erheitert) Wird das ein Verh�r oder so? Nat�rlich piss ich ihm auf die Gerste, bevor ich sie losschicke. (lacht)
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_04"); //Krieg dich mal wieder ein. Mir ist es durchaus ernst.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_05"); //Na gut, auch wenn's schwer f�llt.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_06"); //Also, was soll ich denn damit zu tun haben?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_07"); //Die Gerste wird nach dem Mahlen im Lagerhaus verwahrt. Wenn mir jemand einen Streich spielen wollte, k�nnte er es dort machen.
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_08"); //Und wer k�nnte dir einen Streich spielen wollen?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_09"); //Melvin und seine Bande von Hohlbirnen, ganz klar.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_10"); //Obwohl die bestimmt nicht unbemerkt geblieben w�ren. Haben einfach kein Talent.
};

INSTANCE Info_Mod_Erhard_Bierhexen2 (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Bierhexen2_Condition;
	information	= Info_Mod_Erhard_Bierhexen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Den Melvin werde ich mir mal vorkn�pfen.";
};

FUNC INT Info_Mod_Erhard_Bierhexen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_Bierhexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Bierhexen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen2_15_00"); //Den Melvin werde ich mir mal vorkn�pfen.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen2_06_01"); //Meinetwegen kannst du ihn auch windelweich pr�geln. Verdient hat er es auf jeden Fall.

	B_LogEntry	(TOPIC_MOD_KHORATA_BIERHEXEN, "Erhard hat den Verdacht auf Melvin und seine Bande umgelenkt, die f�r derartige Sp��e anscheinend zu haben sind.");
};

INSTANCE Info_Mod_Erhard_Bierhexen3 (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Bierhexen3_Condition;
	information	= Info_Mod_Erhard_Bierhexen3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wo h�lt er sich mit seiner Truppe auf?";
};

FUNC INT Info_Mod_Erhard_Bierhexen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_Bierhexen))
	&& (Mod_Bierhexen == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Bierhexen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen3_15_00"); //Wo h�lt er sich mit seiner Truppe auf?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen3_06_01"); //Im Nordosten Relendels. Du l�ufst von hier aus Richtung Moor, folgst aber nicht dem Weg hinein, sondern schl�gst dich geradeaus durch einen kleinen Wald.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen3_06_02"); //Dahinter auf einer kleinen Lichtung stehen ihre k�mmerlichen Zelte.
};

INSTANCE Info_Mod_Erhard_Freudenspender (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Freudenspender_Condition;
	information	= Info_Mod_Erhard_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Willst du Freudenspender?";
};                       

FUNC INT Info_Mod_Erhard_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Erhard_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Freudenspender_15_00"); //Willst du Freudenspender?
	AI_Output(self, hero, "Info_Mod_Erhard_Freudenspender_06_01"); //Junge, daf�r bin ich zu alt. In meinem Alter ist man �ber jeden Tag gl�cklich, an dem man seinen klaren Geist behalten kann.
};

INSTANCE Info_Mod_Erhard_Pickpocket (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Pickpocket_Condition;
	information	= Info_Mod_Erhard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Erhard_Pickpocket_Condition()
{
	C_Beklauen	(71, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

	Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_BACK, Info_Mod_Erhard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Erhard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

		Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Erhard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Erhard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Erhard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Erhard_EXIT (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_EXIT_Condition;
	information	= Info_Mod_Erhard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Erhard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erhard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};