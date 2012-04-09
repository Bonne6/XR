INSTANCE Info_Mod_Trimedron_Hi (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Hi_Condition;
	information	= Info_Mod_Trimedron_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Trimedron_Hi_Condition()
{
	if (Mod_GDG_RitualTafel02 == 1)
	{
		self.aivar[AIV_AttackReason] = 0;
		self.aivar[AIV_LastPlayerAR] = 0;
		B_SetAttitude (self, ATT_FRIENDLY);
		return 0;
	}
	else
	{
		//Print ("Kacke");

		B_Attack	(self, hero, AR_None, 0);
		return 0;
	};
};

FUNC VOID Info_Mod_Trimedron_Hi_Info()
{
	
};

INSTANCE Info_Mod_Trimedron_Formel (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Formel_Condition;
	information	= Info_Mod_Trimedron_Formel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pod audmeau athuk.";
};

FUNC INT Info_Mod_Trimedron_Formel_Condition()
{
	if (Mod_GDG_RitualTafel02 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Formel_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_00"); //Pod audmeau athuk.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_01"); //Ich vernahm deine Worte und schenke dir mein Geh�r.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_02"); //Obgleich es mich in tiefes Erstaunen versetzt, nach so langer Zeit hier wieder einen Menschen anzutreffen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_03"); //Sprich also, woher stammst du und was ist dein Begehr?
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_04"); //Ich stamme vom Festland und bin �ber Teleportmagie hierher gekommen ... auf gleiche Weise, wie die Vorv�ter der Kultur dieser Insel.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_05"); //Diese "Kultur" ist seit langem erloschen, die Insel von Menschen unbewohnt.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_06"); //Den Eindruck hatte ich auch gewonnen. Was ist mit den Bewohnern geschehen?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_07"); //Vor vielen Jahrhunderten begann das Land und Meer zu w�ten.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_08"); //Es war die Zeit, als Innos und Beliar Krieg auf dem Lande Adanos f�hrten.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_09"); //Feuer, Giftschwaden und Beben verheerten die Insel und bedrohten alle Bewohner.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_10"); //Da unsere Teleportmechansimen durch die Beben besch�digt worden waren, erschufen eilends die Priester und Gelehrten Portale, welche sie allein mit Hilfe ihrer geistigen Kr�fte aufrechterhielten.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_11"); //Man begann die Evakuierung, doch ehe alle Bewohner entkommen konnten, riss eine gewaltige Explosion das Erdreich auf.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_12"); //Hei�e, giftige D�mpfe entstr�mten schlagartig und bedeckten alles unterhalb dieses Platzes.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_13"); //Jedem brachten sie den sofortigen Tot, der sich noch auf der Insel befand � nicht zuletzt auch den Priestern und Gelehrten.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_14"); //... und somit dem Kopf der hiesigen Kultur. Erst Xeres, dann Naturkatastrophen. Das ist also der Grund f�r ihr erl�schen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_15"); //Xeres?! Du sprichst den Namen dieses abscheulichen Frevlers aus?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_16"); //Dann berichtest du vom endg�ltigen erl�schen der Kultur und bist doch dazu in der Lage ihre Texte zu lesen, ihre Sprache zu verstehen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_17"); //Wer bist du, was hat es mit deinem Erscheinen hier auf sich? Erkl�re dich endlich!
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_18"); //Ich stamme von demselben Eiland, wo einst eure Kultur heimisch war, jedoch von einem anderen Teil der Insel.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_19"); //Mit einigen Magiern Adanos entdeckte und erkundete ich vor kurzem die Ruinen dessen, was einst eure Heimat war.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_20"); //Wir forschten eifrig, erfuhren vieles �ber die alte Kultur und lernten so manches hinzu.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_21"); //Im Verlaufe unserer Nachforschungen reaktivierten wir jedoch einige Portale ... welche - wie soll ich sagen - Xeres die R�ckkehr in die diesseitige Welt erm�glichten.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_22"); //Bei Adanos, das ist nicht m�glich. Xeres wurde doch vernichtet.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_23"); //(�berrascht) Du wei�t davon?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_24"); //Selbstverst�ndlich! Wir blieben �ber Teleportmechanismen mit den anderen Erbauern in Kontakt, welche sich teils woanders niedergelassen hatten, teils auch in Jharkendar zur�ckgeblieben waren.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_25"); //Das tut jetzt aber nichts zu Sache. Wie kommst du zu der Behauptung, er sei zur�ckgekehrt? Willst du mich etwas t�uschen?!
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_26"); //Nein, ich versichere, dass ich die Wahrheit sage.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_27"); //Mit Hilfe seiner Machttr�ger und der Orks ist er im Begriff ganz Khorinis zu unterwerfen.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_28"); //Nur wenn wir Uriziel wiederherstellen, k�nnen wir ihn aufhalten.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_29"); //Dies alles ist dir bekannt? Sogar der Name des Schwertes, mit dem Xeres einst vernichtet wurde?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_30"); //F�r wahr, es l�sst mich gr�beln, ob sich nicht doch was Wahres in deinen Worten verbergen mag.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_31"); //Auch versp�rte ich vor kurzem in den Sph�ren alles Magischem starke Ersch�tterungen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_32"); //Und doch ... wie sollte ich mir sicher sein, dass du jener bist, welcher du vorgibst zu sein?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_33"); //Wer sagt mir, dass du die Macht des Schwertes, nicht dazu nutzen willst andere Pl�ne zu verfolgen?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_34"); //Nein, ich kann dir unm�glich einfach Zugang zu der Ritualst�tte gew�hren.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_35"); //Dies wird ja wohl dein Anliegen sein, welches dich herf�hrt ...
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_36"); //Ja, es ist der einzige Weg! Was kann ich tun, um dich zu �berzeugen?
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_37"); //Nun, lass mich nachdenken ...
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_38"); //Zu allererst sollst du mir verraten, auf welche Weise das Schwert zerst�rt wurde und wie du es gedenkst wiederherzustellen.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_39"); //Ein orkischer Schamane des Xeres zerst�rte es bei einem Ritual.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_40"); //Mit Hilfe der drei G�tterwaffen m�chten die Priester der drei G�tter das Schwert hier wiederherstellen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_41"); //Orkisch ... Ork ... (nachdenklich) Es klingt nach einer Abwandlung des Wortes "Urak".
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_42"); //Und du sprichst von den Waffen der neuen drei Gottheiten. F�r wahr, alles, was du mir erz�hlst scheint schl�ssig. Und doch ...
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_43"); //(zu sich selbst) Na toll, er zweifelt noch.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_44"); //Warte ... wirst du Xeres wirklich vernichten wollen, so musst du dich auch seiner Machttr�ger entledigen, wie einst der Mann, der ihn bannte.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_45"); //Du solltest diese auf Khorinis oder umliegenden Inseln finden und sie mit den G�tterwaffen stellen k�nnen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_46"); //Die Magier sollten dir zweifelsfrei n�here Angaben �ber ihre Aufenthaltsorte machen k�nnen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_47"); //Sobald du dies vollbracht hast und mir ihre Seelensteine als Zeugnis deines Erfolges bringst, werde ich den Zugang zu der heiligen St�tte offen legen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_48"); //Und du wirst ihre Herzen vermutlich ohnehin f�r das Ritual ben�tigen.
	AI_Output(hero, self, "Info_Mod_Trimedron_Formel_15_49"); //In Ordnung, wenn es notwendig ist, werde ich mich auf den Weg machen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Formel_07_50"); //Gut. Die Dreifaltigkeit des Radanos soll dich beh�ten.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Bevor Trimedron die Zeremoniest�tte freigibt, verlangt er, dass ich die Machttr�ger des Xeres vernichte und ihm die Seelensteine der Bastarde bringe. Die Magier k�nnen mir vermutlich n�here Auskunft �ber die gegenw�rtigen Aufenthaltsorte der Kreaturen geben.");
};

FUNC VOID B_Say_Antwort_Seelenstein()
{
	if (Npc_HasItems(hero, ItAt_SoulStone) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_00"); //Ausgezeichnet. Ich sp�re jetzt nur noch die M�chte zweier andere Machttr�ger.
	}
	else if (Npc_HasItems(hero, ItAt_SoulStone) == 2)
	{
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_01"); //Unglaublich. Wenn mich meine Wahrnehmung nicht t�uscht, so ist es nur noch die Macht eines Seelensteines, die es zu erringen gilt.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_02"); //Drei Seelensteine sind nun in unserem Besitz.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_03"); //Jetzt noch an deinem Vorhaben zu zweifeln, m�sste von Verblendung zeugen.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_04"); //Ich werde nun den Zugang zur Ritualst�tte offen legen.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_05"); //Dieser Zettel enth�lt die Formel, die, wenn am richtigen Ort dort oben am Fels ausgeprochen, den Zugang zur Ritualst�tte �ffnet.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_06"); //Der dreifaltige Radanos m�ge euer Vorhaben gelingen lassen ...

		B_GiveInvItems	(self, hero, ItWr_Ritualplatz, 1);

		AI_Output(hero, self, "Info_Mod_Trimedron_Antwort_Seelenstein_15_07"); //Gro�artig, dann kann ich die Magier herbeiholen.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_08"); //Ach, und noch etwas. Mir ist der Name des Mannes eingefallen, der Xeres bezwang und ich bin auch nun bereit, ihn dir verraten.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_09"); //Wenn ich mich recht entsinne, trug er den Namen ... Argis.
		AI_Output(hero, self, "Info_Mod_Trimedron_Antwort_Seelenstein_15_10"); //Argis?! Meinst du vielleicht Argez?
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_11"); //(verbl�fft) Ja, genau, Argez. Wie ist es m�glich, dass du es wei�t?
		AI_Output(hero, self, "Info_Mod_Trimedron_Antwort_Seelenstein_15_12"); //Ich begegnete auf Khorinis einem Mann, der diesen Namen trug.
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_13"); //Was?! Das muss ein Zufall sein ... aber vielleicht ... Ach Unsinn ...
		AI_Output(self, hero, "Info_Mod_Trimedron_Antwort_Seelenstein_07_14"); //Geh jetzt deinen Aufgaben weiter nach und hole die Magier herbei.

		B_LogEntry	(TOPIC_MOD_URIZIEL, "Trimedron hat mir einen Zettel mit der magischen Formel gegeben, die mir den Weg zur Ritualst�tte �ffnen wird, gegeben. Sie wird sich auf dem H�gel hier befinden. Ich sollte die H�hle �ffnen und dann zu Xardas gehen.");
	};
};

INSTANCE Info_Mod_Trimedron_SeelensteinUrnol (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_SeelensteinUrnol_Condition;
	information	= Info_Mod_Trimedron_SeelensteinUrnol_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe hier den Seelenstein von Urnol, dem Schattenlord.";
};

FUNC INT Info_Mod_Trimedron_SeelensteinUrnol_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	&& (Npc_HasItems(hero, ItAt_SoulStone_Urnol) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_SeelensteinUrnol_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_SeelensteinUrnol_15_00"); //Ich habe hier den Seelenstein von Urnol, dem Schattenlord.

	Npc_RemoveInvItems	(hero, ItAt_SoulStone_Urnol, 1);
	CreateInvItems	(hero, ItAt_SoulStone, 1);

	B_Say_Antwort_Seelenstein();
};

INSTANCE Info_Mod_Trimedron_SeelensteinFormwandler (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_SeelensteinFormwandler_Condition;
	information	= Info_Mod_Trimedron_SeelensteinFormwandler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die wandelbare Gestalt des Formenwandlers vermochte ihn nicht zu vor seiner Vernichtung zu bewahren.";
};

FUNC INT Info_Mod_Trimedron_SeelensteinFormwandler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	&& (Npc_HasItems(hero, ItAt_SoulStone_Formwandler) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_SeelensteinFormwandler_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_SeelensteinFormwandler_15_00"); //Die wandelbare Gestalt des Formenwandlers vermochte ihn nicht zu vor seiner Vernichtung zu bewahren. Hier sein Seelenstein.

	Npc_RemoveInvItems	(hero, ItAt_SoulStone_Formwandler, 1);
	CreateInvItems	(hero, ItAt_SoulStone, 1);

	B_Say_Antwort_Seelenstein();
};

INSTANCE Info_Mod_Trimedron_SeelensteinUD (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_SeelensteinUD_Condition;
	information	= Info_Mod_Trimedron_SeelensteinUD_Info;
	permanent	= 0;
	important	= 0;
	description	= "Diesen Seelenstein entriss ich dem Leib des untoten Drachen.";
};

FUNC INT Info_Mod_Trimedron_SeelensteinUD_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	&& (Npc_HasItems(hero, ItAt_SoulStone_UD) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_SeelensteinUD_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_SeelensteinUD_15_00"); //Diesen Seelenstein entriss ich dem Leib des untoten Drachen.

	Npc_RemoveInvItems	(hero, ItAt_SoulStone_UD, 1);
	CreateInvItems	(hero, ItAt_SoulStone, 1);

	B_Say_Antwort_Seelenstein();
};

INSTANCE Info_Mod_Trimedron_Fragen (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Fragen_Condition;
	information	= Info_Mod_Trimedron_Fragen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich h�tte da noch eine Frage ...";
};

FUNC INT Info_Mod_Trimedron_Fragen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Fragen_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Fragen_15_00"); //Ich h�tte da noch eine Frage ...
	AI_Output(self, hero, "Info_Mod_Trimedron_Fragen_07_01"); //Ja, so weit es mir vertretbar erscheint und m�glich ist, werde ich dir Auskunft erteilen.
};

INSTANCE Info_Mod_Trimedron_Teleporter (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Teleporter_Condition;
	information	= Info_Mod_Trimedron_Teleporter_Info;
	permanent	= 0;
	important	= 0;
	description	= "F�r meine R�ckkehr nach Khorinis muss ich einen Teleporter finden.";
};

FUNC INT Info_Mod_Trimedron_Teleporter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Teleporter_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Teleporter_15_00"); //F�r meine R�ckkehr nach Khorinis muss ich einen Teleporter finden und ihn mit meinem magischen Fokus aktivieren. Wei�t du, wo ich einen solchen finde?
	AI_Output(self, hero, "Info_Mod_Trimedron_Teleporter_07_01"); //Ja, in der N�he der Siedlung.
	AI_Output(self, hero, "Info_Mod_Trimedron_Teleporter_07_02"); //Der dazugeh�rige Sockel befand sich bei einem Turm, wurde jedoch bei einem der Beben unter Tr�mmern begraben.
	AI_Output(self, hero, "Info_Mod_Trimedron_Teleporter_07_03"); //Du wirst also eine Spitzhacke heranziehen m�ssen, um den Sockel wieder freizulegen.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Der Sockel befindet sich also bei einem maroden Turm unter Tr�mmern. Ich werde buddeln m�ssen.");
};

INSTANCE Info_Mod_Trimedron_Xeres (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Xeres_Condition;
	information	= Info_Mod_Trimedron_Xeres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wenn ihr doch von der scheinbaren Vernichtung Xeres wusstet (...)";
};

FUNC INT Info_Mod_Trimedron_Xeres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Xeres_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Xeres_15_00"); //Wenn ihr doch von der scheinbaren Vernichtung Xeres wusstet, warum seid ihr dann nie zur�ckgekehrt?
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_01"); //Zur�ckkehren? Fast alle Siedlungen und die meisten Ritualpl�tze waren zerst�rt.
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_02"); //Und Xeres als solcher mochte zwar vom Antlitz der Erde verschwunden sein ... dies galt jedoch nicht f�r seine Lakaienschaft des B�sen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_03"); //Die Priesterschaft des Blutkults, die abtr�nnigen und verr�terischen Uraks, d�monische Gesch�pfe ... sie alle h�tten eine neue Besiedlung nur zum Preis eines erneuten Blutvergie�ens m�glich gemacht.
	AI_Output(self, hero, "Info_Mod_Trimedron_Xeres_07_04"); //Auf dieser Insel hatten wir unsere neue Heimat gefunden und waren � so schien es zumindest die l�ngste Zeit � sicher vor allen �beln.
};

INSTANCE Info_Mod_Trimedron_Urak (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Urak_Condition;
	information	= Info_Mod_Trimedron_Urak_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du erw�hntest vorher in Zusammenhang mit den Orks das Wort 'Urak'.";
};

FUNC INT Info_Mod_Trimedron_Urak_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Urak_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Urak_15_00"); //Du erw�hntest vorher in Zusammenhang mit den Orks das Wort "Urak". Was hat es damit auf sich?
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_01"); //Die Uraks waren einst Bewohner Jahrkendars, wie jeder andere auch.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_02"); //Doch nachdem Xeres die macht errungen hatte, schlugen sie sich heimt�ckisch auf seine Seite und verrieten alles, wof�r unser Glaube, unsere Kultur stand.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_03"); //Viel Leid brachten sie �ber die standhaften und treuen Erbauer und zahlreiche unschuldige Menschen wurden durch ihre mordende Hand hinweggerafft.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_04"); //Nachdem Xeres verbannt war und die drei neuen G�tter aus der Macht und dem Willen des Radanos hervorgegangen waren, straften die Himmlischen die Uraks f�r ihre abscheulichen Frevel.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_05"); //Sie hatten gew�tet wie eine Horde Warg im Blutrausch und sollten dies auch durch ihr Erscheinungsbild zum Ausdruck bringen.
	AI_Output(self, hero, "Info_Mod_Trimedron_Urak_07_06"); //F�r alle Zeiten sollte die animalische Gestalt sie entstellen, welche die Orks auch heute noch zeichnet.
};

INSTANCE Info_Mod_Trimedron_Argez (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_Argez_Condition;
	information	= Info_Mod_Trimedron_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du sprachst von einem jungen Mann.";
};

FUNC INT Info_Mod_Trimedron_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Fragen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Trimedron_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_00"); //Du sprachst von einem jungen Mann, der Xeres durch Uriziel in den Scho� der Erde zur�ckschickte. Was wei�t du �ber ihn?
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_01"); //Nun, dieses Kapitel unserer Geschichte, ist eines der mysteri�sesten und konnte nie v�llig aufgekl�rt werden.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_02"); //Niemand wei�, woher dieser Mann urspr�nglich gekommen war und wohin er nach der Verbannung von Xeres ging.
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_03"); //Wie ist das m�glich?! Irgendwas muss doch �ber ihn bekannt sein ...
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_04"); //Es ist, wie ich sage.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_05"); //Er schien wie aus dem nichts gekommen ... und er verschwand ohne jede Spur ... als h�tte er niemals wirklich existiert.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_06"); //Aber warte ... angeblich soll jemand einmal seinen Namen vernommen haben ...
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_07"); //(Erwartungsvoll) Ja?
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_08"); //Er ... er f�llt mir beim besten Willen nicht mehr ein.
	AI_Output(hero, self, "Info_Mod_Trimedron_Argez_15_09"); //Na toll! Ein Geist mit Amnesie.
	AI_Output(self, hero, "Info_Mod_Trimedron_Argez_07_10"); //Es ist Jahrhunderte her ... ich brauche einfach etwas Zeit zum Nachdenken.
};

INSTANCE Info_Mod_Trimedron_EXIT (C_INFO)
{
	npc		= Mod_7538_OUT_Trimedron_GDG;
	nr		= 1;
	condition	= Info_Mod_Trimedron_EXIT_Condition;
	information	= Info_Mod_Trimedron_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Trimedron_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Trimedron_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};