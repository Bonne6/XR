INSTANCE Info_Mod_Moe_Hi (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Hi_Condition;
	information	= Info_Mod_Moe_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Moe_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Moe_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Moe_Hi_01_00"); //Ein Fremder auf Erkundungstour durch das Hafenviertel?
	AI_Output(self, hero, "Info_Mod_Moe_Hi_01_01"); //Dann solltest du hier nicht einfach vorbei gehen.
	AI_Output(hero, self, "Info_Mod_Moe_Hi_15_02"); //Was f�r ein Geb�ude ist das da hinter dir?
	AI_Output(self, hero, "Info_Mod_Moe_Hi_01_03"); //Das ist Kardifs Kneipe, der Mittelpunkt des Hafenviertels. Neben der Roten Laterne. (lacht) Wenn du was trinken oder wissen willst, komm hierher.
};

INSTANCE Info_Mod_Moe_Geruechte (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Geruechte_Condition;
	information	= Info_Mod_Moe_Geruechte_Info;
	permanent	= 1;
	important	= 0;
	description	= "Gibt es zur Zeit interessante Ger�chte?";
};

FUNC INT Info_Mod_Moe_Geruechte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_Hi))
	&& (Moe_KnowsPort == FALSE)
	&& (Kapitel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_Geruechte_Info()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte_15_00"); //Gibt es zur Zeit interessante Ger�chte?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_01_01"); //Etliches, etliches. Man muss nur wissen, das Seemannsgarn von den Fakten zu trennen, dann l�sst sich mit den Informationen sogar was anfangen ...
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_01_02"); //Hast du zum Beispiel schon von dem Schicksal des bedauernswerten Malers Johannes Port geh�rt?

	Info_ClearChoices	(Info_Mod_Moe_Geruechte);

	Info_AddChoice	(Info_Mod_Moe_Geruechte, "Nein, das interessiert mich aber auch nicht.", Info_Mod_Moe_Geruechte_B);
	Info_AddChoice	(Info_Mod_Moe_Geruechte, "Nein, erz�hl mehr.", Info_Mod_Moe_Geruechte_A);
};

FUNC VOID Info_Mod_Moe_Geruechte_B()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte_B_15_00"); //Nein, das interessiert mich aber auch nicht.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_B_01_01"); //Schade, vielleicht sp�ter.

	Info_ClearChoices	(Info_Mod_Moe_Geruechte);
};

FUNC VOID Info_Mod_Moe_Geruechte_A()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte_A_15_00"); //Nein, erz�hl mehr.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_A_01_01"); //(schw�rmerisch) Johannes Port ... ah, das war ein Maler. Weltber�hmt f�r seine Landschaftsmalereien. Es gibt nicht viele K�nstler, die schon im Leben so viel Ruhm erlangt haben wie er.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_A_01_02"); //Eigentlich lebte er in Myrtana, aber die Suche nach Motiven trieb ihn in der ganzen Welt 'rum. Tja, und darunter war eben die, die seine letzte werden sollte.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_A_01_03"); //Die K�stengegend von Khorinis interessierte ihn anscheinend sehr, jedenfalls brach er vor kurzer Zeit auf einem Schiffskutter hierher auf.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_A_01_04"); //Die Besatzung wollte im Hafen ihre Netze auswerfen und Port seine Bilder malen, aber das ging nicht lange gut. Das Schiff kenterte und ging unweit der gro�en Insel vor dem Hafen unter.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_A_01_05"); //Niemand konnte nachher sagen, wieso, au�er man glaubt den Geschichten vom rachs�chtigen Meeresgott.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_A_01_06"); //'N Teil der Besatzung konnte gerettet werden, aber Port war nicht darunter. Einer der Seeleute, die mit ihm unterwegs gewesen waren, sprach zu mir davon, dass Port 'nen gro�en Teil seiner Ausr�stung sowie einige bereits fertig gestellte Gem�lde dabei hatte.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_A_01_07"); //Nun, diese Wertst�cke d�rften noch in dem Schiffswrack zu finden sein, denn bisher sind noch keine Trupps zur �berpr�fung dorthin geschickt worden und der Kreis der Personen, die von der Sache wissen, ist sehr begrenzt.

	Log_CreateTopic	(TOPIC_MOD_MOE_PORT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MOE_PORT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MOE_PORT, "Vor wenigen Tagen ist aus unerkl�rlichen Gr�nden ein Schiffskutter vor dem Hafen von Khorinis gesunken. Wenn man Moe glauben darf, befand sich der bekannte Maler Johannes Port mit einem Teil seiner Ausr�stung an Bord. Wohin Port verschwunden ist, wei� niemand, aber sein 'Schatz' k�nnte sich noch an Bord des Schiffswracks befinden.");

	Info_ClearChoices	(Info_Mod_Moe_Geruechte);

	Info_AddChoice	(Info_Mod_Moe_Geruechte, "Du meinst, da ist was zu holen ...", Info_Mod_Moe_Geruechte_D);
	Info_AddChoice	(Info_Mod_Moe_Geruechte, "Was ist nun mit Port passiert?", Info_Mod_Moe_Geruechte_C);
};

FUNC VOID Info_Mod_Moe_Geruechte_D()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte_D_15_00"); //Du meinst, da ist was zu holen ...
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_D_01_01"); //(geheimnisvoll) Das k�nnte schon sein...
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte_D_15_02"); //Aber warum erz�hlst du gerade mir davon?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_D_01_03"); //Du siehst mir nicht wie einer dieser Banditen aus, die die Bilder gleich beim n�chsten Hehler zu Gold machen w�rden.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_D_01_04"); //Ich f�nde es besser, sie bei einem Kunstverst�ndigen abzugeben. Der sicher auch 'ne Menge zahlen w�rde.
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte_D_15_05"); //An welchen "Kunstverst�ndigen" hast du dabei gedacht?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_D_01_06"); //Brahim, den Kartenverk�ufer. Du findest ihn hier gleich um die Ecke in Richtung des Lagerhauses.
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte_D_15_07"); //Wieso holst du dir den Schatz nicht selbst?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_D_01_08"); //Meine abenteuerlustigen Jahre sind vorbei, Junge. Ich habe genug Geld, um mir das zu kaufen, was ich brauche. Was soll ich da mit zus�tzlicher Aufregung?
	
	Info_ClearChoices	(Info_Mod_Moe_Geruechte);

	B_LogEntry	(TOPIC_MOD_MOE_PORT, "Brahim, der Kartenverk�ufer im Hafenviertel, ist meine erste Ansprechperson, wenn ich den Schatz gefunden haben sollte.");

	Moe_KnowsPort = 1;
};

FUNC VOID Info_Mod_Moe_Geruechte_C()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte_C_15_00"); //Was ist nun mit Port passiert?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte_C_01_01"); //Das wei� keiner. Entweder ist seine Leiche im Wrack oder am Meeresboden, oder er hat sich ans Festland retten k�nnen. Aber das ist unwahrscheinlich, dann h�tte man wohl schon von ihm geh�rt.

	Info_ClearChoices	(Info_Mod_Moe_Geruechte);

	Info_AddChoice	(Info_Mod_Moe_Geruechte, "Du meinst, da ist was zu holen ...", Info_Mod_Moe_Geruechte_D);
};

INSTANCE Info_Mod_Moe_Geruechte2 (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Geruechte2_Condition;
	information	= Info_Mod_Moe_Geruechte2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Moe_Geruechte2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Canthar_Port))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_Geruechte2_Info()
{
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte2_01_00"); //Hey! Ich hab' Neuigkeiten, die dich interessieren k�nnten.
};

INSTANCE Info_Mod_Moe_Geruechte3 (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Geruechte3_Condition;
	information	= Info_Mod_Moe_Geruechte3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was wei�t du Neues?";
};

FUNC INT Info_Mod_Moe_Geruechte3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte2))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_Geruechte3_Info()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte3_15_00"); //Was wei�t du Neues?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_01_01"); //Canthar ist wieder in der Stadt. Er hat Valentino entf�hrt, den wohlhabenden Arschkriecher.

	Log_CreateTopic	(TOPIC_MOD_MOE_VALENTINO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MOE_VALENTINO, LOG_RUNNING);
	B_LogEntry_More	( TOPIC_MOD_CANTHAR_GESCHAEFTE, TOPIC_MOD_MOE_VALENTINO, "Canthar ist, wie angek�ndigt, zur�ckgekehrt, um Rache an mir zu nehmen.", "Valentino wurde entf�hrt, und zwar von Canthar, der ihn gegen mich eintauschen m�chte. Lord Andre traut sich jedoch nicht, irgendetwas zu unternehmen, also liegt es an mir, den Fall zu beenden.");

	B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "TOT");

	if (Mod_Fernando_Mitternachtsspuk == 1)
	{
		B_StartOtherRoutine	(Mod_1066_VLK_Buergerin_NW, "START");
	};

	Info_ClearChoices	(Info_Mod_Moe_Geruechte3);

	Info_AddChoice	(Info_Mod_Moe_Geruechte3, "Valentino?! Den kann er behalten!", Info_Mod_Moe_Geruechte3_B);
	Info_AddChoice	(Info_Mod_Moe_Geruechte3, "Und woher wei�t du, dass Canthar der Entf�hrer ist?", Info_Mod_Moe_Geruechte3_A);
};

FUNC VOID Info_Mod_Moe_Geruechte3_D()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte3_D_15_00"); //Das war ja zu erwarten ...
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_D_01_01"); //Valentino ist 'n beliebter Mann, vor allem beim weiblichen Volk und bei den Wirten.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_D_01_02"); //Sollte sich Canthar Forderung 'rumsprechen, w�rden die meisten einen Tausch fordern - ihn gegen dich.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_D_01_03"); //Lord Andre kann nichts dagegen unternehmen: Was er auch macht, Menschenleben stehen auf dem Spiel.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_D_01_04"); //Er wird seine korrupten Stadtwachen nicht gegen Canthar einsetzen, weil er dessen St�rke kennt.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_D_01_05"); //Es bleibt also an dir h�ngen. Du musst versuchen, Valentino zu befreien, damit Canthar kein Druckmittel mehr in der Hand hat.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_D_01_06"); //Denk aber daran, dass ihn das nur kurzfristig aufhalten wird. Du hast ihm seinen Coup versaut, und er will sich r�chen.
	
	Info_ClearChoices	(Info_Mod_Moe_Geruechte3);

	Info_AddChoice	(Info_Mod_Moe_Geruechte3, "Soll Canthar doch kommen, f�r Valentino setze ich mein Leben nicht auf's Spiel.", Info_Mod_Moe_Geruechte3_F);
	Info_AddChoice	(Info_Mod_Moe_Geruechte3, "Wo wird Valentino festgehalten?", Info_Mod_Moe_Geruechte3_E);
};

FUNC VOID Info_Mod_Moe_Geruechte3_B()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte3_B_15_00"); //Valentino?! Den kann er behalten!
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_B_01_01"); //Ihm geht es nicht um Valentino... er will dich!

	Info_Mod_Moe_Geruechte3_D();
};

FUNC VOID Info_Mod_Moe_Geruechte3_A()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte3_A_15_00"); //Und woher wei�t du, dass Canthar der Entf�hrer ist?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_A_01_01"); //Er hat kein L�segeld gefordert ...
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte3_A_15_02"); //Was denn sonst?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_A_01_03"); //Na, dich.

	Info_Mod_Moe_Geruechte3_D();
};

FUNC VOID Info_Mod_Moe_Geruechte3_F()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte3_F_15_00"); //Soll Canthar doch kommen, f�r Valentino setze ich mein Leben nicht auf's Spiel.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_F_01_01"); //In dem Fall weichst du nur dem Unabwendbaren aus. Wenn du deine Entscheidung ge�ndert ist, geh' ins Obere Viertel und suche nach Valentine, Valentinos Schwester.
	
	Info_ClearChoices	(Info_Mod_Moe_Geruechte3);

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Ich soll zu Valentinos Schwester Valentine im Oberviertel gehen; sie wei� m�glicherweise, wo ihr Bruder festgehalten wird.");
};

FUNC VOID Info_Mod_Moe_Geruechte3_E()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte3_E_15_00"); //Wo wird Valentino festgehalten?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_E_01_01"); //Das kann ich dir nicht sagen, aber seine Schwester Valentine wei� dar�ber Bescheid. Du findest sie im Oberen Viertel.

	B_LogEntry	(TOPIC_MOD_MOE_VALENTINO, "Ich soll zu Valentinos Schwester Valentine im Oberviertel gehen; sie wei� m�glicherweise, wo ihr Bruder festgehalten wird.");
	
	Info_ClearChoices	(Info_Mod_Moe_Geruechte3);

	Info_AddChoice	(Info_Mod_Moe_Geruechte3, "Woher wei�t du das alles �ber Canthar und sein Verh�ltnis zu mir?", Info_Mod_Moe_Geruechte3_H);
	Info_AddChoice	(Info_Mod_Moe_Geruechte3, "Danke f�r die Informationen. Du bist eine echte Hilfe.", Info_Mod_Moe_Geruechte3_G);
};

FUNC VOID Info_Mod_Moe_Geruechte3_G()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte3_G_15_00"); //Danke f�r die Informationen. Du bist eine echte Hilfe.
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_G_01_01"); //(nachdr�cklich) Diese Schei�e sollte endlich gestoppt werden. Wer geht schon noch bei uns in die Kneipe, wenn ihm seine ganzen M�use gestohlen wurden?
	
	Info_ClearChoices	(Info_Mod_Moe_Geruechte3);
};

FUNC VOID Info_Mod_Moe_Geruechte3_H()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte3_H_15_00"); //Woher wei�t du das alles �ber Canthar und sein Verh�ltnis zu mir?
	AI_Output(self, hero, "Info_Mod_Moe_Geruechte3_H_01_01"); //Brahim h�lt mir gegen�ber nicht dicht. Zumindest nicht nach ein paar Humpen. (lacht) Den Rest erfahre ich von Reisenden.
	
	Info_Mod_Moe_Geruechte3_G();
};

INSTANCE Info_Mod_Moe_Geruechte4 (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Geruechte4_Condition;
	information	= Info_Mod_Moe_Geruechte4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sp�ter vielleicht ...";
};

FUNC INT Info_Mod_Moe_Geruechte4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_Geruechte4_Info()
{
	AI_Output(hero, self, "Info_Mod_Moe_Geruechte4_15_00"); //Sp�ter vielleicht...
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Moe_AllievoTot (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_AllievoTot_Condition;
	information	= Info_Mod_Moe_AllievoTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich konnte Valentino befreien und einen Sch�ler von Canthar erledigen.";
};

FUNC INT Info_Mod_Moe_AllievoTot_Condition()
{
	if (Mod_Allievo_Zusatzpower == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_AllievoTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Moe_AllievoTot_15_00"); //Ich konnte Valentino befreien und einen Sch�ler von Canthar erledigen.
	AI_Output(self, hero, "Info_Mod_Moe_AllievoTot_01_01"); //Das mit Valentino hab' ich schon geh�rt, aber was f�r ein Sch�ler soll das gewesen sein?
	AI_Output(hero, self, "Info_Mod_Moe_AllievoTot_15_02"); //Sein Name war Allievo.
	AI_Output(self, hero, "Info_Mod_Moe_AllievoTot_01_03"); //Allievo? Verflucht, wenn dir das keinen �rger einbringt ...
	AI_Output(hero, self, "Info_Mod_Moe_AllievoTot_15_04"); //Wieso sollte es das?
	AI_Output(self, hero, "Info_Mod_Moe_AllievoTot_01_05"); //Es hei�t, Allievo sei Canthar' Sohn gewesen. Du stehst jetzt wahrscheinlich noch h�her auf seiner Abschussliste, wenn das noch geht.
	AI_Output(self, hero, "Info_Mod_Moe_AllievoTot_01_06"); //Also, pass' auf deinen Arsch auf. Ich sag' dir Bescheid, wenn ich Neues in Erfahrung bringe.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_CANTHAR_GESCHAEFTE, "Oh ... Wenn Allievo wirklich der Sohn von Canthar war, d�rfte das auf noch mehr �rger hinauslaufen ... Ich sollte von nun an wirklich vorsichtig sein.");
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Moe_AufgebrachteFrau (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_AufgebrachteFrau_Condition;
	information	= Info_Mod_Moe_AufgebrachteFrau_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wei�t du zuf�llig, warum ich auf einmal auf offener Stra�e als Schl�chter bezeichnet werde?";
};

FUNC INT Info_Mod_Moe_AufgebrachteFrau_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AufgebrachteBuergerin_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_AufgebrachteFrau_Info()
{
	AI_Output(hero, self, "Info_Mod_Moe_AufgebrachteFrau_15_00"); //Wei�t du zuf�llig, warum ich auf einmal auf offener Stra�e als Schl�chter bezeichnet werde?
	AI_Output(self, hero, "Info_Mod_Moe_AufgebrachteFrau_01_01"); //Ja, das kann ich mir zumindest denken. Ich hatte ja bereits angek�ndigt, dass Canthar jetzt nicht mehr von dir lassen wird, Kumpel.
	AI_Output(self, hero, "Info_Mod_Moe_AufgebrachteFrau_01_02"); //Keine Ahnung, was er sich diesmal einfallen lassen hat, aber es sieht ganz nach Verleumdung aus. (Pause) Die schmutzige Sache mit Allievo h�ttest du dir halt sparen sollen.
	AI_Output(hero, self, "Info_Mod_Moe_AufgebrachteFrau_15_03"); //Was soll ich denn jetzt machen?
	AI_Output(self, hero, "Info_Mod_Moe_AufgebrachteFrau_01_04"); //Heul nicht gleich 'rum und lass dich �berraschen. Wenn du die Schei�e nicht abwenden kannst, bevor sie �ber dich hineinbricht, musst du dich eben durchw�hlen.
	AI_Output(hero, self, "Info_Mod_Moe_AufgebrachteFrau_15_05"); //Danke f�r die schlauen Spr�che.
	AI_Output(self, hero, "Info_Mod_Moe_AufgebrachteFrau_01_06"); //Du wirst es schon �berstehen.
	AI_Output(hero, self, "Info_Mod_Moe_AufgebrachteFrau_15_07"); //Wir werden sehen.

	B_LogEntry_More	(TOPIC_MOD_CANTHAR_GESCHAEFTE, TOPIC_MOD_MOE_TALK, "Canthar will weiterhin seine Rache und fordert erneut mein Geschick heraus.", "Die aufgebrachte Frau deutet darauf hin, dass Canthar es nun mit Verleumdung versucht. Moe meint, es sei am besten, wenn ich das Ungl�ck erst bek�mpfe, sobald ich konkrete Hinweise habe.");

	Mod_MoeTalkedAboutNoTalk = Wld_GetDay();
};

INSTANCE Info_Mod_Moe_DontTalk (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_DontTalk_Condition;
	information	= Info_Mod_Moe_DontTalk_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Moe_DontTalk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_AufgebrachteFrau))
	&& (Mod_MoeDontTalk == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_DontTalk_Info()
{
	AI_Output(self, hero, "Info_Mod_Moe_DontTalk_01_00"); //Stimmt es? Stimmt es, was die Anschl�ge sagen?
	AI_Output(hero, self, "Info_Mod_Moe_DontTalk_15_01"); //Was sagen die Anschl�ge denn?
	AI_Output(self, hero, "Info_Mod_Moe_DontTalk_01_02"); //Hier. Du solltest es dir wirklich ansehen.

	B_GiveInvItems	(self, hero, ItWr_Anschlag, 1);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Moe_ErsterAnschlag (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_ErsterAnschlag_Condition;
	information	= Info_Mod_Moe_ErsterAnschlag_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Moe_ErsterAnschlag_Condition()
{
	if (Mod_MoeDontTalk == 3)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_ErsterAnschlag_Info()
{
	Info_ClearChoices	(Info_Mod_Moe_ErsterAnschlag);

	Info_AddChoice	(Info_Mod_Moe_ErsterAnschlag, "Der Bastard hat es verdient, so zu enden!", Info_Mod_Moe_ErsterAnschlag_C);
	Info_AddChoice	(Info_Mod_Moe_ErsterAnschlag, "Ich habe Allievo im Kampf get�tet, aber nicht hingerichtet.", Info_Mod_Moe_ErsterAnschlag_B);
	Info_AddChoice	(Info_Mod_Moe_ErsterAnschlag, "Siehst du nicht, dass das Canthar' Blendwerk ist?", Info_Mod_Moe_ErsterAnschlag_A);
};

FUNC VOID Info_Mod_Moe_ErsterAnschlag_D()
{
	AI_Output(self, hero, "Info_Mod_Moe_ErsterAnschlag_D_01_00"); //Schei�e, Mann, ich hatte gehofft, dass du so etwas sagst.
	AI_Output(self, hero, "Info_Mod_Moe_ErsterAnschlag_D_01_01"); //�berall auf Khorinis h�ngen diese Plakate jetzt 'rum. Alle haben davon erfahren, keiner will noch mit dir zu tun haben.
	AI_Output(self, hero, "Info_Mod_Moe_ErsterAnschlag_D_01_02"); //Ich wei� allerdings, wie viele Plakate es gibt: eines findest du im Kloster, eins jeweils auf dem Hof von Bengar, Onar und Lobart, und drei h�ngen hier in der Stadt aus, an sehr zug�nglichen Stellen, habe ich mir sagen lassen.
	AI_Output(hero, self, "Info_Mod_Moe_ErsterAnschlag_D_15_03"); //Das hei�t, ich muss alle Plakate abnehmen?
	AI_Output(self, hero, "Info_Mod_Moe_ErsterAnschlag_D_01_04"); //Ich w�rde solche Bilder von mir nicht sehen wollen.
	AI_Output(self, hero, "Info_Mod_Moe_ErsterAnschlag_D_01_05"); //Findest du nicht, dass die Nase schlecht getroffen ist? Deine sieht aus wie eine R�be, aber auf dem Anschlag ist sie eher birnenf�rmig.
	AI_Output(hero, self, "Info_Mod_Moe_ErsterAnschlag_D_15_06"); //Ich habe bisher selten in einen Spiegel geschaut.
	AI_Output(self, hero, "Info_Mod_Moe_ErsterAnschlag_D_01_07"); //Ist ja gut, Kumpel. Also, wenn du die verdammten Plakate in einer Siedlung entfernt hast, sollte es nicht lange dauern, bis die Bewohner dort wieder mit dir plaudern wie eh und je. Du wei�t ja, wie sie sind. (lacht)
	AI_Output(hero, self, "Info_Mod_Moe_ErsterAnschlag_D_15_08"); //Ich mache mich gleich auf den Weg.

	B_LogEntry	(TOPIC_MOD_MOE_TALK, "Die Gr�nde f�r das fortlaufende Schweigen h�ngen in ganz Khorinis aus: Es sind Plakate mit Verunglimpfungen meiner Person. Diese Anschl�ge an Orten des �ffentlichen Lebens, drei St�ck in Khorinis und jeweils eins im Kloster und an den H�fen von Bengar, Onar und Lobart, sollte ich schnellstm�glich entfernen, damit die dort ans�ssige Bev�lkerung wieder mit mir spricht.");

	Wld_InsertItem	(ItWr_Anschlag_City, "FP_ITEM_ANSCHLAG_CITY_01");
	Wld_InsertItem	(ItWr_Anschlag_City, "FP_ITEM_ANSCHLAG_CITY_02");
	Wld_InsertItem	(ItWr_Anschlag_City, "FP_ITEM_ANSCHLAG_CITY_03");
	Wld_InsertItem	(ItWr_Anschlag_Lobart, "FP_ITEM_ANSCHLAG_LOBART");
	Wld_InsertItem	(ItWr_Anschlag_Bengar, "FP_ITEM_ANSCHLAG_BENGAR");
	Wld_InsertItem	(ItWr_Anschlag_Onar, "FP_ITEM_ANSCHLAG_ONAR");
	Wld_InsertItem	(ItWr_Anschlag_Kloster, "FP_ITEM_ANSCHLAG_KLOSTER");
	
	Info_ClearChoices	(Info_Mod_Moe_ErsterAnschlag);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Moe_ErsterAnschlag_B()
{
	AI_Output(hero, self, "Info_Mod_Moe_ErsterAnschlag_B_15_00"); //Ich habe Allievo im Kampf get�tet, aber nicht hingerichtet.

	Info_Mod_Moe_ErsterAnschlag_D();
};

FUNC VOID Info_Mod_Moe_ErsterAnschlag_A()
{
	AI_Output(hero, self, "Info_Mod_Moe_ErsterAnschlag_A_15_00"); //Siehst du nicht, dass das Canthar' Blendwerk ist?

	Info_Mod_Moe_ErsterAnschlag_D();
};

FUNC VOID Info_Mod_Moe_ErsterAnschlag_C()
{
	AI_Output(hero, self, "Info_Mod_Moe_ErsterAnschlag_C_15_00"); //Der Bastard hat es verdient, so zu enden!
	AI_Output(self, hero, "Info_Mod_Moe_ErsterAnschlag_C_01_01"); //Es tut mir Leid, ich dachte, wir stehen auf einer Seite. Jetzt muss ich aber sehen, dass du auch nicht besser bist als Canthar. Geh mir aus den Augen.
	
	Info_ClearChoices	(Info_Mod_Moe_ErsterAnschlag);

	B_SetTopicStatus	(TOPIC_MOD_MOE_TALK, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_CANTHAR_GESCHAEFTE, LOG_FAILED);

	CurrentNQ += 1;

	Mod_MoeDontTalk = 4;
};

INSTANCE Info_Mod_Moe_Anschlaege (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Anschlaege_Condition;
	information	= Info_Mod_Moe_Anschlaege_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier hast du die Anschl�ge, du kannst sie entsorgen.";
};

FUNC INT Info_Mod_Moe_Anschlaege_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_ErsterAnschlag))
	&& (Mod_MoeDontTalk == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_Anschlaege_Info()
{
	AI_Output(hero, self, "Info_Mod_Moe_Anschlaege_15_00"); //Hier hast du die Anschl�ge, du kannst sie entsorgen.

	B_GiveInvItems	(hero, self, ItWr_Anschlag, Npc_HasItems(hero, ItWr_Anschlag));

	AI_Output(self, hero, "Info_Mod_Moe_Anschlaege_01_01"); //(m�rrisch) Sind das alle?
	AI_Output(hero, self, "Info_Mod_Moe_Anschlaege_15_02"); //Ja.
	AI_Output(self, hero, "Info_Mod_Moe_Anschlaege_01_03"); //...
	AI_Output(hero, self, "Info_Mod_Moe_Anschlaege_15_04"); //Was ist denn mit dir los?
	AI_Output(self, hero, "Info_Mod_Moe_Anschlaege_01_05"); //Ich habe heute einen Zettel zugesteckt bekommen.
	AI_Output(hero, self, "Info_Mod_Moe_Anschlaege_15_06"); //Und?
	AI_Output(self, hero, "Info_Mod_Moe_Anschlaege_01_07"); //Hier.

	B_GiveInvItems	(self, hero, ItWr_MoesZettel, 1);

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_MOE_TALK, "Ich habe die Anschl�ge abgeliefert.");
	B_SetTopicStatus	(TOPIC_MOD_MOE_TALK, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Moe_Zettel (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Zettel_Condition;
	information	= Info_Mod_Moe_Zettel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Verstehe.";
};

FUNC INT Info_Mod_Moe_Zettel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_Anschlaege))
	&& (Mod_MoeDontTalk == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_Zettel_Info()
{
	AI_Output(hero, self, "Info_Mod_Moe_Zettel_15_00"); //Verstehe.
	AI_Output(self, hero, "Info_Mod_Moe_Zettel_01_01"); //Mach den Fall allein weiter, ja, Kumpel?
	AI_Output(hero, self, "Info_Mod_Moe_Zettel_15_02"); //Willst du dich etwa unterkriegen lassen?
	AI_Output(self, hero, "Info_Mod_Moe_Zettel_01_03"); //Nein ... ja, ist in Ordnung. Ich helfe dir weiterhin. (Pause) Aber such mich so selten auf wie m�glich.
	AI_Output(hero, self, "Info_Mod_Moe_Zettel_15_04"); //Geht klar. Pass auf deinen R�cken auf.
	AI_Output(self, hero, "Info_Mod_Moe_Zettel_01_05"); //Ich wei� schon gar nicht mehr, wo er ist ...

	B_LogEntry	(TOPIC_MOD_CANTHAR_GESCHAEFTE, "Moe hat eine kryptische Drohung erhalten, er will mir jedoch weiterhin helfen.");
};

INSTANCE Info_Mod_Moe_Shakir (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Shakir_Condition;
	information	= Info_Mod_Moe_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hallo Moe. Ich brauche eine Frau.";
};

FUNC INT Info_Mod_Moe_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Shakir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Moe_Shakir_15_00"); //Hallo Moe. Ich brauche eine Frau.
	AI_Output(self, hero, "Info_Mod_Moe_Shakir_01_01"); //Du willst heiraten?
	AI_Output(hero, self, "Info_Mod_Moe_Shakir_15_02"); //Nein. Nur mal eben so.
	AI_Output(self, hero, "Info_Mod_Moe_Shakir_01_03"); //Aha. Wieso gehst du nicht zu Bromor? Er hat die Auswahl.
	AI_Output(hero, self, "Info_Mod_Moe_Shakir_15_04"); //Der will mir keine mitgeben.
	AI_Output(self, hero, "Info_Mod_Moe_Shakir_01_05"); //Sch�ferst�ndchen im trauten Heim? Im Kerzenlicht und so?
	AI_Output(hero, self, "Info_Mod_Moe_Shakir_15_06"); //Genau.
	AI_Output(self, hero, "Info_Mod_Moe_Shakir_01_07"); //Dann frag mal Edda. Die kennt alle Frauen im Viertel.
	AI_Output(hero, self, "Info_Mod_Moe_Shakir_15_08"); //Edda?
	AI_Output(self, hero, "Info_Mod_Moe_Shakir_01_09"); //Die macht die Suppenk�che. Hinter dem Haus vom Fischverk�ufer.
	AI_Output(hero, self, "Info_Mod_Moe_Shakir_15_10"); //Danke erst mal.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Moe schickt mich zur Suppen-Edda. Die kennt alle Frauen im Viertel.");
};

INSTANCE Info_Mod_Moe_Sumpfkraut (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Sumpfkraut_Condition;
	information	= Info_Mod_Moe_Sumpfkraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mal angenommen ich wollte Sumpfkraut kaufen ...";
};

FUNC INT Info_Mod_Moe_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Moe_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_Sumpfkraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Moe_Sumpfkraut_15_00"); //Mal angenommen ich wollte Sumpfkraut kaufen ...
	AI_Output(self, hero, "Info_Mod_Moe_Sumpfkraut_01_01"); //He, Mann, wir sind hier im Hafenviertel. Hier gibt es alles Verruchte, was Spa� macht ... (grinsend) und was die feinen Herren vom Orden nicht so gerne sehen.
	AI_Output(self, hero, "Info_Mod_Moe_Sumpfkraut_01_02"); //Freudenm�dchen, Gl�ckspiel, Schl�gereien f�r Geld ... und nat�rlich auch den einen oder anderen harzigen St�ngel.
	AI_Output(self, hero, "Info_Mod_Moe_Sumpfkraut_01_03"); //Du musst dich nur bei den Leuten im Hafenviertel etwas umh�ren.
};

INSTANCE Info_Mod_Moe_Flugblaetter (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Flugblaetter_Condition;
	information	= Info_Mod_Moe_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab hier ein Flugblatt f�r dich.";
};

FUNC INT Info_Mod_Moe_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Moe_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Moe_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Moe_Flugblaetter_01_01"); //Oh danke. Mal sehen ...

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Moe_Flugblaetter_01_02"); //Ah ja. Vielleicht werd ich mal bei Matteo vorbeischauen.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Moe_Pickpocket (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_Pickpocket_Condition;
	information	= Info_Mod_Moe_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Moe_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Gold, 120);
};

FUNC VOID Info_Mod_Moe_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Moe_Pickpocket);

	Info_AddChoice	(Info_Mod_Moe_Pickpocket, DIALOG_BACK, Info_Mod_Moe_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Moe_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Moe_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Moe_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Moe_Pickpocket);
};

FUNC VOID Info_Mod_Moe_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Moe_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Moe_Pickpocket);

		Info_AddChoice	(Info_Mod_Moe_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Moe_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Moe_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Moe_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Moe_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Moe_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Moe_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Moe_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Moe_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Moe_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Moe_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Moe_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Moe_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Moe_EXIT (C_INFO)
{
	npc		= Mod_599_NONE_Moe_NW;
	nr		= 1;
	condition	= Info_Mod_Moe_EXIT_Condition;
	information	= Info_Mod_Moe_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Moe_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Moe_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};