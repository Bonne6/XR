INSTANCE Info_Mod_Thys_Hi (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Hi_Condition;
	information	= Info_Mod_Thys_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Hi_07_00"); //Was willst du hier?

	Info_ClearChoices	(Info_Mod_Thys_Hi);

	Info_AddChoice	(Info_Mod_Thys_Hi, "Ich suche eine bestimmte Spruchrolle.", Info_Mod_Thys_Hi_B);

	if (VMG_Second == 6)
	&& (Npc_HasItems(hero, ItFo_Fish) > 0)
	{
		Info_AddChoice	(Info_Mod_Thys_Hi, "Ich habe dir etwas mitgebracht.", Info_Mod_Thys_Hi_A);
	};
};

FUNC VOID Info_Mod_Thys_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_B_15_00"); //Ich suche eine bestimmte Spruchrolle.
	AI_Output(self, hero, "Info_Mod_Thys_Hi_B_07_01"); //Warum sollte ich dir helfen?

	Info_ClearChoices	(Info_Mod_Thys_Hi);

	Info_AddChoice	(Info_Mod_Thys_Hi, "Was soll ich f�r dich tun?", Info_Mod_Thys_Hi_D);
	Info_AddChoice	(Info_Mod_Thys_Hi, "Weil ich dir sonst die Kehle durchschneide.", Info_Mod_Thys_Hi_C);
};

FUNC VOID Info_Mod_Thys_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_D_15_00"); //Was soll ich f�r dich tun?
	AI_Output(self, hero, "Info_Mod_Thys_Hi_D_07_01"); //Bring mir etwas zu essen. Und zu trinken. Zwei Flaschen Wein und ein Brot sollten f�r�s Erste reichen.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Ich soll Thys zwei Flaschen Wein und ein Brot geben, bevor er weiter mit mir redet.");

	VMG_Second = 7;

	Info_ClearChoices	(Info_Mod_Thys_Hi);
};

FUNC VOID Info_Mod_Thys_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_C_15_00"); //Weil ich dir sonst die Kehle durchschneide.
	AI_Output(self, hero, "Info_Mod_Thys_Hi_C_07_01"); //Versuch�s doch mal, B�rschchen.
	AI_Output(hero, self, "Info_Mod_Thys_Hi_C_15_02"); //Ich will keinen �rger. Nur eine Spruchrolle.

	Info_ClearChoices	(Info_Mod_Thys_Hi);

	Info_AddChoice	(Info_Mod_Thys_Hi, "Was soll ich f�r dich tun?", Info_Mod_Thys_Hi_D);
};

FUNC VOID Info_Mod_Thys_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_A_15_00"); //Ich habe dir etwas mitgebracht.

	B_GiveInvItems	(hero, self, ItFo_Fish, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Hi_A_07_01"); //Ah, du kennst unsere Br�uche. Was kann ich f�r dich tun?

	VMG_Second = 8;

	Info_ClearChoices	(Info_Mod_Thys_Hi);
};

INSTANCE Info_Mod_Thys_HabEssen (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_HabEssen_Condition;
	information	= Info_Mod_Thys_HabEssen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab deine Sachen.";
};

FUNC INT Info_Mod_Thys_HabEssen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Hi))
	&& (VMG_Second == 7)
	&& (Npc_HasItems(hero, ItFo_Bread) > 0)
	&& (Npc_HasItems(hero, ItFo_Wine) > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_HabEssen_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_HabEssen_15_00"); //Ich hab deine Sachen.

	B_ShowGivenThings	("Zwei Wein und ein Brot gegeben");

	AI_Output(self, hero, "Info_Mod_Thys_HabEssen_07_01"); //Vielen Dank. Was kann ich nun f�r dich tun?

	VMG_Second = 8;
};

INSTANCE Info_Mod_Thys_Zauber (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Zauber_Condition;
	information	= Info_Mod_Thys_Zauber_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich suche einen Verwandlungszauber. Zur Fleischwanze.";
};

FUNC INT Info_Mod_Thys_Zauber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Hi))
	&& (VMG_Second == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Zauber_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_Zauber_15_00"); //Ich suche einen Verwandlungszauber. Zur Fleischwanze.
	AI_Output(self, hero, "Info_Mod_Thys_Zauber_07_01"); //Da kann ich dir helfen. Zuf�llig habe ich einen hier. Umsonst gibt es den allerdings nicht.
	AI_Output(hero, self, "Info_Mod_Thys_Zauber_15_02"); //Was soll ich tun?
	AI_Output(self, hero, "Info_Mod_Thys_Zauber_07_03"); //Ich bin ziemlich einsam hier. Bringe mir jemanden aus dem Dorf zum Unterhalten.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Thys m�chte, dass ich ihm jemanden aus dem Dorf bringe, mit dem er sich unterhalten kann.");
};

INSTANCE Info_Mod_Thys_Scroll (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Scroll_Condition;
	information	= Info_Mod_Thys_Scroll_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Scroll_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Zauber))
	&& (VMG_Second == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Scroll_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_00"); //Ah, gut! Du willst also den Verwandlungszauber, mit dem man sich in eine Fleischwanze verwandeln kann?
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_15_01"); //Ja.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_02"); //Also gut, du kannst ihn haben. Hier.

	CreateInvItems	(self, ItSc_TrfMeatbug, 1);
	B_GiveInvItems	(self, hero, ItSc_TrfMeatbug, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_03"); //Pass gut darauf aus.
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_15_04"); //Vielen Dank. Aber eins noch: Wie komme ich wieder von hier weg?
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_05"); //Bist du durch das Portal gekommen?
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_15_06"); //Ja.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_07"); //Alles klar. Ich erz�hle dir von einem Weg, wenn du mir ... sagen wir einen Fisch bringst.

	Info_ClearChoices	(Info_Mod_Thys_Scroll);

	Info_AddChoice	(Info_Mod_Thys_Scroll, "Okay.", Info_Mod_Thys_Scroll_B);
	Info_AddChoice	(Info_Mod_Thys_Scroll, "Vergiss es.", Info_Mod_Thys_Scroll_A);
};

FUNC VOID Info_Mod_Thys_Scroll_B()
{
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_B_15_00"); //Okay.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_B_07_01"); //Worauf wartest du noch?

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Ich soll Thys einen Fisch bringen, damit er mir erz�hlt, wie ich wieder von hier wegkomme.");

	VMG_Second = 10;

	Info_ClearChoices	(Info_Mod_Thys_Scroll);
};

FUNC VOID Info_Mod_Thys_Scroll_A()
{
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_A_15_00"); //Vergiss es.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_A_07_01"); //Also liegt dir gar nicht so viel an der Spruchrolle?
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_A_15_02"); //Doch, doch. Ich bringe dir deinen Fisch.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Ich soll Thys einen Fisch bringen, damit er mir erz�hlt, wie ich wieder von hier wegkomme.");

	VMG_Second = 10;

	Info_ClearChoices	(Info_Mod_Thys_Scroll);
};

INSTANCE Info_Mod_Thys_Fisch (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Fisch_Condition;
	information	= Info_Mod_Thys_Fisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Fisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Scroll))
	&& (VMG_Second == 10)
	&& (Npc_HasItems(hero, ItFo_Fish) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Fisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_07_00"); //Hast du den Fisch?
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_15_01"); //Ja, hier.

	B_GiveInvItems	(hero, self, ItFo_Fish, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Fisch_07_02"); //Oh, sch�n. Also folgendes: Du gehst einfach wieder zum Portal und sprichst folgende Worte: Aman rabbah kolir! Das war's.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Ich soll wieder zum Steinkreis gehen und die Worte 'Aman rabbah kolir' sprechen.");

	Info_ClearChoices	(Info_Mod_Thys_Fisch);

	Info_AddChoice	(Info_Mod_Thys_Fisch, "Vielen Dank. Ich mache mich auf den Weg.", Info_Mod_Thys_Fisch_B);
	Info_AddChoice	(Info_Mod_Thys_Fisch, "Das war alles? Du verarschst mich doch.", Info_Mod_Thys_Fisch_A);
};

FUNC VOID Info_Mod_Thys_Fisch_B()
{
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_B_15_00"); //Vielen Dank. Ich mache mich auf den Weg.
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_B_07_01"); //Mach's gut und danke f�r den Fisch!

	VMG_Second = 11;

	Info_ClearChoices	(Info_Mod_Thys_Fisch);
};

FUNC VOID Info_Mod_Thys_Fisch_A()
{
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_A_15_00"); //Das war alles? Du verarschst mich doch.
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_A_07_01"); //Nein. Finde es doch selbst heraus.
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_A_15_02"); //Das werde ich.
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_A_07_03"); //Mach�s gut und danke f�r den Fisch!

	VMG_Second = 11;

	Info_ClearChoices	(Info_Mod_Thys_Fisch);
};

INSTANCE Info_Mod_Thys_AlvarDead (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarDead_Condition;
	information	= Info_Mod_Thys_AlvarDead_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich h�rte, dass dir das Tagebuch des verschiedenen Alvar gebracht wurde?";
};

FUNC INT Info_Mod_Thys_AlvarDead_Condition()
{
	if (Mod_AlvarDead == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarDead_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead_15_00"); //Ich h�rte, dass dir das Tagebuch des verschiedenen Alvar gebracht wurde?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead_07_01"); //Ja, das ist richtig. Wieso fragst du?
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead_15_02"); //Nun, ich habe einen Verdacht und es k�nnte helfen einiges aufzukl�ren, wenn ich einen kurzen Blick hineinwerfen k�nnte.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead_07_03"); //Einen Verdacht? Wovon sprichst du? Erkl�re dich!
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead_15_04"); //Ja, ich habe allen Grund zur Vermutung, dass mehr hinter seinem Tod steckt ... mehr als nur Schneegeister.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead_07_05"); //Und da soll dir seine Tagebuch irgendwie weiterhelfen? Nun gut, ein kurzer Blick hinein sei dir gew�hrt.

	B_GiveInvItems	(self, hero, ItWr_AlvarTagebuch2, 1);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_AlvarDead2 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarDead2_Condition;
	information	= Info_Mod_Thys_AlvarDead2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die letzte Seite wurde herausgerissen und der Text ist neu.";
};

FUNC INT Info_Mod_Thys_AlvarDead2_Condition()
{
	if (Mod_AlvarDead == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarDead2_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_00"); //Die letzte Seite wurde herausgerissen und der Text ist neu.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_01"); //Was?! Wie kommst du zu dieser Behauptung? Woher willst du das wissen?
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_02"); //Nun, weil ich es im Auftrag von Serra und Malfama vor nicht vielen Stunden entwendet habe ... bevor Alvar umkam.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_03"); //Gestohlen auf die Weisung dieser beiden untadeligen Frauen? Bist du dir dar�ber im Klaren, wie unerh�rt diese Vorw�rfe klingen.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_04"); //Umso mehr, da sie durch die Nachstellungen von Alvar so gelitten haben.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_05"); //Aber es ist die Wahrheit.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_06"); //Wahr ist vor Gericht nur das, was als erwiesen gilt.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_07"); //Und habe ich mich nur verh�rt, als du gar einen Zusammenhang zu dem Ableben von Alvar herstellen wolltest?
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_08"); //Ja, das wollte ich.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_09"); //(nach Luft ringend) Das ... das ist ...
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_10"); //Es ist wahr, was ich sage! Ich brachte ihnen das Tagebuch.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_11"); //In diesem hatte Alvar etwas von einem magischen Kristall preisgegeben, der sich versteckt in seiner R�stung befand, um ihn vor den Schneegeistern zu sch�tzten.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_12"); //Und heute ist er durch selbige umgekommen? Kann das Zufall sein?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_13"); //(noch immer aufgeregt) Es ... (h�lt inne, gefasster) lass mich kurz nachdenken ... Es klingt zu unglaublich ...
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_14"); //Gut, eine herausgerissene Seite als l�cherliches Indiz.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_15"); //Und dann noch deine Aussage, die Behauptungen eines Fremden, die zwei geachtete, fromme und ungescholtene Frauen der Mitt�terschaft an einem Mord bezichtigt. Das ist unerh�rt.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_16"); //Du f�ngst ja schon an, wie der verr�ckte Alvar.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_17"); //Wie? Was meinst du?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_18"); //ch, der Irre hat ja auch einige Zeit schlimmes �ber die beiden verbreitet, behauptet, sie seien ... (h�lt inne) egal, das soll jetzt keine Rolle mehr spielen.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_19"); //Was genau hat er erz�hlt.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_20"); //Ich werde bestimmt nicht damit fortfahren, seine �blen Verleumdungen wieder aufleben zu lassen.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_21"); //Was davon seinen Aussagen zu halten war, sehen wir ja hier im Tagebuch.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_22"); //Aber wenn nun doch etwas dran war?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_23"); //(ungeduldig) Du l�sst wohl nicht locker. Wenn du deine unm�glichen Behauptungen  untermauern willst, so solltest du dies mit Beweisen tun ...
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_24"); //Beweisst�cke? Was zum Beispiel?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_25"); //Wenn du Beweisst�cke suchst, dann w�re Alvars R�stung doch schon mal ein guter Anfang.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_26"); //Aber du wei�t, dass es nicht ungef�hrlich wird. Du macht es auf eigene Gefahr.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_27"); //Ja, da bleibt mir aber wohl keine andere Wahl.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_28"); //Ja, mach, was du glaubst tun zu m�ssen. Alvars Leiche wurde auf einem Berg nord�stlich von hier gesichtet.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_29"); //Jetzt wei�t du, wo du hin musst. Auch, wenn ich die ganze Sache nicht guthei�e.

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Thys war nicht gerade sehr aufgeschlossen daf�r mich bei diesem Fall zu unterst�tzen. Ich werde wohl Alvars R�stung bergen m�ssen. Den Leichnam werde ich nord�stlich vom Dorf auf einem Berg finden.");

	Wld_InsertNpc	(Mod_7562_OUT_Alvar_EIS,	"EIS_268");

	B_KillNpc	(Mod_7562_OUT_Alvar_EIS);
};

INSTANCE Info_Mod_Thys_AlvarDead3 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarDead3_Condition;
	information	= Info_Mod_Thys_AlvarDead3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe die R�stung.";
};

FUNC INT Info_Mod_Thys_AlvarDead3_Condition()
{
	if (Mod_AlvarDead == 4)
	&& (Npc_HasItems(hero, ItAr_FakeArmor_Alvar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarDead3_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_00"); //Ich habe die R�stung.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_01"); //Was wirklich? Zeig her.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_02"); //Tats�chlich, irgendetwas Hartes ist darin eingen�ht.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_03"); //Warte mal. Es ist ein simpler Stein.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_04"); //Na also. Serra und Malfama haben von dem Kristall gelesen und ihn durch einen einfachen Stein ausgetaucht.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_05"); //Ja, die R�stung k�nnte ein Indiz daf�r sein. Aber eben auch nicht mehr.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_06"); //Was kann ich noch tun?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_07"); //Nun, in der R�stung muss sich nach deinen Mutma�ungen einmal der Kristall befunden haben. Finde ihn!
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_08"); //Hmm, er k�nnte �berall sein. Wenn mir doch nur etwas bei der Suche helfen k�nnte ...
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_09"); //Also bei uns gab es einst ein Amulett, dass in der Lage war Gegenst�nde aufzusp�ren. Es stammte von den ...
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_10"); //(unterbricht) Nat�rlich, dass Erzamulett des suchenden Irrlichtes.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_11"); //Du bist im Besitze eines solchen? Dann sollte es auch kein Problem f�r dich sein, damit einen magischen Kristall aufzusp�ren.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_12"); //Magische Energie k�nnen solche Amulette ja bekanntlich besonders gut sichtbar machen.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_13"); //Du wei�t also, wie du vorgehen musst.

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Nun muss ich versuchen mit Hilfe des Amulettes den Kristall zu finden.");

	B_GivePlayerXP	(300);

	Wld_InsertItem	(ItMi_AlvarKristall, "FP_ITEM_ALVARKRISTALL");
};

INSTANCE Info_Mod_Thys_AlvarKristall (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarKristall_Condition;
	information	= Info_Mod_Thys_AlvarKristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_AlvarKristall_Condition()
{
	if (Mod_AlvarKristall == 1)
	&& (Npc_HasItems(hero, ItMi_AlvarKristall) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Brutus_AlvarKristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarKristall_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall_07_00"); //�hhm, es sind gerade einige aufgebrachte Dorfbewohner zu mir gekommen, wie du ja selbst sieht.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall_07_01"); //Sie erheben schlimme Anschuldigungen gegen dich. Au�erdem haben sie auch von deinen Nachforschungen erfahren.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarKristall_15_02"); //Da ich den magischen Kristall nun habe, sollte die Wahrheit wohl endlich ans Tageslicht kommen.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_AlvarKristall2 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarKristall2_Condition;
	information	= Info_Mod_Thys_AlvarKristall2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_AlvarKristall2_Condition()
{
	if (Mod_AlvarKristall == 3)
	&& (Npc_HasItems(hero, ItMi_AlvarKristall) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Brutus_AlvarKristall2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarKristall2_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall2_07_00"); //Was hat das zu bed... nat�rlich. Alles, was mit dem Kristall in Ber�hrung war, dem haftet f�r eine gewisse Zeit etwas dieser magischen Energie an.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarKristall2_15_01"); //Und Serras H�nde strahlen f�rmlich. Das ist der Beweis, dass sie den Kristall aus der R�stung entwendet hat, um Alvar dem sicheren Tod zu weihen.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_Eriskult (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Eriskult_Condition;
	information	= Info_Mod_Thys_Eriskult_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Eriskult_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Knatus_Traenenkristall3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Eriskult_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_00"); //Mein Bewusstsein war die ganze Zeit wach.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_01"); //Nur war ich wegen der Hexenmagie nicht in der Lage mich zu bewegen und mitzuteilen.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_02"); //Ich habe also durchaus vernommen, was hier vorgefallen ist.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_03"); //(zum Helden) Die Gemeinschaft des Dorfes steht tief in euer beider Schuld.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_04"); //Ohne dich und Alvar w�re das Dorf dem Untergang geweiht gewesen.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_05"); //�ber den Frevel mit der Eisleiche will ich mal hinwegsehen.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_06"); //Aber berichtet mir doch: Wie ist es euch gelungen die Zungen der tr�gerischen Weiber zu l�sen?
	AI_Output(hero, self, "Info_Mod_Thys_Eriskult_15_07"); //Durch einen Kristall, der den Tr�nen Innos entstammt. Ich habe ihn hier ... aber, Augenblick mal. Er ist ganz feucht.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_08"); //Ein Tr�nenkristall? Wirklich?
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_09"); //Ja, ich habe schon einmal davon geh�rt, hielt es aber f�r eine schlichte Legende. Beeindruckend.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_10"); //Nun scheint er sich aber wieder in die Form der Tr�nen zur�ckzuverwandeln, da er sich au�erhalb der H�hle und ihrer Umgebungsbedingungen befindet.
	AI_Output(hero, self, "Info_Mod_Thys_Eriskult_15_11"); //Kann man den Prozess aufhalten?
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_12"); //Ich w�sste leider nicht wie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7564_OUT_Knatus_EIS, "START");
	B_StartOtherRoutine	(Mod_7561_OUT_Alvar_EIS, "START");

	Npc_RemoveInvItems	(hero, ItMi_Traenenkristall, 1);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_EIS_UNSCHULDIG, LOG_SUCCESS);

	Mod_Thys_Schneegeister_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Thys_Schneegeister (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Schneegeister_Condition;
	information	= Info_Mod_Thys_Schneegeister_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich h�rte, dass die Schneegeister nicht immer die Umgebung des Dorfes belagert h�tten ...";
};

FUNC INT Info_Mod_Thys_Schneegeister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_Schneegeister))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Schneegeister_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_00"); //Ich h�rte, dass die Schneegeister nicht immer die Umgebung des Dorfes belagert h�tten ... wei�t du n�heres �ber ihren Ursprung?
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_01"); //(�berrascht) Die Schneegeister? Ach, das ist eine mysteri�se Geschichte.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_02"); //Ich war noch ein Kind, als sie anfingen, die Umgebung heimzusuchen.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_03"); //Ihre Herkunft? Das wei� keiner mit Sicherheit.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_04"); //�ber die vielen Jahre haben wir uns mittlerweile auf die Gefahren eingestellt, die von ihnen ausgehen.
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_05"); //Aber welche Vermutungen gibt es denn zu ihrem Ursprung?
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_06"); //Ich h�rte, dass manche die G�tter daf�r verantwortlich machen, oder magische Wesen.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_07"); //Ach, wenn Menschen keine Erkl�rung f�r Dinge finden, denken sie sich alles M�gliche aus.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_08"); //Nat�rlich k�nnten es die G�tter sein. Aber genauso der Klabautermann.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_09"); //Es ist eben nichts, wof�r es irgendwelche Indizien g�be ...
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_10"); //Verstehe ... Ich h�rte auch, dass jemand mal wegen aus dem Dorf verbannt worden sein soll ...
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_11"); //Ahh, die Geschichte. Du sprichst von Skamp. Ein junger Mann damals ...  vor fast sechs Jahrzehnten.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_12"); //Ja, mit dunklen Kr�ften soll er sich eingelassen haben, Beschw�rungen vorgenommen und sich mit verruchtem Weibsbild vereinigt.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_13"); //Kurzum, er hatte nicht den besten Ruf und wurde aus dem Dorf verbannt.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_14"); //Einige Monate sp�ter tauchten die ersten Schneegeister auf. Ob es damit in Zusammenhang steht ... ich wei� es nicht.
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_15"); //Und wohin ist er gegangen?
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_16"); //Zuletzt will ihn jemand am gro�en See gesehen haben ... und dann war er wie vom Erdboden verschluckt.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_17"); //Aber, wie gesagt, dass alles ist lange, lange her ... und wahrscheinlich ohne jede Bedeutung.

	B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Thys h�lt nicht viel von den meisten Mutma�ungen �ber das Mitwirken von G�ttern. Er erw�hnte noch einen jungen Mann, der sich einst mit dunklen M�chten eingelassen haben soll und aus dem Dorf verbannt wurde. Zuletzt wurde er am zugefrorenen See gesehen. Das alles ist jedoch schon �ber 60 Jahre her und � so Thys Ansicht � vermutlich ohne jeden Kontext zu den Schneegeistern.");

	Mod_Thys_Schneegeister_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Thys_Schneegeister2 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Schneegeister2_Condition;
	information	= Info_Mod_Thys_Schneegeister2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Beim See fand ich eine H�hle mit Schneegeistern.";
};

FUNC INT Info_Mod_Thys_Schneegeister2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister))
	&& (Mod_Thys_Schneegeister == 2)
	&& (Npc_HasItems(hero, ItWr_Schneegeister) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Schneegeister2_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister2_15_00"); //Beim See fand ich eine H�hle mit Schneegeistern.
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister2_15_01"); //Unter ihnen war ein Untoter, der diesen Zettel bei sich hatte.

	B_GiveInvItems	(hero, self, ItWr_Schneegeister, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_02"); //Was sagst du?

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_03"); //Nicht m�glich!

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_04"); //Unglaublich! Wenn das stimmt, dann k�nnte der Untote tats�chlich Skamp gewesen sein. Und du hast ihn vernichtet?
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister2_15_05"); //So ist es.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_06"); //Das w�rde erkl�ren, warum ich eine starke �nderung des magischen Gef�ges in der Umgebung wahrnahm.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_07"); //Dem Schreiben ist zu entnehmen, dass er die Verbindung mit d�monischen M�chten suchte, sie zu lenken und kontrollieren.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_08"); //Wie es scheint, war er ihnen jedoch nicht gewachsen und sie nahmen Besitz von ihm ... oder jemand hat ihn reingelegt.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_09"); //Wie dem auch sei, es ist wahrscheinlich, dass er tats�chlich die Ursache f�r die Schneegeister war ... und wir ab jetzt von ihrem Treiben unbehelligt bleiben.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_10"); //Damit hast du unserer Gemeinde ein weiteres Mal einen unsch�tzbaren Dienst erwiesen.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_11"); //Wie kann ich es dir nur vergelten? Hmm, bis morgen ist mir bestimmt etwas eingefallen.

	B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Da das Dorf nun von weiteren Nachstellungen der Schneegeister verschont bleibt, m�chte Thys mir morgen ein Geschenk machen.");

	Mod_Thys_Schneegeister_Tag = Wld_GetDay();

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Thys_Schneegeister3 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Schneegeister3_Condition;
	information	= Info_Mod_Thys_Schneegeister3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Schneegeister3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister2))
	&& (Wld_GetDay() > Mod_Thys_Schneegeister_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Schneegeister3_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_00"); //Ahh, da bist du wieder.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_01"); //Da du dich immer auf gef�hrlichen Pfaden bewegst, habe ich diesen Schutztalisman f�r dich.

	B_GiveInvItems	(self, hero, ItTa_Behueter, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_02"); //Sobald du ihn am G�rtel befestigst, wird er nicht nur deine Widerstandskraft erh�hen, sondern auch f�r einen geringen Teil deines Manas ein Irrlicht herbeizaubern.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_03"); //Dieses wird alle Gesch�pfe in deiner Umgebung in Verwirrung st�rzen und Angriffe auf sich lenken.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_04"); //M�ge es dich auf deinen Wegen beh�ten.

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Thys_AlvarKristall3 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarKristall3_Condition;
	information	= Info_Mod_Thys_AlvarKristall3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_AlvarKristall3_Condition()
{
	if (Mod_AlvarKristall >= 4)
	&& (Mod_AlvarKristall < 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarKristall3_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall3_07_00"); //Es tut mir Leid. Die Mehrheit des Dorfes hat sich daf�r ausgesprochen, dich auszusto�en. Mir sind die H�nde gebunden.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_GobboBeschwoerer (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_GobboBeschwoerer_Condition;
	information	= Info_Mod_Thys_GobboBeschwoerer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du wolltest mich sehen?";
};

FUNC INT Info_Mod_Thys_GobboBeschwoerer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_GobboBeschwoerer_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_GobboBeschwoerer_15_00"); //Du wolltest mich sehen?
	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_01"); //Ja, du hast unsere Stadt vor einem Angriff bewahrt und hast das Wohl der Anderen vor deines gestellt.
	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_02"); //Als Belohnung sollst du diesen Ring bekommen. Er steigert deine Lebenskraft.

	B_GiveInvItems	(self, hero, ItRi_Hp_03, 1);

	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_03"); //Und nimm noch diese 250 Goldst�cke.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_04"); //M�ge dir beides bei deiner weiteren Reise helfen.

	B_SetTopicStatus	(TOPIC_MOD_EIS_FRIEDHOF, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Thys_Pickpocket (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Pickpocket_Condition;
	information	= Info_Mod_Thys_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Thys_Pickpocket_Condition()
{
	C_Beklauen	(172, ItPl_Winterrute, 7);
};

FUNC VOID Info_Mod_Thys_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

	Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_BACK, Info_Mod_Thys_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Thys_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Thys_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Thys_Pickpocket);
};

FUNC VOID Info_Mod_Thys_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

		Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Thys_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Thys_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Thys_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Thys_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Thys_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Thys_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Thys_EXIT (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_EXIT_Condition;
	information	= Info_Mod_Thys_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Thys_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Thys_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};