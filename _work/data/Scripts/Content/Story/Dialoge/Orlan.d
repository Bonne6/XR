INSTANCE Info_Mod_Orlan_Hi (C_INFO)
{	
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Hi_Condition;
	information	= Info_Mod_Orlan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Orlan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Orlan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Orlan_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Orlan_Hi_05_01"); //Willkommen in meiner Taverne, Fremder.
	AI_Output(self, hero, "Info_Mod_Orlan_Hi_05_02"); //Was kann ich f�r dich tun? Brauchst du was zu trinken? Oder suchst du vielleicht ein Bett f�r die Nacht?

	Log_CreateTopic	(TOPIC_MOD_HAENDLER_OHNELAGER, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_OHNELAGER, "Orlan kann mir was zu trinken verkaufen und mir ein Zimmer vermieten.");
};

INSTANCE Info_Mod_Orlan_DunklerPilger (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_DunklerPilger_Condition;
	information	= Info_Mod_Orlan_DunklerPilger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gab es in letzter Zeit hier zuf�llig seltsame Ereignisse oder Erscheinungen?";
};

FUNC INT Info_Mod_Orlan_DunklerPilger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_DunklerPilger_Info()
{
	AI_Output(hero, self, "Info_Mod_Orlan_DunklerPilger_15_00"); //Gab es in letzter Zeit hier zuf�llig seltsame Ereignisse oder Erscheinungen?
	AI_Output(self, hero, "Info_Mod_Orlan_DunklerPilger_05_01"); //Seltsame Erscheinungen? Hmm, lass mich nachdenken. Ja, Rukhar hat vor einigen Stunden ist hier einen dunklen Wanderer vor�ber gehen sehen.
	AI_Output(self, hero, "Info_Mod_Orlan_DunklerPilger_05_02"); //(lacht) Muss dem alten S�ufer ziemlich Angst gemacht haben, so aufgeregt, wie er von ihm berichtet hat.
	AI_Output(self, hero, "Info_Mod_Orlan_DunklerPilger_05_03"); //Achja und dann - ich bin mir nicht ganz sicher � habe ich auch den Eindruck, als w�rde seit einigen Stunden immer wieder ein kl�gliches �chzen aus der Grabesh�hle vor der Taverne kommen.
	AI_Output(self, hero, "Info_Mod_Orlan_DunklerPilger_05_04"); //Das ist sogar mir etwas unheimlich. Es geschehen ja recht merkw�rdige Dinge in der letzten Zeit ...
	AI_Output(hero, self, "Info_Mod_Orlan_DunklerPilger_15_05"); //Wohin ist der Wanderer gegangen?
	AI_Output(self, hero, "Info_Mod_Orlan_DunklerPilger_05_06"); //Rukhar meinte, er sei aus Richtung Akil�s Hof gekommen und hatte seine Schritte weiter Richtung See gelenkt.
	AI_Output(self, hero, "Info_Mod_Orlan_DunklerPilger_05_07"); //Wollte wohl zum Gro�bauernhof, oder Sekob�s Hof gehen, oder auch zum H�ndler, der in der H�tte am See lebt ...
	AI_Output(hero, self, "Info_Mod_Orlan_DunklerPilger_15_08"); //Danke f�r die Auskunft.
	AI_Output(self, hero, "Info_Mod_Orlan_DunklerPilger_05_09"); //Kein Problem. Wenn du ein gutes Zimmer brauchst f�r eine �bernachtung, oder du Lust nach einem k�hlen Bier versp�rst, wei�t du ja, wo du alles findest.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_DUNKLERPILGER, "Wie ich von Orlan erfahren habe, ist die dunkle Gestalt Richtung See weitergegangen.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Orlan_Untier (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Untier_Condition;
	information	= Info_Mod_Orlan_Untier_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orlan_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Untier_Info()
{
	AI_Output(self, hero, "Info_Mod_Orlan_Untier_05_00"); //Ohh, dieser Rukhar ...
	AI_Output(hero, self, "Info_Mod_Orlan_Untier_15_01"); //Was ist mit ihm?
	AI_Output(self, hero, "Info_Mod_Orlan_Untier_05_02"); //Erst bricht er wegen diesem dahergelaufenen Pilger in Panik aus, behauptet, er sei das B�se in Menschengestalt ... und jetzt will er gesehen haben, wie hier am helligten Tage ein meterhohes Untier Richtung Akil vorbeigelief.
	AI_Output(self, hero, "Info_Mod_Orlan_Untier_05_03"); //Tja, mit seinem Verstand scheint es bergab zu gehen ... allm�hlich muss ich mir Sorgen um ihn machen.

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Rukhar sah die Bestie Richtung Akils Hof laufen.");
};

INSTANCE Info_Mod_Orlan_Daemonisch (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Daemonisch_Condition;
	information	= Info_Mod_Orlan_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orlan_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_00"); //Darf ich dir etwas anbieten? Klosterwein zum Beispiel ist im Angebot ...
	AI_Output(hero, self, "Info_Mod_Orlan_Daemonisch_15_01"); //Nachher vielleicht. Wollte mich zuerst erkundigen, ob es irgendetwas Ungew�hnliches in letzter Zeit gab?

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_02"); //(zu sich selbst) Toll, jetzt werde ich den Klosterwein nicht mehr los.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_03"); //(wieder zum Helden) Na ja, ungew�hnliches ... ein Todesfall. Rukhar hat�s erwischt.
	AI_Output(hero, self, "Info_Mod_Orlan_Daemonisch_15_04"); //Was ist geschehen?
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_05"); //Naja, wahrscheinlich hat er sich einfach totgesoffen ... zumindest mit dem Segen Innos.
	AI_Output(hero, self, "Info_Mod_Orlan_Daemonisch_15_06"); //Wie meinst du das?
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_07"); //Nun, eine Flasche Wein nach der anderen hat er gesoffen, darunter auch viele Klosterwein.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_08"); //Er hat dann am sp�ten Abend einige Leute aus der Umgebung begleitet, die anderen in der Umgebung eine H�hle oder so zeigen wollten ...
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_09"); //Nach etwa zehn Minuten kam er ganz verst�rt in die Taverne gerannt und stotterte etwas von schwarzen Schatten und gellenden Schreien.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_10"); //Nach kurz darauf kamen die anderen jedoch v�llig unversehrt zur�ck.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_11"); //Ich habe ihn dann erst mal schlafen geschickt und einige seiner Begleiter haben sich noch um ihn gek�mmert.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_12"); //Und am n�chsten Morgen war er tot.
	AI_Output(hero, self, "Info_Mod_Orlan_Daemonisch_15_13"); //Was, einfach so tot?
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_14"); //Tja, auch bei dem komischen Pilger hatte Rukhar ja auch schon wahnhafte �ngste.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_15"); //Ist unmerklich St�ck f�r St�ck mit ihm abw�rts gegangen.
	AI_Output(hero, self, "Info_Mod_Orlan_Daemonisch_15_16"); //Und was waren das f�r Leute, die ihn begleitet haben?
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_17"); //Ach, Bauern und auch B�rger aus der Stadt die ich bislang ja noch gar nicht kannte.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_18"); //Zwei Novizen des Klosters waren glaube ich auch dabei.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_19"); //Ist an einigen Tagen ein recht gro�er Personenverkehr geworden in der letzten Zeit.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_20"); //Den Klosterwein will aber niemand mehr ... nach Rukhar�s Schicksal umso weniger.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_21"); //Naja, zumindest fressen viele jetzt wie die Scheunendrescher bei mir, sogar Novizen. Da kommt doch einiges wieder hinein.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch_05_22"); //Nur verwunderlich, warum die trotzdem alle so ausgemergelt erscheinen ...

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Von Orlan habe ich erfahren, dass Rukhar zu Tode gekommen ist. Er hatte einige B�rger, Bauern und Novizen, von denen in letzter Zeit viele in die Taverne kommen, abends nach drau�en - in eine H�hle, oder so - begleitet und zuvor viel Klosterwein getrunken. Er kam alleine schreiend zur�ck gerannt und soll irgendwas von schwarzen Schatten und Schreien berichtet haben, seine Begleiter kamen etwas sp�ter nach. Am n�chsten morgen war er tot. Au�erdem erz�hlte Orlan, dass kaum jemand mehr Klosterwein trinkt, jedoch erstaunlich viel gegessen wird. Trotzdem erscheinen viele der Besucher sehr ausgemergelt ...");
};

INSTANCE Info_Mod_Orlan_Daemonisch2 (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Daemonisch2_Condition;
	information	= Info_Mod_Orlan_Daemonisch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orlan_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
	&& (Mod_HQ_Daemonisch == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Daemonisch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch2_05_00"); //(zu sich selbst) Ohh, bald kommen wahrscheinlich wieder die ganzen G�ste.
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch2_05_01"); //Langsam sollte ich mich daran machen, zum Bierfass nach oben zu gehen ...

	MOBNAME_XR_BIERFASS_ORLAN = "Bierfass";
};

INSTANCE Info_Mod_Orlan_Daemonisch3 (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Daemonisch3_Condition;
	information	= Info_Mod_Orlan_Daemonisch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orlan_Daemonisch3_Condition()
{
	if (Mod_HQ_Daemonisch_Orlan == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Daemonisch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch3_05_00"); //Was bei Innos ...?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Orlan_Daemonisch4 (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Daemonisch4_Condition;
	information	= Info_Mod_Orlan_Daemonisch4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orlan_Daemonisch4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_BauerBeiOrlan_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Daemonisch4_Info()
{
	AI_Output(self, hero, "Info_Mod_Orlan_Daemonisch4_05_00"); //Na toll, da geht sie hin, meine Kundschaft.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "So, Orlans Taverne h�tten wir.");
};

INSTANCE Info_Mod_Orlan_Unheil (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Unheil_Condition;
	information	= Info_Mod_Orlan_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sind dir in den letzten Stunden vielleicht ungew�hnliche Dinge aufgefallen?";
};

FUNC INT Info_Mod_Orlan_Unheil_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Hi))
	&& (Mod_WM_Boeden == 12)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Orlan_Unheil_15_00"); //Sind dir in den letzten Stunden vielleicht ungew�hnliche Dinge aufgefallen?
	AI_Output(self, hero, "Info_Mod_Orlan_Unheil_05_01"); //Was?! Meinst du diese Frage ernst? F�r Sp��e scheint mir jetzt nicht der richtige Anlass zu bestehen.
	AI_Output(self, hero, "Info_Mod_Orlan_Unheil_05_02"); //Die Toten erheben sich aus ihren Gr�bern, direkt hinter meiner Taverne, unter ihnen ein f�rchterliches Gesch�pf, gro�, wie ein Baum.
	AI_Output(self, hero, "Info_Mod_Orlan_Unheil_05_03"); //Auf dem Weidenplateau sollen sich gar Unget�me herumtreiben, die sich fast mit einem Berg messen k�nnen, umgeben von vielen furchtbaren Gesch�pfen.
	AI_Output(self, hero, "Info_Mod_Orlan_Unheil_05_04"); //Frag doch mal den verst�rten Pardos von Bengars Hof - der einzige von dort, der dem Unheil entrinnen konnte.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Unget�me gigantischen Ausma�es auf dem Weidenplateau. Das sollte Saturas interessieren.");
	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Horden von Untoten scheinen von ihnen vorangestellten Kreaturen angef�hrt zu werden.");

	Mod_WM_SawBigOne = TRUE;
	Mod_WM_SawGraveOne = TRUE;
};

INSTANCE Info_Mod_Orlan_Pedro (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Pedro_Condition;
	information	= Info_Mod_Orlan_Pedro_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ist hier ein Novize reingekommen?";
};

FUNC INT Info_Mod_Orlan_Pedro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Parlan_Ring_Zurueck))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Pedro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Pedro_Info()
{
	AI_Output(hero, self, "Info_Mod_Orlan_Pedro_15_00"); //Ist hier ein Novize reingekommen?
	AI_Output(self, hero, "Info_Mod_Orlan_Pedro_05_01"); //Au�er dir keiner.
	AI_Output(hero, self, "Info_Mod_Orlan_Pedro_15_02"); //Der J�ger Dragomir behauptet er habe einen Novizen hier rein rennen sehen.
	AI_Output(self, hero, "Info_Mod_Orlan_Pedro_05_03"); //Hier ist kein Novize. Du kannst ja die anderen Besucher hier befragen.

	B_LogEntry	(TOPIC_MOD_PARLAN_FEUERRING, "Orlan sagt, dass Pedro nicht in die Taverne gekommen ist. Ich sollte mal ein ernstes W�rtchen mit Dragomir reden.");
};

INSTANCE Info_Mod_Orlan_Kobold (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Kobold_Condition;
	information	= Info_Mod_Orlan_Kobold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orlan_Kobold_Condition()
{
	if (Mod_NL_Siegelbuch == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Kobold_Info()
{
	AI_Output(self, hero, "Info_Mod_Orlan_Kobold_05_00"); //Du hattest aber verdammtes Gl�ck, dass wir dich noch gefunden haben, bevor die ganze Horde d�monischer Wesen hier vorbeizog.
	AI_Output(hero, self, "Info_Mod_Orlan_Kobold_15_01"); //(verwirrt) Wie ... was ist geschehen?
	AI_Output(self, hero, "Info_Mod_Orlan_Kobold_05_02"); //Genau wei� ich es nicht. Ich sah nur, wie du leblos am Boden, lagst und ein kleiner D�mon deine Taschen nach Gold durchw�hlte. Wir verscheuchten ihn und holten dich herein.
	AI_Output(self, hero, "Info_Mod_Orlan_Kobold_05_03"); //Kurze Zeit sp�ter tobte drau�en auch schon das Chaos und wir mussten uns in der Taverne verschanzen ...
	AI_Output(hero, self, "Info_Mod_Orlan_Kobold_15_04"); //Was, wie viel Zeit ist seit dem vergangen?
	AI_Output(self, hero, "Info_Mod_Orlan_Kobold_05_05"); //Nun, ein guter Tag.
	AI_Output(hero, self, "Info_Mod_Orlan_Kobold_15_06"); //Dann sollte ich wieder schnell aufbrechen. Bei dir ist in der Taverne sonst alles in bester Ordnung?
	AI_Output(self, hero, "Info_Mod_Orlan_Kobold_05_07"); //Ja, an sich schon. Leider habe ich oben das Fenster zu meinem Vorratsraum offen stehen lassen.
	AI_Output(self, hero, "Info_Mod_Orlan_Kobold_05_08"); //(w�tend) Mein ganzer Schnaps ist weg! Einer von diesen verdammten Zwergd�monen muss eingestiegen sein und ihn mir gestohlen haben. Dreckige Diebe!
	AI_Output(self, hero, "Info_Mod_Orlan_Kobold_05_09"); //(wieder ruhiger) Ach ... mittlerweile scheinen sie sich die D�monen und Riesenechsen aber in der Umgebung verstreut zu haben.
	AI_Output(self, hero, "Info_Mod_Orlan_Kobold_05_10"); //Vorsicht ist trotzdem geboten, wenn man sich nach drau�en wagt.
	AI_Output(hero, self, "Info_Mod_Orlan_Kobold_15_11"); //Verstehe. Hier hast du einige Goldm�nzen als Dank f�r meine Rettung ... (zu sich selbst) Verdammt, viel gelassen hat mir der D�mon wirklich nicht.

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 100);
	}
	else
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, Npc_HasItems(hero, ItMi_Gold));
	};

	Wld_InsertItem	(ItMi_KoboldGold, "FP_ITEM_KOBOLDGOLD");

	AI_Output(self, hero, "Info_Mod_Orlan_Kobold_05_12"); //Danke. Und pass gut auf dich auf.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Verdammt war dieser D�mon aber schnell ... und mein Gold gestohlen hat er mir auch noch. Einen ganzen Tag lag ich bewusstlos bei Orlan und die Monster haben sich mittlerweile in die Gegend zerstreut. Orlan beklagte den Verlust seiner Schnapsreserven ...");

	// M�nzenspur

	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_01");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_02");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_03");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_04");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_05");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_06");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_07");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_08");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_09");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_10");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_11");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_12");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_13");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_14");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_15");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_16");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_17");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_18");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_19");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_20");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_21");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_22");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_23");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_24");
	Wld_InsertItem	(ItMi_Gold, "FP_ITEM_GOLD_VON_KOBOLD_25");
};

INSTANCE Info_Mod_Orlan_Gorax (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Gorax_Condition;
	information	= Info_Mod_Orlan_Gorax_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gorax schickt mich.";
};

FUNC INT Info_Mod_Orlan_Gorax_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorax_Andokai))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Myxir_Wein))
	&& (Npc_HasItems(hero, ItFo_KWine) == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Gorax_Info()
{
	AI_Output(hero, self, "Info_Mod_Orlan_Gorax_15_00"); //Gorax schickt mich. Er hat mir diesen Wein f�r dich mitgegeben.

	B_GiveInvItems	(hero, self, ItFo_KWine, 10);

	AI_Output(self, hero, "Info_Mod_Orlan_Gorax_05_01"); //Wunderbar. Der Klosterwein ist der beste, den man hier in der Gegend bekommen kann.
	AI_Output(self, hero, "Info_Mod_Orlan_Gorax_05_02"); //Hier hast du das Gold f�r Gorax.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	Npc_RemoveInvItems	(self, ItFo_KWine, 10);

	B_SetTopicStatus	(TOPIC_MOD_ANDOKAI_WEIN, LOG_FAILED);
};

INSTANCE Info_Mod_Orlan_Zauberwasser (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Zauberwasser_Condition;
	information	= Info_Mod_Orlan_Zauberwasser_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab hier eine Lieferung Zauberwasser.";
};

FUNC INT Info_Mod_Orlan_Zauberwasser_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Constantino_Zauberwasser))
	&& (Npc_HasItems(hero, ItMi_Zauberwasser_MIS) > 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Zauberwasser_Info()
{
	AI_Output(hero, self, "Info_Mod_Orlan_Zauberwasser_15_00"); //Ich hab hier eine Lieferung Zauberwasser.

	B_GiveInvItems	(hero, self, ItMi_Zauberwasser_MIS, 8);

	AI_Output(self, hero, "Info_Mod_Orlan_Zauberwasser_05_01"); //Wird auch langsam Zeit.
};

INSTANCE Info_Mod_Orlan_GnomSchnaps (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_GnomSchnaps_Condition;
	information	= Info_Mod_Orlan_GnomSchnaps_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich konnte einen Teil deines Schnapses retten.";
};

FUNC INT Info_Mod_Orlan_GnomSchnaps_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gnom_Joints))
	&& (Npc_HasItems(hero, ItMi_OrlansSchnaps) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_GnomSchnaps_Info()
{
	AI_Output(hero, self, "Info_Mod_Orlan_GnomSchnaps_15_00"); //Ich konnte einen Teil deines Schnapses retten.

	B_GiveInvItems	(hero, self, ItMi_OrlansSchnaps, 1);

	AI_Output(self, hero, "Info_Mod_Orlan_GnomSchnaps_05_01"); //Was, nicht m�glich, du nimmst mich auf den Arm ... Tats�chlich ...
	AI_Output(self, hero, "Info_Mod_Orlan_GnomSchnaps_05_02"); //Wie ist es dir gelungen diesen Unget�men meinen guten Schnaps zu entrei�en?
	AI_Output(self, hero, "Info_Mod_Orlan_GnomSchnaps_05_03"); //Was hast du mit den Misset�tern gemacht?
	AI_Output(hero, self, "Info_Mod_Orlan_GnomSchnaps_15_04"); //Ach, der Dieb ist erst mal ordentlich bedient.
	AI_Output(self, hero, "Info_Mod_Orlan_GnomSchnaps_05_05"); //Du musst der gr��te Krieger aller Zeiten sein.
	AI_Output(self, hero, "Info_Mod_Orlan_GnomSchnaps_05_06"); //Es ist mir eine Ehre, dass ich dich bei mir beherbergen d�rfte.
	AI_Output(self, hero, "Info_Mod_Orlan_GnomSchnaps_05_07"); //Mit dir auf Khorinis bin ich mir sicher, dass wir dieses Problems bald Herr werden.

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Orlan_Zimmer (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Zimmer_Condition;
	information	= Info_Mod_Orlan_Zimmer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie viel kostet ein Zimmer bei dir?";
};

FUNC INT Info_Mod_Orlan_Zimmer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Zimmer_Info()
{
	AI_Output(hero, self, "Info_Mod_Orlan_Zimmer_15_00"); //Wie viel kostet ein Zimmer bei dir?
	AI_Output(self, hero, "Info_Mod_Orlan_Zimmer_05_01"); //100 Goldm�nzen.
};

INSTANCE Info_Mod_Orlan_ZimmerMieten (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_ZimmerMieten_Condition;
	information	= Info_Mod_Orlan_ZimmerMieten_Info;
	permanent	= 1;
	important	= 0;
	description	= "Gib mir ein Zimmer (100 Gold)";
};

FUNC INT Info_Mod_Orlan_ZimmerMieten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Zimmer))
	&& (Npc_HasItems(hero, ITKE_ORLAN_HOTELZIMMER) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_ZimmerMieten_Info()
{
	AI_Output(hero, self, "Info_Mod_Orlan_ZimmerMieten_15_00"); //Gib mir ein Zimmer.

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		B_GiveInvItems	(hero, self, ItMi_Gold, 100);

		AI_Output(self, hero, "Info_Mod_Orlan_ZimmerMieten_05_01"); //Hier hast du einen Schl�ssel. Du kannst dir dein Zimmer aussuchen.

		B_GiveInvItems	(self, hero, ItKe_Orlan_Hotelzimmer, 1);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Orlan_ZimmerMieten_05_02"); //Komm wieder, wenn du genug Gold hast.
	};
};

INSTANCE Info_Mod_Orlan_Trade (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Trade_Condition;
	information	= Info_Mod_Orlan_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Orlan_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orlan_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Orlan_Pickpocket (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_Pickpocket_Condition;
	information	= Info_Mod_Orlan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Orlan_Pickpocket_Condition()
{
	C_Beklauen	(63, ItFo_Wine, 5);
};

FUNC VOID Info_Mod_Orlan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Orlan_Pickpocket);

	Info_AddChoice	(Info_Mod_Orlan_Pickpocket, DIALOG_BACK, Info_Mod_Orlan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Orlan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Orlan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Orlan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Orlan_Pickpocket);
};

FUNC VOID Info_Mod_Orlan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Orlan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Orlan_Pickpocket);

		Info_AddChoice	(Info_Mod_Orlan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Orlan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Orlan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Orlan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Orlan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Orlan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Orlan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Orlan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Orlan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Orlan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Orlan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Orlan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Orlan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Orlan_EXIT (C_INFO)
{
	npc		= Mod_776_NONE_Orlan_NW;
	nr		= 1;
	condition	= Info_Mod_Orlan_EXIT_Condition;
	information	= Info_Mod_Orlan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Orlan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Orlan_EXIT_Info()
{
	if (Npc_HasItems(hero, ItKe_Orlan_Hotelzimmer) == 1)
	&& (Mod_Orlan_Bett == 0)
	{
		AI_Output(self, hero, "Info_Mod_Orlan_EXIT_05_00"); //W�nsche gute Nacht.

		Mod_Orlan_Bett = 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Orlan_EXIT_05_01"); //Beehre mich bald wieder.
	};

	AI_StopProcessInfos	(self);
};