INSTANCE Info_Mod_Argez_XW_Vorsicht (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Vorsicht_Condition;
	information	= Info_Mod_Argez_XW_Vorsicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_XW_Vorsicht_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_XW_Vorsicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_XW_Vorsicht_01_00"); //Pass auf, das ist eine Falle!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Schattenlord_998_Urnol, "KNASTGANG_02");
};

INSTANCE Info_Mod_Argez_XW_Gefangen (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Gefangen_Condition;
	information	= Info_Mod_Argez_XW_Gefangen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_XW_Gefangen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urnol_XW_Gefangen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_XW_Gefangen_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_00"); //Danke, dass du gekommen bist.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_01"); //So viel hat es ja jetzt nicht gebracht.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_02"); //Nun ja.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_03"); //Wieso warst du markiert?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_04"); //Erinnerst du dich, dass das Tier in dem Moment, in dem ich zauberte, weglief?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_05"); //Ich habe danach nur geschaut, ob du von der Markierung befreit warst, und das warst du. Deswegen habe ich mir keine weiteren Gedanken gemacht.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_06"); //In Wahrheit aber ist die Markierung nicht auf das Tier �bergesprungen, sondern auf mich.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_07"); //Das tut mir Leid.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_08"); //So ist es eben.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_09"); //Wie soll ich dich hier rausschaffen? Ich kann mich jederzeit teleportieren, aber an dich komme ich nicht heran.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_10"); //(lacht freudlos) Das wird nicht m�glich sein. Aus Xeres' Reich f�hrt kein Teleport. Diese Welt ist vollkommen abgeschirmt von der unsrigen.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_11"); //Wie sollen wir es dann schaffen zu fliehen?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_12"); //Wir m�ssten ausbrechen. Und dann nach vorne zum Tor. Unm�glich.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_13"); //Was ist denn mit dir los? Du bist doch sonst nicht so hoffnungslos.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_14"); //Das ... das kann ich dir nicht sagen. Aber sei versichert, dass meine d�stere Stimmung absolut gerechtfertigt ist.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_15"); //Na gut, dann steck eben den Kopf in den Sand. Ich werde mich nach einer Fluchtm�glichkeit umschauen.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_16"); //Viel Erfolg.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Ich bin neben Argez in einer Zelle gefangen und will fliehen. Allzu viele M�glichkeiten stehen da nicht zur Auswahl.");

	Wld_InsertNpc	(Monster_11074_Leprechaun_XW, "KNASTGANG_02");
};

INSTANCE Info_Mod_Argez_XW_Gefangen2 (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Gefangen2_Condition;
	information	= Info_Mod_Argez_XW_Gefangen2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_XW_Gefangen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leprechaun_XW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_XW_Gefangen2_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_00"); //Meinst du nicht, dass wir vorsichtig sein sollten? Wenn es sich um einen Test, ein Spiel dieses Leprechaun handelt?
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen2_15_01"); //Was haben wir zu verlieren? Das ist vielleicht unsere letzte Chance.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_02"); //Na sch�n.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen2_15_03"); //Bist du geschw�cht? Schaffst du den ganzen Weg zur�ck?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_04"); //Das wird hoffentlich gar nicht n�tig sein.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_05"); //Ich bin mir sicher, dass Xeres eine eigene Teleportplattform besitzt, mit der er zum Tor des Gef�ngnisses reisen kann.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_06"); //Ein Teleport innerhalb dieser Welt ist immerhin m�glich, und ihm wird w�hrend der tausend Jahre bestimmt die Idee gekommen sein, dass es n�tzlich sein k�nnte, in Sekundenschnelle am Eingang des Gef�ngnisses zu stehen.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen2_15_07"); //Dann lass uns seine privaten Gem�cher st�rmen.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_08"); //Aber keine Umwege. Keine Zeit f�r Heldentaten.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Leprechaun hat den Zellenschl�ssel fallen gelassen, sodass ich mich und Argez befreien konnte. Argez geht davon aus, dass Xeres eine private Teleportationsplattform in seinen Gem�chern hat. Die gilt es nun zu finden und dieser verdammten Unterwelt wieder zu entrinnen.");
};

INSTANCE Info_Mod_Argez_XW_Ende (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Ende_Condition;
	information	= Info_Mod_Argez_XW_Ende_Info;
	permanent	= 0;
	important	= 0;
	description	= "Argez, was machst du hier?";
};

FUNC INT Info_Mod_Argez_XW_Ende_Condition()
{
	if (Kapitel == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_XW_Ende_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_00"); //Argez, was machst du hier?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_01"); //Ich bin hergekommen, damit Xeres ein f�r alle Mal vom Antlitz der Erde getilgt werden kann.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_02"); //Dann warst du es also wirklich, der Xeres vor �onen bannte ...
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_03"); //Ja, es stimmt.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_04"); //Daher auch dein Wissen um die alte Kultur ...
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_05"); //Wie dem auch sei, dein Eingreifen wird nicht mehr notwendig sein. Mit Uriziel konnte ich Xeres und seine Machttr�ger in die ewigen Jagdgr�nde schicken.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_06"); //Du t�uschst dich.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_07"); //Den Schl�fer magst du zwar wieder in die Zwischenwelt verbannt haben, ehe er erwachen konnte, und du magst den drei anderen Machttr�gern ihre Seelensteine entrissen haben.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_08"); //Solange jedoch noch der letzte seiner Machttr�ger auf Erden wandelt, wird Xeres nie endg�ltig in die jenseitige Welt eingehen.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_09"); //Der f�nfte Machttr�ger?
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_10"); //Die Magier waren nicht dazu in der Lage zu ergr�nden, ob er denn �berhaupt existiert, gar, wo er sich befinden k�nnte. Was wei�t du �ber ihn?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_11"); //Alles! Ich habe mein Ged�chtnis zur�ckerlangt, und die Ereignisse der Vergangenheit sind meinem Bewusstsein wieder zug�nglich.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_12"); //Was f�r ein Wesen ist er? Wo befindet er sich?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_13"); //Er steht direkt vor dir. Ich bin es!
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_14"); //Was?! Das ist unm�glich.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_15"); //Du warst es doch, der Xeres mit seinen Machttr�gern einst in die Zwischenwelt verbannte ...
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_16"); //Ja! Ich bin ein missgl�cktes Gesch�pf.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_17"); //Ich bin es, der nicht mit Xeres' Willen, sondern nur seiner Macht gespeist wurde.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_18"); //Ich bin es, von dessen Existenz Xeres' Schergen jegliches Zeugnis tilgen wollten, indem sie mir mein Ged�chtnis raubten.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_19"); //Und ich bin es nun, der mit seinem Dasein unser aller Leben bedroht ...
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_20"); //Was soll das? Was willst du damit sagen?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_21"); //Das wei�t du ... Du wirst ihn erst endg�ltig vernichten k�nnen, wenn ich tot bin.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_22"); //Also beeil dich, bevor er sich erholt hat. T�te mich und bring der Welt den Frieden.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_23"); //Nein! Das kann ich nicht tun. Dieser Kampf hat schon zu viele Leben gekostet.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_24"); //Du musst! Andernfalls werde ich mich selbst opfern!

	Info_ClearChoices	(Info_Mod_Argez_XW_Ende);

	Info_AddChoice	(Info_Mod_Argez_XW_Ende, "Es muss doch eine andere M�glichkeit geben.", Info_Mod_Argez_XW_Ende_B);
	Info_AddChoice	(Info_Mod_Argez_XW_Ende, "Na sch�n. Du hast es so gewollt.", Info_Mod_Argez_XW_Ende_A);
};

FUNC VOID Info_Mod_Argez_XW_Ende_B()
{
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_00"); //Es muss doch eine andere M�glichkeit geben.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_01"); //Nein. Solange ich lebe, ist auch Xeres nicht vollst�ndig tot.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_02"); //Xeres muss ja nicht unbedingt sterben.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_03"); //Wir k�nnten ihn wieder festsetzen. Diesmal ohne Hintert�rchen. Er w�rde bis in alle Ewigkeit hier schmoren.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_04"); //Die Gefahr, dass Xeres irgendwie ausbrechen k�nnte, w�re damit immer vorhanden.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_05"); //Er h�tte es auch jetzt nach Tausenden von Jahren ohne die Foki nicht geschafft.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_06"); //(unschl�ssig) Meinst du wirklich?
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_07"); //Ja. Du hast dir ein normales Leben verdient.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_08"); //Na gut. Lass es uns versuchen.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_09"); //Sorge daf�r, dass Xeres nicht aufsteht. Ich bereite den Teleport vor.

	Info_ClearChoices	(Info_Mod_Argez_XW_Ende);

	AI_StopProcessInfos	(self);

	AI_Teleport	(Xeres_02, "TOT");
	Wld_InsertNpc	(Xeres_03,	"ARENA_01");
};

FUNC VOID Info_Mod_Argez_XW_Ende_A()
{
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_A_15_00"); //Na sch�n. Du hast es so gewollt.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Argez_XW_Ende);

	AI_StopProcessInfos	(self);

	self.flags = 0;

	AI_UnequipArmor	(self);

	AI_Teleport	(Xeres_02, "TOT");
	Wld_InsertNpc	(Xeres_03,	"ARENA_01");
};