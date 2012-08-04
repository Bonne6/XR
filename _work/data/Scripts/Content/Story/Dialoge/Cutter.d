INSTANCE Info_Mod_Cutter_Anbau (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Anbau_Condition;
	information	= Info_Mod_Cutter_Anbau_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was wird denn hier angebaut?";
};

FUNC INT Info_Mod_Cutter_Anbau_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_Anbau_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Anbau_15_00"); //Was wird denn hier angebaut?
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_29_01"); //�h... Getreide.
	AI_Output(hero, self, "Info_Mod_Cutter_Anbau_15_02"); //Und, w�chst es gut?
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_29_03"); //Keine Ahnung. Sieht besser aus als die letzten beiden Male.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_29_04"); //Ian hat gesagt, dass die Samen Wasser brauchen. Verstehe ich aber nicht, B�ume wachsen doch auch so.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_29_05"); //Ian hat auch vorgeschlagen, wir sollten ein bisschen Schei�e auf die Felder kippen, aber ich hab gesagt, nur �ber meine Leiche.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_29_06"); //Wir wollen das Getreide ja sp�ter essen.
	AI_Output(hero, self, "Info_Mod_Cutter_Anbau_15_07"); //Ich sehe schon, ihr habt nicht die geringste Ahnung, was ihr da tut.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_29_08"); //Maul halten, klar?! Wir hatten sogar mal ein Buch dar�ber, wie man Pflanzen wachsen l�sst, aber irgendein Penner hat's zerrissen und zum Feuermachen verwendet.
	AI_Output(self, hero, "Info_Mod_Cutter_Anbau_29_09"); //Kann sein, dass davon noch ein oder zwei Seiten rumfliegen. Na ja, hilft uns auch nicht weiter.
};

INSTANCE Info_Mod_Cutter_Barriere (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Barriere_Condition;
	information	= Info_Mod_Cutter_Barriere_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie gef�llt dir das Leben ohne Barriere?";
};

FUNC INT Info_Mod_Cutter_Barriere_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_Barriere_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Barriere_15_00"); //Wie gef�llt dir das Leben ohne Barriere?
	AI_Output(self, hero, "Info_Mod_Cutter_Barriere_29_01"); //Ich h�tte mit Scorpio abhauen sollen. Seit wir keine Mine mehr haben, geht das Leben hier im Lager abw�rts.
};

INSTANCE Info_Mod_Cutter_Dokumente (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Dokumente_Condition;
	information	= Info_Mod_Cutter_Dokumente_Info;
	permanent	= 0;
	important	= 0;
	description	= "Vielleicht hilft euch diese Anleitung beim Pflanzen.";
};

FUNC INT Info_Mod_Cutter_Dokumente_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lehrling_Cutter))
	&& (Npc_HasItems(hero, ItWr_Lehrling01) == 1)
	&& (Npc_HasItems(hero, ItWr_Lehrling02) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Dokumente_15_00"); //Vielleicht hilft euch diese Anleitung beim Pflanzen.

	Npc_RemoveInvItems	(hero, ItWr_Lehrling01, 1);
	Npc_RemoveInvItems	(hero, ItWr_Lehrling02, 1);

	B_ShowGivenThings	("Bl�tter des Lehrlings gegeben");

	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_29_01"); //He, Mann, das ist aus dem Buch, von dem ich dir erz�hlt habe!

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_29_02"); //Das hilft uns sicher weiter. Sind zwar viele Fachausdr�cke drin, aber ich verstehe, worum es geht.
	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_29_03"); //Daf�r lass ich sogar 'ne kleine Bezahlung springen.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(hero, self, "Info_Mod_Cutter_Dokumente_15_04"); //Dann noch viel Gl�ck beim Anbauen.
	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_29_05"); //Jetzt kann ja eigentlich nichts mehr schief gehen.

	AI_TurnToNpc	(self, Mod_1440_BUD_Buddler_MT);

	AI_Output(self, hero, "Info_Mod_Cutter_Dokumente_29_06"); //(ruft zu den Buddlern) Wartet mal! Ihr m�sst die Sense andersrum halten!

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cutter_Dieb (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Dieb_Condition;
	information	= Info_Mod_Cutter_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Waren wurden aus dem Haus der Erzbarone gestohlen ...";
};

FUNC INT Info_Mod_Cutter_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Cutter_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Dieb_15_00"); //Waren wurden aus dem Haus der Erzbarone gestohlen, und ich glaube, dass du damit zu tun hast.
	AI_Output(self, hero, "Info_Mod_Cutter_Dieb_29_01"); //(w�tend) Was?! Ich soll klauen? Ich bem�he mich darum, den Diebstahl endlich aufzuhalten, aber wenn ich wache, traut sich dieses Lumpenpack ja nicht, irgendetwas zu stehlen.
	AI_Output(self, hero, "Info_Mod_Cutter_Dieb_29_02"); //Mir gen�gt es ja zu sehen, dass dieser Fisk gestohlene Waren verkauft.

	Mod_PDV_Cutter_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Cutter versucht anscheinend selbst den Dieb zu finden. Er konnte mir sagen, dass Fisk das Diebesgut verkauft.");
};

INSTANCE Info_Mod_Cutter_Frage (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Frage_Condition;
	information	= Info_Mod_Cutter_Frage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was wei�t du �ber ...";
};

FUNC INT Info_Mod_Cutter_Frage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Cutter_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Frage_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Frage_15_00"); //Was wei�t du �ber den Diebstahl aus dem Haus der Erzbarone?
	AI_Output(self, hero, "Info_Mod_Cutter_Frage_29_01"); //Nicht genug, nur dass dieser Fisk die gestohlenen Waren verkauft.

	Mod_PDV_Cutter_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Cutter versucht anscheinend selbst den Dieb zu finden. Er konnte mir sagen, dass Fisk das Diebesgut verkauft.");
};

INSTANCE Info_Mod_Cutter_Dealer (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Dealer_Condition;
	information	= Info_Mod_Cutter_Dealer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wo w�rde ich ...";
};

FUNC INT Info_Mod_Cutter_Dealer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Cutter_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Dealer_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Dealer_15_00"); //Wo w�rde ich am ehesten "besondere" Ware bekommen?
	AI_Output(self, hero, "Info_Mod_Cutter_Dealer_29_01"); //Was, du fragst mich nach Diebesgut? Dieser verdammte Lumpenh�ndler Fisk verkauft genug davon. Geh zu dem, bevor ich deine Frage Thorus melde.

	Mod_PDV_Cutter_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Cutter versucht anscheinend selbst den Dieb zu finden. Er konnte mir sagen, dass Fisk das Diebesgut verkauft.");
};

INSTANCE Info_Mod_Cutter_WhatCrime (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_WhatCrime_Condition;
	information	= Info_Mod_Cutter_WhatCrime_Info;
	permanent	= 0;
	important	= 0;
	description	= "F�r welches Verbrechen bist du in die Kolonie geworfen worden?";
};

FUNC INT Info_Mod_Cutter_WhatCrime_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_WhatCrime_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_WhatCrime_15_00"); //F�r welches Verbrechen bist du in die Kolonie geworfen worden?
	AI_Output(self, hero, "Info_Mod_Cutter_WhatCrime_29_01"); //Fr�her war ich Assassine in Varant. Ich sollte den Richter des K�nigs ausschalten, wurde aber erwischt.
	AI_Output(self, hero, "Info_Mod_Cutter_WhatCrime_29_02"); //Zum Gl�ck wurde damals jeder Gefangene in die Kolonie geworfen, sonst h�tte er mich sicherlich hinrichten lassen.
};

INSTANCE Info_Mod_Cutter_Costa (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Costa_Condition;
	information	= Info_Mod_Cutter_Costa_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was haben die beiden Leichen neben Stone zu bedeuten?";
};

FUNC INT Info_Mod_Cutter_Costa_Condition()
{
	if (Mod_Costa_Guertel == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Costa_Info()
{
	AI_Output(hero, self, "Info_Mod_Cutter_Costa_15_00"); //Was haben die beiden Leichen neben Stone zu bedeuten?
	AI_Output(self, hero, "Info_Mod_Cutter_Costa_29_01"); //Ach, die. Nur zwei Buddler, die wir beim Fliehen erwischt haben.
	AI_Output(self, hero, "Info_Mod_Cutter_Costa_29_02"); //Die bleiben jetzt als Abschreckung f�r die anderen ein paar Tage da liegen.
};

INSTANCE Info_Mod_Cutter_Ambient (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_Ambient_Condition;
	information	= Info_Mod_Cutter_Ambient_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cutter_Ambient_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cutter_Ambient_Info()
{
	AI_Output(self, hero, "Info_Mod_Cutter_Ambient_29_00"); //Du geh�rst ja zu den Schei�-S�ldnern. Verpiss dich!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cutter_EXIT (C_INFO)
{
	npc		= Mod_1110_GRD_Cutter_MT;
	nr		= 1;
	condition	= Info_Mod_Cutter_EXIT_Condition;
	information	= Info_Mod_Cutter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cutter_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cutter_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};