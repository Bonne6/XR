INSTANCE Info_Mod_Straschiduo_Hi (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Hi_Condition;
	information	= Info_Mod_Straschiduo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Straschiduo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Straschiduo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_29_00"); //Was?! Wer wagt es die heiligen Hallen unserer Bruderschaft des Blutkultes zu betreten?

	if (Mod_WM_Blutkultinfos == 0)
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Aha, eine Gemeinschaft, die sich selbst als 'Blutkult' bezeichnet, scheint ihre Finger im Spiel zu haben.");
	};

	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_29_01"); //W�re ich �ber dein Erscheinen nicht so verbl�fft, so w�rde ich dich auf der Stelle t�ten. Also sprich rasch: Wer bist du und was machst du hier?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich m�chte eurer m�chtigen Gemeinschaft beitreten.", Info_Mod_Straschiduo_Hi_C);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich bin nur zuf�llig hier hereingestolpert. Was geht hier eigentlich vor?", Info_Mod_Straschiduo_Hi_B);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich bin hier, um euch elenden Gesch�pfen den Garaus zu machen.", Info_Mod_Straschiduo_Hi_A);
};

FUNC VOID Info_Mod_Straschiduo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_C_15_00"); //Ich m�chte eurer m�chtigen Gemeinschaft beitreten.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_C_29_01"); //Du erstaunst mich und wirfst einige Fragen auf. Wer bist du?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich bin ein Abenteurer aus dem S�den.", Info_Mod_Straschiduo_Hi_F);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich bin ein ergebener Diener Beliar�s.", Info_Mod_Straschiduo_Hi_E);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich bin ein ehrw�rdiger Diener Adanos.", Info_Mod_Straschiduo_Hi_D);
};

FUNC VOID Info_Mod_Straschiduo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_B_15_00"); //Ich bin nur zuf�llig hier hereingestolpert. Was geht hier eigentlich vor?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_B_29_01"); //Du strapazierst meine Geduld. Wir sind die magisch begabte und �beraus einflussreiche Gemeinschaft des Blutkultes. Das sollte dir vorerst reichen! Und jetzt sprich!!!

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich m�chte eurer m�chtigen Gemeinschaft betreten.", Info_Mod_Straschiduo_Hi_M);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "ich wollte gerade wieder gehen.", Info_Mod_Straschiduo_Hi_L);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich bin hier um euch elenden Gesch�pfen den Garaus zu machen.", Info_Mod_Straschiduo_Hi_A);
};

FUNC VOID Info_Mod_Straschiduo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_A_15_00"); //Ich bin hier, um euch elenden Gesch�pfen den Garaus zu machen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_A_29_01"); //Hahaha, dass ich nicht lache. Du Wicht willst uns vernichten?! An deinem Blute werden wir uns laben. Los, Br�der, hackt ihn in St�cke!

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_F_15_00"); //Ich bin ein Abenteurer aus dem S�den.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_F_29_01"); //Hmm, so sprich: Welchem Gott huldigst du?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Gar keinem Gott.", Info_Mod_Straschiduo_Hi_J);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Dem Schl�fer.", Info_Mod_Straschiduo_Hi_I);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Dem einen Gott.", Info_Mod_Straschiduo_Hi_H);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Innos.", Info_Mod_Straschiduo_Hi_G);
};

FUNC VOID Info_Mod_Straschiduo_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_E_15_00"); //Ich bin ein ergebener Diener Beliars.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_E_29_01"); //Der ergebene Diener eines Gottes?! Keine Qualifikation, die f�r dich spricht ... Los, Mitbr�der, macht diesen gottesf�rchtigen Lakaien alle.

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_D_15_00"); //Ich bin ein ehrw�rdiger Diener Adanos.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_D_29_01"); //Was?! Ein Diener Adanos� wagt es unsere heiligen Hallen zu besudeln?! Los, Mitbr�der, weidet ihn aus!

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_K()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_K_29_00"); //Ja, das sind doch schon mal g�nstige Voraussetzungen. Und damit, dass du es �berhaupt bis zu uns geschafft hast, hast du bereits einen w�rdigen Beweis deiner F�higkeiten geliefert.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_K_29_01"); //Nun, bevor wir dich jedoch in unsere Reihen aufnehmen, werde ich dich noch einigen kleinen Pr�fungen unterziehen, die einen letzten Beleg liefern sollen f�r deinen Willen unserer Gemeinschaft zu dienen und damit in den Genuss ihrer machtvollen Mittel zu kommen.

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);
};

FUNC VOID Info_Mod_Straschiduo_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_J_15_00"); //Gar keinem Gott.

	Info_Mod_Straschiduo_Hi_K();
};

FUNC VOID Info_Mod_Straschiduo_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_I_15_00"); //Dem Schl�fer.

	Info_Mod_Straschiduo_Hi_K();
};

FUNC VOID Info_Mod_Straschiduo_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_H_15_00"); //Dem einen Gott.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_H_29_01"); //Hmm, dass es nach so langer Zeit �berhaupt noch Anh�nger dieser Spinnertums gibt ...?! Nun, nicht mehr lange.

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_G_15_00"); //Innos.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_G_29_01"); //So, so. Aber die l�ngste Zeit. Mitbr�der ...

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Straschiduo_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_M_15_00"); //Ich m�chte eurer m�chtigen Gemeinschaft betreten.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_M_29_01"); //(argw�hnisch) Wirklich? Dann beantworte mir doch mal einige Fragen! Wer bist du?

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich bin ein Abenteurer aus dem S�den.", Info_Mod_Straschiduo_Hi_F);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich bin ein ergebener Diener Beliars.", Info_Mod_Straschiduo_Hi_E);
	Info_AddChoice	(Info_Mod_Straschiduo_Hi, "Ich bin ein ehrw�rdiger Diener Adanos'.", Info_Mod_Straschiduo_Hi_D);
};

FUNC VOID Info_Mod_Straschiduo_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Hi_L_15_00"); //Ich wollte gerade wieder gehen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_L_29_01"); //Hahaha, dass ich nicht lache.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_L_29_02"); //Wer uns �ber den Weg l�uft, kommt nicht umhin seinen Tribut zu entrichten.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Hi_L_29_03"); //Los, Br�der, zerhackt ihn!

	Mod_WM_BlutkultAttack = 1;

	Info_ClearChoices	(Info_Mod_Straschiduo_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Straschiduo_WhatToDo (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_WhatToDo_Condition;
	information	= Info_Mod_Straschiduo_WhatToDo_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was soll ich machen?";
};

FUNC INT Info_Mod_Straschiduo_WhatToDo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_Hi))
	&& (Mod_WM_BlutkultAttack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_WhatToDo_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_WhatToDo_15_00"); //Was soll ich machen?
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_01"); //F�r unsere Rituale ben�tigen wir immer wieder frisches Blut. Bringe mir also f�nf Flaschen Blut get�teter Menschen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_02"); //Damit die Rituale auch die gew�nschte Wirkung haben, m�ssen wir vorher noch Fliegenpilze zu uns nehmen. Bring mir davon sechs St�ck.
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_03"); //Ja, und dann w�ren noch diese l�stigen Wassermagier mit ihren Lakaien ...  mache einen ihrer Magier oder Krieger ausfindig, t�te ihn und bringe mir seine Waffe.
	AI_Output(self, hero, "Info_Mod_Straschiduo_WhatToDo_29_04"); //Wenn du das getan hast, erh�ltst du Zugang zu unseren anderen R�umen und kommst deinem Beitritt in unsere Bruderschaft ein gro�es St�ck n�her.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Na sch�n. Ich soll dem Blutkult f�nf Flaschen Menschenblut besorgen, sechs Fliegenpilze und zuletzt noch die Waffe eines Wasserkriegers oder Magiers.");
};

INSTANCE Info_Mod_Straschiduo_AllesDa (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_AllesDa_Condition;
	information	= Info_Mod_Straschiduo_AllesDa_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe die Sachen.";
};

FUNC INT Info_Mod_Straschiduo_AllesDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (Npc_HasItems(hero, ItPo_Blood) >= 5)
	&& (Npc_HasItems(hero, ItPl_Mushroom_03) >= 6)
	&& ((Npc_HasItems(hero, ItMw_AdanosSchwert) >= 1)
	|| (Npc_HasItems(hero, ItMw_AdanosSchwert_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_01) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_01_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMw_Kilgorin) >= 1)
	|| (Npc_HasItems(hero, ItMw_Kilgorin_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_02) >= 1)
	|| (Npc_HasItems(hero, ItMw_XRSchwert_29_Geschaerft) >= 1)
	|| (Npc_HasItems(hero, ItMW_Addon_Stab03) >= 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_AllesDa_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_AllesDa_15_00"); //Ich habe die Sachen.

	Npc_RemoveInvItems	(hero, ItPo_Blood, 5);
	Npc_RemoveInvItems	(hero, ItPl_Mushroom_03, 6);

	if (Npc_HasItems(hero, ItMw_AdanosSchwert) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_AdanosSchwert, 1);
	}
	else if (Npc_HasItems(hero, ItMw_AdanosSchwert_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_AdanosSchwert_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_01) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_01, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_01_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_01_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMw_Kilgorin) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_Kilgorin, 1);
	}
	else if (Npc_HasItems(hero, ItMw_Kilgorin_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_Kilgorin_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_02) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_02, 1);
	}
	else if (Npc_HasItems(hero, ItMw_XRSchwert_29_Geschaerft) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMw_XRSchwert_29_Geschaerft, 1);
	}
	else if (Npc_HasItems(hero, ItMW_Addon_Stab03) >= 1)
	{
		Npc_RemoveInvItems	(hero, ItMW_Addon_Stab03, 1);
	};

	AI_Output(self, hero, "Info_Mod_Straschiduo_AllesDa_29_01"); //Sehr gut, lass sehen. F�nf Fl�schchen Blut, Fliegenpilze, in Ordnung, und dann � tats�chlich � die Waffe eines Lakaien des Wassers. Ein elender Diener Adanos� weniger.
	AI_Output(self, hero, "Info_Mod_Straschiduo_AllesDa_29_02"); //Ja, nun sind dir auch unsere anderen R�umlichkeiten zug�nglich und die letzten Vorbereitungen f�r das Ritual deiner Aufnahme k�nnen beginnen.

	self.aivar[AIV_PASSGATE] = TRUE;

	B_GivePlayerXP	(350);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Gut, ich kann nun die komplette H�hle betreten ...");
};

INSTANCE Info_Mod_Straschiduo_LetzteVorbereitungen (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_LetzteVorbereitungen_Condition;
	information	= Info_Mod_Straschiduo_LetzteVorbereitungen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Letzte Vorbereitungen?";
};

FUNC INT Info_Mod_Straschiduo_LetzteVorbereitungen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_AllesDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_LetzteVorbereitungen_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_LetzteVorbereitungen_15_00"); //Letzte Vorbereitungen?
	AI_Output(self, hero, "Info_Mod_Straschiduo_LetzteVorbereitungen_29_01"); //Ja, nimm diese Z�hne eines Erzd�mons, s�e sie auf der rot markierten Stelle von Sekobs Feld aus und ernte, was dem Boden entw�chst.

	B_GiveInvItems	(self, hero, ItAt_ErzdemonTooth, 1);

	Wld_SendTrigger	("EVT_BLUTKULT_SAATMARKIERUNG");

	AI_Output(self, hero, "Info_Mod_Straschiduo_LetzteVorbereitungen_29_02"); //Bring alles zu mir und werde einer unserer Br�der.
	AI_Output(self, hero, "Info_Mod_Straschiduo_LetzteVorbereitungen_29_03"); //Nimm noch diese Spitzhacke, damit sollte es leichter sein, die Samen zu s�en.

	B_GiveInvItems	(self, hero, ItMw_2H_AXe_L_01, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "R�tselhaft. Die Z�hne auf Sekobs Feld auss�en, wo es rot markiert ist und die Fr�chte ernten, die dem Boden entwachsen.");
};

INSTANCE Info_Mod_Straschiduo_Gemeinschaft (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Gemeinschaft_Condition;
	information	= Info_Mod_Straschiduo_Gemeinschaft_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir etwas mehr �ber eure Gemeinschaft erz�hlen?";
};

FUNC INT Info_Mod_Straschiduo_Gemeinschaft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_LetzteVorbereitungen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Gemeinschaft_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Gemeinschaft_15_00"); //Kannst du mir etwas mehr �ber eure Gemeinschaft erz�hlen?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_01"); //Nun gut, obwohl ich dir nat�rlich nicht alles preisgeben kann.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_02"); //Du bist noch kein vollwertiges Mitglied unserer Gemeinschaft und �berdies haben wir gerade ein, �hh, gro�es Projekt am Laufen, das unsere volle Aufmerksamkeit erfordert und keine gro�en Ausschweife erlaubt.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_03"); //Nun denn. Wir sind eine uralte Gemeinschaft, weit �lter, als du dir zu dem gegebenen Zeitpunkt vorstellen kannst. Urspr�nglich lebten wir auf einem anderen Teil von Khorinis.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_04"); //Aber die Kultur, die dort einst wohnhaft war, starb aus, �hhm, widrigen Gr�nden aus, sodass wir Opfer f�r unsere Rituale � wir tragen nicht umsonst den Namen Blutkult � vorerst nicht mehr fanden.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_05"); //Sch�n, ich muss einr�umen, dass wir vielleicht auch unseren Teil zu dem Untergang dieser Kultur beigetragen hatten. (lacht geh�ssig)
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_06"); //Wir begaben uns aus diesem Grund in einen Jahrhunderte w�hrenden Schlaf, bis wir Leben und magische Energie auf diesem Teil von Khorinis sp�rten, und uns hierher begaben.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_07"); //Wir mussten aber feststellen, dass die Bedingungen noch nicht unseren Bed�rfnissen entsprachen und ruhten wiederum viele Jahre, bis vor kurzer Zeit eine erhebliche magische Ersch�tterung uns aus unserem Schlaf riss.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_08"); //Ersch�tterungen dieser Art lassen n�mlich auf Umst�rze im Gef�ge der Welt hoffen, die uns das Blut und die Energien vieler Lebewesen zur Verf�gung stellen k�nnen und somit auf gute Bedingungen hoffen lassen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_09"); //Ja, und dann trat noch jemand mit uns in Kontakt, der fast genauso alt ist, wie wir ...
	AI_Output(hero, self, "Info_Mod_Straschiduo_Gemeinschaft_15_10"); //Von wem sprichst du?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Gemeinschaft_29_11"); //�hhm, das erl�utere ich bei anderer Gelegenheit n�her. (herrisch) Geh jetzt deinen Aufgaben nach. Du wei�t, was du zu tun hast.
};

INSTANCE Info_Mod_Straschiduo_Ernte (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Ernte_Condition;
	information	= Info_Mod_Straschiduo_Ernte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier sind die gew�nschten ... �hh ... Feldfr�chte.";
};

FUNC INT Info_Mod_Straschiduo_Ernte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_LetzteVorbereitungen))
	&& (Npc_HasItems(hero, ItFoMuttonZombie) >= 3)
	&& (Npc_HasItems(hero, ItAt_DemonHeart) >= 1)
	&& (Npc_HasItems(hero, ItAt_WaranFireTongue) >= 2)
	&& (Npc_HasItems(hero, ItAt_ErzdemonTooth) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Ernte_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_00"); //Hier sind die gew�nschten ... �hh ... Feldfr�chte.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_01"); //Hervorragend. Nur noch eine Sache musst du jetzt noch erledigen.
	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_02"); //(ersch�pft) Noch was? Wen oder was soll ich diesmal erschlagen, t�ten und ausnehmen?
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_03"); //(lacht) Nein, diesmal nichts dergleichen. Jetzt lernst du zur Abwechslung die Freuden des Gaumens kennen.
	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_04"); //(erfreut) Was Leckeres zu essen, eine St�rkung k�nnte ich jetzt tats�chlich vertragen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_05"); //Siehst du, auch das kommt bei uns nicht zu kurz. Hier ist das Rezept ... und vier Flaschen Blut, wie auch drei Fliegenpilze, die du daf�r ben�tigen wirst.

	CreateInvItems	(hero, ItPo_Blood, 4);
	CreateInvItems	(hero, ItPl_Mushroom_03, 3);
	CreateInvItems	(hero, ItWr_Rezept_Blutkult, 1);

	Wld_SendUnTrigger	("EVT_BLUTKULT_SAATMARKIERUNG");

	AI_Output(hero, self, "Info_Mod_Straschiduo_Ernte_15_06"); //(entsetzt) Wie?!
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_07"); //Nachdem du es zubereitet und verzehrt hast, musst noch mal zu mir kommen, damit wir dich zu einem vollwertigen Mitglied unserer Gemeinschaft machen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Ernte_29_08"); //Und, ach ja, bevor du es isst, solltest du darauf achten, dass dein Vorrat an Lebensenergie gut gef�llt ist. Es k�nnte dich sonst umhauen.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "�hh, Fliegenpilze, Blut ... . Das wird vielleicht ein Gaumenschmaus. Tja, kochen, runter damit � auf gen�gend Vitalit�t ist vorher zu achten � und zu Straschiduo f�r das abschlie�ende Ritual.");

	B_GivePlayerXP	(450);
};

INSTANCE Info_Mod_Straschiduo_Halbinfernalischer (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Halbinfernalischer_Condition;
	information	= Info_Mod_Straschiduo_Halbinfernalischer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe das Mahl eingenommen.";
};

FUNC INT Info_Mod_Straschiduo_Halbinfernalischer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_Ernte))
	&& (Mod_HeroIstDemon == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Halbinfernalischer_Info()
{
	AI_Output(hero, self, "Info_Mod_Straschiduo_Halbinfernalischer_15_00"); //Ich habe das Mahl eingenommen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_01"); //Ahh, ausgezeichnet. Sp�rst du die d�monischen Kr�fte in dir?
	AI_Output(hero, self, "Info_Mod_Straschiduo_Halbinfernalischer_15_02"); //�hh, ich denke schon.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_03"); //Dann tritt nun in unsere Mitte.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_04"); //(zu den Umstehenden) Br�der, es ist nun an der Zeit einen neuen Mitstreiter in unsere Gemeinschaft aufzunehmen, einen, der sich wahrhaft als w�rdig erwiesen hat.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_05"); //Ja, �onen ist es her, dass wir das letzte Mal ein neues Mitglied willkommen gehei�en haben.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_06"); //Und nachdem einer unserer Br�der ins Minental aufbrach, um dort nach M�glichkeiten f�r Tod und Zerst�rung Ausschau zu halten, ist uns ein weiterer Mitbruder vor Ort umso mehr willkommen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_07"); //(Zum Helden) Nun, so wisse denn, dass wir f�r das Erscheinen der Gesch�pfe auf dem Plateau verantwortlich sind, obwohl du vermutlich schon selbst zu der Vermutung gekommen bist.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_08"); //Wir erschufen diese Gesch�pfe durch gemeinsame Zusammenarbeit mit Hexen, indem wir frei werdende Energien Beliars und Innos� aufnahmen, und daraus diese Gesch�pfe formten.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_09"); //So ein Narr der Wassermagier hat uns unwissentlich in die H�nde gespielt, als er ein Ritual vollzog, um gesegnete und verfluchte B�den zu reinigen. (lacht geh�ssig)
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_10"); //(spottet) Ha, die Erhaltung des Gleichgewichts. Nicht, so lange es uns gibt. Nun, wie dem auch sei, leider ist der Kontakt zu den Hexen irgendwie abgebrochen.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_11"); //Deine erste Aufgabe wird es sein herauszufinden, was vorgefallen ist. Und danach wirst du noch als Bote denjenigen aufsuchen, unter dessen Anleitung sich unser B�ndnis mit den Hexen formte und der dieses herrlich abscheuliche Werk erst m�glich machte.
	AI_Output(self, hero, "Info_Mod_Straschiduo_Halbinfernalischer_29_12"); //Aber das alles erst nach dem Ritual. Lasst uns jetzt anfangen.

	B_GivePlayerXP	(200);

	Npc_SetRefuseTalk	(self, 5);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7244_BlutkultKrieger_NW, "RITUAL");
	B_StartOtherRoutine	(Mod_7525_BlutkultKrieger_NW, "RITUAL");
	B_StartOtherRoutine	(Mod_7526_BlutkultMagier_NW, "RITUAL");
};

INSTANCE Info_Mod_Straschiduo_RitualDontWork (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_RitualDontWork_Condition;
	information	= Info_Mod_Straschiduo_RitualDontWork_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Straschiduo_RitualDontWork_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_Halbinfernalischer))
	&& (Mod_HeroIstDemon == 1)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_RitualDontWork_Info()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_RitualDontWork_29_00"); //Verdammt, irgendwas scheint das Ritual zu hemmen. Lass mich nachdenken.

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk	(self, 3);
};

INSTANCE Info_Mod_Straschiduo_Adanos (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Adanos_Condition;
	information	= Info_Mod_Straschiduo_Adanos_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Straschiduo_Adanos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_RitualDontWork))
	&& (Mod_HeroIstDemon == 1)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Adanos_Info()
{
	AI_Output(self, hero, "Info_Mod_Straschiduo_Adanos_29_00"); //(entgeistert) Allein die Pr�senz Adanos� w�rde verm�gen das Ritual zu unterbinden. (hasserf�llt) Ein Diener Adanos�!!!

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Verdammt, ich bin aufgeflogen. Jetzt hei�t es k�mpfen oder fl�chten.");

	Mod_WM_BlutkultAttack = 1;
};

INSTANCE Info_Mod_Straschiduo_Blut (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Blut_Condition;
	information	= Info_Mod_Straschiduo_Blut_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir bei, wie man Menschen Blut abzapft! (1 LP)";
};

FUNC INT Info_Mod_Straschiduo_Blut_Condition()
{
	Info_Mod_Straschiduo_Blut.description = B_BuildLearnString("Bring mir bei, wie man Menschen Blut abzapft!", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Blood));

	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Blood] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Blut_Info()
{
	AI_Output (hero, self, "Info_Mod_Straschiduo_Blut_15_00"); //Bring mir bei, wie man Menschen Blut abzapft!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Blood))
	{
		AI_Output (self, other, "Info_Mod_Straschiduo_Blut_29_01"); //Gut. H�r zu. Es ist im Grunde ganz einfach.
		AI_Output (self, other, "Info_Mod_Straschiduo_Blut_29_02"); //Du nimmst eine scharfe Klinge und schneidest den K�rper irgendwo auf, am besten an der Hauptschlagader. Dann h�ltst du ein Fl�schchen darunter und f�ngst das Blut ein.
	};
};

INSTANCE Info_Mod_Straschiduo_Zunge (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Zunge_Condition;
	information	= Info_Mod_Straschiduo_Zunge_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir bei Zungen zu nehmen! (5 LP)";
};

FUNC INT Info_Mod_Straschiduo_Zunge_Condition()
{
	Info_Mod_Straschiduo_Zunge.description = B_BuildLearnString("Bring mir bei Zungen zu nehmen!", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FireTongue));

	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Zunge_Info()
{
	AI_Output (hero, self, "Info_Mod_Straschiduo_Zunge_15_00"); //Bring mir bei Zungen zu nehmen!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_FireTongue))
	{
		AI_Output (self, other, "Info_Mod_Straschiduo_Zunge_29_01"); //Die Zunge von einem Feuerwaran schl�gst du mit einem Messerhieb aus dem Maul, w�hrend du sie mit der anderen Hand festh�ltst.
	};
};

INSTANCE Info_Mod_Straschiduo_Herz (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Herz_Condition;
	information	= Info_Mod_Straschiduo_Herz_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir bei Herzen zu nehmen! (3 LP)";
};

FUNC INT Info_Mod_Straschiduo_Herz_Condition()
{
	Info_Mod_Straschiduo_Herz.description = B_BuildLearnString("Bring mir bei Herzen zu nehmen!", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Heart));

	if (Npc_KnowsInfo(hero, Info_Mod_Straschiduo_WhatToDo))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Straschiduo_Herz_Info()
{
	AI_Output (hero, self, "Info_Mod_Straschiduo_Herz_15_00"); //Bring mir bei Herzen zu nehmen!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Heart))
	{
		AI_Output (self, other, "Info_Mod_Straschiduo_Herz_29_01"); //Ein Herz entfernst du dem Tier mit einem gekonnten Schnitt in die Brust. Lohnt sich aber h�ufig nur bei besonderen Tieren oder magischen Wesen.
	};
};

const string Straschiduo_Checkpoint	= "WP_BK_03";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Straschiduo_FirstWarn (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_FirstWarn_Condition;
	information	= Info_Mod_Straschiduo_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Straschiduo_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Straschiduo_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Straschiduo_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Straschiduo_FirstWarn_29_00"); //HALT! Du darfst noch nicht vorbei.

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Straschiduo_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Straschiduo_SecondWarn (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_SecondWarn_Condition;
	information	= Info_Mod_Straschiduo_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Straschiduo_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Straschiduo_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Straschiduo_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Straschiduo_SecondWarn_29_00"); //Ich sag's dir zum letzten Mal. Einen Schritt weiter und du bist tot!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Straschiduo_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Straschiduo_Attack (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_Attack_Condition;
	information	= Info_Mod_Straschiduo_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Straschiduo_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Straschiduo_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Straschiduo_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Straschiduo_Attack_29_00"); //Du hast es so gewollt ...

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Straschiduo_EXIT (C_INFO)
{
	npc		= Mod_7203_BK_Straschiduo_NW;
	nr		= 1;
	condition	= Info_Mod_Straschiduo_EXIT_Condition;
	information	= Info_Mod_Straschiduo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Straschiduo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Straschiduo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};