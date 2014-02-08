//**********************************************************************************
//	StandardBrief
//**********************************************************************************

INSTANCE StandardBrief		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseStandardBrief;
	scemeName			=	"MAP";
	description			= 	"StandardBrief";
};
func void UseStandardBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "StandardBrief"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_PlagegeisterFormel		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[0]				=	"enth�lt die Formel zum Bes�nftigen der Geister";
};

INSTANCE ItWr_LandstreicherSiegelring		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLandstreicherSiegelring;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"von einem Landstreicher";
};

func void UseLandstreicherSiegelring ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);

	if (Mod_Herold_Siegelring == 1)
	{
		Mod_Herold_Siegelring_Verlauf = Hlp_Random(2);

		Mod_Herold_Siegelring = 2;

		if (Mod_Herold_Siegelring_Verlauf == 0)
		{
			B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "Es sieht aus als h�tte sich der Dieb ins Minental abgesetzt.");
		}
		else
		{
			B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "Es sieht aus als h�tte sich der Dieb nach Relendel abgesetzt.");
		};
	};

					if (Mod_Herold_Siegelring_Verlauf == 0)
					{
						Doc_PrintLines	( nDocID,  0, "Ich kan hiir nich lenger auf dihh wartn. Glaube die Wachn sind mir aufn Fersn. Ich seze mihh ins Minental ab."					);
					}
					else
					{
						Doc_PrintLines	( nDocID,  0, "Ich kan hiir nich lenger auf dihh wartn. Glaube die Wachn sind mir aufn Fersn. Ich seze mihh nach Relendel ab."					);
					};

					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ps: Die Klamottn des Schn�sels stehn mir ausgesprohhen gud, h�h�h� ..."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_GestathTrophyList		(C_Item)
{
	name 				=	"Liste";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGestathTrophyList;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Troph�en f�r Gestath";
};

func void UseGestathTrophyList ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);

		if (Mod_EIS_Gestath_DragonsnapperHorn > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_DragonsnapperHorn), "x Horn eines Drachensnappers"));
		};
		if (Mod_EIS_Gestath_LurkerClaw > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_LurkerClaw), "x Lurkerklaue"));
		};
		if (Mod_EIS_Gestath_Keilerhauer > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_Keilerhauer), "x Keilerhauer"));
		};
		if (Mod_EIS_Gestath_Flammenzunge > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_Flammenzunge), "x Flammenzunge"));
		};
		if (Mod_EIS_Gestath_ShadowHorn > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_ShadowHorn), "x Horn eines Schattenl�ufers"));
		};
		if (Mod_EIS_Gestath_SharkTeeth > 0)
		{
			Doc_PrintLines	( nDocID,  0, ConcatStrings(IntToString(Mod_EIS_Gestath_SharkTeeth), "x Z�hne eines Sumpfhaies"));
		};
					
		Doc_Show		( nDocID );

};

INSTANCE ItWr_KrautruestungListe		(C_Item)
{
	name 				=	"Liste";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKrautruestungListe;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Zutatenliste f�r die Sumpfkrautr�stung";
};

func void UseKrautruestungListe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "- 15 Pflanzen Sumpfkraut"					);
					Doc_PrintLines	( nDocID,  0, "- 10 Reptilienh�ute"					);
					Doc_PrintLines	( nDocID,  0, "- 5 Stangen Rohstahl"					);
					Doc_PrintLines	( nDocID,  0, "- 3 Skelettknochen"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_EivarZettel		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEivarZettel;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"von einer Leiche in Gelato";
};

func void UseEivarZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Das hab ich nun von meiner Gier nach den Troph�en aus den ferneren Gebieten ... wollte das gro�e Geld machen. Stattdessen sitze ich hier oben und krepiere an meiner Wunde. Wenn das verfluchte Biest endlich verschwinden w�rde k�nnte ich zumindest nach unten und sie notd�rftig behandeln. Aber ich Narr musste ja alles im Baumstumpf verstecken ... als ob mich hier irgendjemand beklauen w�rde. Es geschieht mir fast recht ...");
					Doc_PrintLines	( nDocID,  0, "Dem Jenseits entgegenblickend, Eivar");
					
					Doc_Show		( nDocID );

	Mod_Eivar = 1;

};

INSTANCE ItWr_TierZaehmung		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	0;

	value 				=	50;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTierZaehmung;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Adanos' Gabe der Gewogenheit";
};

func void UseTierZaehmung ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wie alle Wesen auf Adanos' gr�ner Erde entstammten Mensch wie auch Tier der g�ttlichen Sch�pfung. Es besteht eine Verbindung zwischen all diesen Gesch�pfen. Ein kundiger Priester Adanos' vermag nun diese Bindung f�r sich zu nutzen und auch Tiere dem Menschen gewogen zu machen, die eigentlich wild und unz�hmbar sind."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_GarpNotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGarpNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"von Garp aus der alten Mine";
};

func void UseGarpNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Tag 8: Ich halte es nicht mehr unter den anderen aus. Nur weg von ihnen. Niemals werde ich das Fleisch unserer toten Kameraden essen, um zu �berleben. Wir w�ren verdammt bis in alle Ewigkeit ..."					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Tag 10: Dieser Hunger, Hunger, peinigende Hunger. Was w�rde ich jetzt f�r ein St�ck Fleisch geben. Aber diese verdammten Crawler sind unten aufgetaucht und versperren mir den Weg. Keine 10 Pferde bringen mich da runter ..."					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Tag 11: Verdammt, eines von den Biestern hat mich gebissen, als ich nach unten klettern wollte. Ich sp�re wie das Gift meine Venen durchdringt ... ich mach es nicht mehr lange ..."					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Garp"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_OTGeheimkammer01		(C_Item)
{
	name 				=	"Zettelteil";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Hinweis zur Geheimkammer";
};

func void UseOTGeheimkammer01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_oben.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 20, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Da die vermaledeite Kombination f�r die beiden Schalter nicht in deinen Kopf geht, habe ich sie dir hier aufgeschrieben. Aber komm ja nicht auf die Idee, den Zettel im Ganzen mit dir herumzutragen! Die Orks m�ssen nicht wissen, wo wir unsere Sch�tze gelagert haben. Teil ihn in drei Teile, und nur diesen hier beh�ltst du bei dir - den Rest versteckst du und holst ihn nur bei Bedarf hervor, hast du verstanden?!"					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "Ich habe einen Teil einer Notiz gefunden, auf der Cor Kalom anscheinend aufgeschrieben hat, wie man in eine versteckte Kammer gelangt. Allerdings fehlen mir noch zwei weitere Teile, um das R�tsel l�sen zu k�nnen.");
	};

};

INSTANCE ItWr_OTGeheimkammer02		(C_Item)
{
	name 				=	"Zettelteil";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer02;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Hinweis zur Geheimkammer";
};

func void UseOTGeheimkammer02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_mitte.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Du �ffnest die Kammer mit den beiden Schaltern, die mit Totenk�pfen verziert sind. Du findest sie im rechten der beiden G�nge, die vom Raum mit der gro�en Schl�ferstatue abgehen. Die beiden Schalter musst du in der richtigen Kombination bet�tigen: Zuerst den linken zwei Mal, dann den rechten ein Mal, dann wieder den linken ..."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "Ich habe einen Teil einer Notiz gefunden, auf der Cor Kalom anscheinend aufgeschrieben hat, wie man in eine versteckte Kammer gelangt. Allerdings fehlen mir noch zwei weitere Teile, um das R�tsel l�sen zu k�nnen.");
	};

};

INSTANCE ItWr_OTGeheimkammer03		(C_Item)
{
	name 				=	"Zettelteil";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer03;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Hinweis zur Geheimkammer";
};

func void UseOTGeheimkammer03 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters_unten.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... zwei Mal, den rechten drei Mal. Dann den linken ein Mal, den rechten zwei Mal, den linken zwei Mal. Und zum Abschluss den rechten (unleserlich) Mal. Im gegen�berliegenden Raum �ffnet sich jetzt das Loch, das ihr schnell gehauen habt."					);
					
					Doc_Show		( nDocID );

	if (Mod_OT_Geheimkammer == 0)
	{
		Mod_OT_Geheimkammer = 1;

		Log_CreateTopic	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_OT_GEHEIMKAMMER, "Ich habe einen Teil einer Notiz gefunden, auf der Cor Kalom anscheinend aufgeschrieben hat, wie man in eine versteckte Kammer gelangt. Allerdings fehlen mir noch zwei weitere Teile, um das R�tsel l�sen zu k�nnen.");
	};

};

INSTANCE ItWr_OTGeheimkammer04		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOTGeheimkammer04;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Aus der Geheimkammer";
	TEXT[2]				=	"An den gl�cklichen Finder der Kammer";
};

func void UseOTGeheimkammer04 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Handschrift		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich war schneller! Gez. M.A.D."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_Akahasch		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAkahasch;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Nachricht von Akahasch";
};

func void UseAkahasch ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Hallo mein Freund. Du hast mir damals in meiner misslichen Lage sehr geholfen und ich glaube jetzt endlich eine M�glichkeit gefunden zu haben, mich daf�r angemessen zu bedanken. Kurz vor Orlans Taverne befindet sich unter der Br�cke eine H�hle, in welcher die Truhe zu dem Schl�ssel steht. In ihr habe ich einige Dinge verstaut, die dir sicher gefallen werden."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Gr��e,"					);
					Doc_PrintLines	( nDocID,  0, "Akahasch"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_AkahaschNagur		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAkahaschNagur;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"hatte Akahasch dabei";
};

func void UseAkahaschNagur ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "H�r mal Akahasch, wenn du nicht bald die Knete r�berwachsen l�sst, wird es dir schlecht ergehen. Ich kenne paar finstere Kerle, die mit dir Sachen anstellen werden, wie du sie dir nicht in deinen schlimmsten Alptr�umen vorstellen kannst. Wenn sie mit dir fertig sind, wird dir Beliar�s Reich verglichen damit, wie das Paradies vorkommen."					);
					Doc_PrintLines	( nDocID,  0, "War das deutlich? Also, in zwei Stunden mit dem Geld in der Taverne, sonst ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "N."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_GoraxAndokai		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGoraxAndokai;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Orlans Weinlieferung";
};

func void UseGoraxAndokai ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Geh zur Taverne 'Zur toten Harpie' und bringe dem Besitzer Orlan die Weinlieferung. Er soll daf�r 250 Gold zahlen."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_ErolNotiz1		(C_Item)
{
	name 				=	"Vergilbte Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErolNotiz1;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseErolNotiz1 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich, Xardas, Oberhaupt der Schwarzmagier, habe meinen Turm verlassen und werde mir ein Domizil in Khorinis schaffen. So bin ich meinen Glaubensbr�dern und den Geschehnissen auf der Insel n�her. Zur�ckgelassen habe ich einige Gegenst�nde, die jetzt nicht gebraucht, aber sp�ter vielleicht n�tzlich sein werden. Der findige W�rdige wird erhalten, was er sucht ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Xardas"					);
					
					Doc_Show		( nDocID );

	if (Mod_Erol_Fahrender == 2)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 3;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "In einer der Truhen fand ich einen Zettel von Xardas. Ich muss wohl zum alten Turm gehen. Mal sehen ...");

		Mob_CreateItems	("TRUHE_MT_04", ItWr_ErolNotiz2, 1);
	};

};

INSTANCE ItWr_ErolNotiz2		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErolNotiz2;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseErolNotiz2 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Auch der belesenste wei� noch nicht alles. Doch sind Scharfsinn und Geduld Bestandteil seiner W�rde."					);
					
					Doc_Show		( nDocID );

	if (Mod_Erol_Fahrender == 3)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 4;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "Oha! Hier gibt's wohl wieder mal ein R�tsel zu l�sen: 'Auch der belesenste wei� noch nicht alles. Doch sind Scharfsinn und Geduld Bestandteil seiner W�rde.'");

		//Mob_CreateItems	("TRUHE_MT_02", ItWr_ErolNotiz3, 1);
	};

};

INSTANCE ItWr_ErolNotiz3		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErolNotiz3;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseErolNotiz3 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nicht alle Feuer sollen brennen."					);
					
					Doc_Show		( nDocID );

	/*if (Mod_Erol_Fahrender == 3)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 4;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "Hmm. Wie l�sche ich Feuer? Ausblasen? Ersticken? Am besten wohl mit Wasser ...");

		Mob_CreateItems	("TRUHE_MT_02", ItWr_ErolNotiz3, 1);
	};*/

};

INSTANCE ItWr_ErolNotiz4		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErolNotiz4;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseErolNotiz4 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Die Zeit der Wandlung birgt �nderungen. �ndere das Symbol der Unendlichkeit und du hast den Schl�ssel zur Macht."					);
					
					Doc_Show		( nDocID );

	if (Mod_Erol_Fahrender == 4)
	&& (CurrentLevel == MINENTAL_ZEN)
	{
		Mod_Erol_Fahrender = 5;

		B_LogEntry	(TOPIC_MOD_EROL_FEUERMAGIER, "Wieder mal r�tselhaft. Ein Symbol �ndern ...");
	};

};

INSTANCE ItWr_JGSuchenderNotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseJGSuchenderNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hatte ein Suchender bei sich";
};
func void UseJGSuchenderNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bald ist es geschafft. Die, die sich f�r unantastbar halten werden aufger�ttelt und bringen Chaos �ber das Land. Die, die meinen, das Gleichgewicht zu verk�rpern, werden schwanken. Ihre Macht wird schwinden und Gerechtigkeit wird wieder Einzug erhalten."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_JG_MinenPart == 3)
	{
		Mod_JG_MinenPart = 4;

		B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Noch ein Suchender. Aber nicht der aus Khorinis. Der hat anders geredet. Und schon wieder ein Zettel f�r Cyrco. Immerhin eine beachtliche Heimstatt.");
	};

};

INSTANCE ItWr_AndreAbschied		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAndreAbschied;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Andres Brief";
};
func void UseAndreAbschied ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Die Zeit dr�ngt, so will ich mich kurz fassen."					);
					Doc_PrintLines	( nDocID,  0, "Das Vorhaben den Roboter einzuschmelzen ist hoffentlich gelungen. Doch war ich mir schon von Beginn an dar�ber im Klaren, dass es vermutlich nicht gl�cken wird einen 2ten Ausgang in den Ofen einzubauen. Sofern ihr das hier lest, hat sich meine Vermutung best�tigt und ich Weile vermutlich nicht mehr unter euch. Entschuldigt meine T�uschung, aber es war notwendig, um das Vorhaben nicht zu gef�hrden. Denn ungleich schlimmer als das w�re es, einer mordenden Maschine noch l�nger bei ihrem Treiben zuzusehen. Es waren gewiss nicht die untadeligsten Menschen, denen sie das Leben nahm. Aber den Tot hatten sie nicht verdient. Und Innos wei�, dass niemand ohne Schuld ist. Mein Nachfolger soll jener aus den Reihen der Stadtwachen werden, der sich bereit erkl�rte den Roboter in den Ofen zu locken. Eine solche Gefahr auf sich zu nehmen, um das Leben anderer zu sch�tzen, ist eben das, was einen Streiter Innos auszeichnet. Ich bin mir sicher, er wird ein w�rdiger Nachfolger sein."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ergebenst,"					);
					Doc_PrintLines	( nDocID,  0, "Hauptmann Andre"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_BesaenftigungBeliars		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBesaenftigungBeliars;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Bes�nftigung Beliars";
};
func void UseBesaenftigungBeliars ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Bes�nftigung Beliars"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "So hatte Beliar in seinem Zorn das Dorf mit einem verheerenden Brand zerst�rt. Nach einiger Zeit machten sich die Menschen jedoch daran eine neue Siedlung zu errichten, welche teilweise auf den �berresten der alten erbaut wurde. Damit ihr jedoch nicht dasselbe Schicksal drohte, wie der vorigen, wurde unter den W�rdentr�gern ein geheimer Beschluss gefasst. Um den Gott der Finsternis zu bes�nftigen, sollte ihm von nun an immer im Abstand weniger Tage einer kleiner Betrag Goldes geopfert werden. Diesen warf der Halter der Stadt immer des Nachts in die Tiefe, wo sie Beliar einen Schrein geweiht hatten. In den n�chsten Generationen wussten immer weniger der Nachfolger um die wahren Ursache des Goldopfers bescheid. Nicht jedem trauten die Stadt�lteren zu mit dieser Wahrheit umzugehen, sodass es als ein Opfer an Adanos ausgegeben wurde ..."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_KurganNotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKurganNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Zettel von Kurgan";
};
func void UseKurganNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Ausgezeichnet, mein Treuer Diener. Die Entf�hrungen werden nicht nur die Spannungen zwischen den D�monenbeschw�rern und der Stadt weiter anheizen. Je zahlreicher sich ihre Leichname in der Finsternis stapeln, desto leichter wird es uns fallen die Mine unter unsere Kontrolle zu bringen, wenn der Zeitpunkt gekommen ist."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Urnol"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_AndreSchwert		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAndreSchwert;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Andres Notiz f�r mich";
};
func void UseAndreSchwert ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Der Inhalt meiner Truhe soll dir dabei helfen deiner Aufgabe gerecht zu werden. Unter den Sachen darin wirst du auch ein geschmolzenes Schwert finden. Gib es Harad und sag ihm, er soll es f�r dich umarbeiten. Er wei�, was es damit auf sich hat und wird verstehen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Vielleicht wirst du dich fragen wieso ich mich geopfert habe, obwohl bislang nur Delinquenten dem Roboter zum Opfer fielen. Nun, ich hatte einstmals einen j�ngeren Bruder. Er war ein Tunichgut, Dieb und Betr�ger und wurde f�r seine Taten in die Kolonie verbannt. Ich verfluchte seinen Namen und wollte jede Spur von ihm aus meinem Leben zu tilgen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Auch nach dem Fall der Barriere �nderte sich nichts daran. Sollte ich ihn jemals zu Gesicht bekommen, schwor ich mir, w�rde ich ihn keines Blickes w�rdigen, geschweige denn das Wort an ihn richten. Und im Stillen w�nschte ich mir, er w�re tot und auf ewig vom Antlitz der Erde getilgt."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Doch nun erfuhr ich vor kurzem, dass er ein ehrw�rdiger Diener Innos geworden war und sein Leben jetzt ganz nach ihm ausrichtet. Ich sch�mte mich meiner selbst f�r die Verw�nschungen und Fl�che, die ich gegen ihn ausgesto�en hatte und erkannte, dass ich im Unrecht gewesen war."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Vielleicht verstehst du jetzt mein Handeln etwas besser."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nun, dr�ngt die Zeit aber zum Aufbruch ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Innos sei mit dir auf deinen Wegen."					);
					
					Doc_Show		( nDocID );

	if (Mod_AndreSchwert == 0)
	{
		Mod_AndreSchwert = 1;

		B_LogEntry	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Andre hinterlie� mir eine Notiz und ein geschmolzenes Schwert in der Truhe. Zu dem Schwert meinte er, ich solle dieses zu Harad bringen und es f�r mich umschmieden lassen.");
	};

};

INSTANCE ItWr_DominiquesRuf		(C_Item)
{
	name 				=	"Gedicht";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDominiquesRuf;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Dominiques Ruf";
};
func void UseDominiquesRuf ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Dominiques Ruf"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wir werden seinen Ruhm ernten"					);
					Doc_PrintLines	( nDocID,  0, "Innos steht bei mir und meinen Br�dern"					);
					Doc_PrintLines	( nDocID,  0, "Ich werde alle auf meinem Weg wie Schafe schlachten"					);
					Doc_PrintLines	( nDocID,  0, "denn er ist das Feuer in meinem Herz"					);
					Doc_PrintLines	( nDocID,  0, "Meine Klinge ist nur ihm geweiht"					);
					Doc_PrintLines	( nDocID,  0, "an diesem Tag wird sein Name erklingen"					);
					Doc_PrintLines	( nDocID,  0, "Jeder der sich in meinen Weg stellt"					);
					Doc_PrintLines	( nDocID,  0, "wird durch meine Hand sterben"					);
					Doc_PrintLines	( nDocID,  0, "denn ich bin ein Krieger Innos"					);
					Doc_PrintLines	( nDocID,  0, "Vollstrecker seines Willens"					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_YasinErpresser		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseYasinErpresser;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Erpresserschreiben";
};
func void UseYasinErpresser ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Tja, mein lieber Yasin, deine Wucherpreise haben aber nicht gerade von N�chstenliebe gezeugt. Ich gebe dir daher mal eine Lektion in Punkto Gro�z�gigkeit und werde �ber deinen Aufenthaltsort schweigen� und bekanntlich ist schweigen Gold. Und davon darfst du mir jeden Vollmond ein bescheidenes S�ckchen liegen lassen. Nat�rlich nicht an unserem bisherigen, exklusiven Treffpunkt in der Stadt, sondern 20m n�rdlich vom Osttor."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ps: Und glaube mir, die Stadtwachen sind dein geringstes Problem. Denn �berleg mal, was deine ,,Freunde�� mit dir anstellen, wenn sie herausfinden, dass sie durch deine Unvorsichtigkeit aufgeflogen sind. Ich denke, wir verstehen uns, mein Lieber."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "In lieben Gr��e,"					);
					Doc_PrintLines	( nDocID,  0, "dein M."					);
					
					Doc_Show		( nDocID );

};

var int Mod_ArgezTB1;

INSTANCE ItWr_ArgezTagebuch1		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseArgezTagebuch1;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Seite aus Argez' Tagebuch";
};
func void UseArgezTagebuch1 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Heute wache ich auf, und mein Leben hat sich ver�ndert. Radanos ist mir wieder im Schlaf erschienen - wie so h�ufig in letzter Zeit. Aber diesmal war die Botschaft klarer, und ich hatte schlafend das Gef�hl, seine Forderungen seien absolut gerechtfertigt. Warum ich es bin, dem er sich zeigt, wei� ich nun: Ich bin sein Auserw�hlter, Xeres zu besiegen, ich bin der Einzige, der es zu tun vermag. Das kann kaum verwundern, wenn man meine Vorgeschichte kennt.");
					Doc_PrintLines	( nDocID,  0, "Aber nicht einmal meine Magie reicht aus, um es mit Xeres aufzunehmen. Deswegen haben mir die G�tter eine Waffe an die Seite gestellt, deren Anblick allein neuen Mut aufleben l�sst. 'Uriziel' - der Gottesarm - wird im unvermeidlichen Kampf die Kraft Radanos' b�ndeln und Xeres den entscheidenden Sto� versetzen.");
					Doc_PrintLines	( nDocID,  0, "Liebes Tagebuch, ich wei� nicht, ob ich dich jemals wiedersehen werde. Du kennst nun meine dunklen wie auch hellen Seiten, und ich will alles daf�r tun, dass letztere �berwiegen. M�ge der Finder dieses B�chleins nur Gutes �ber mich h�ren.");
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

	if (!Mod_ArgezTB1) {
		B_LogEntry	(TOPIC_MOD_ARGEZ, "Argez ist anscheinend um einiges �lter, als ich dachte! Die �bersetzte Tagebuchseite, die er mir gab, legt nahe, dass er es war, der Xeres einst entgegentrat und daf�r sorgte, dass er verbannt werden konnte. Was h�lt ihn seitdem am Leben? Ist er selbst g�ttlichen Ursprungs?");
	};

};

INSTANCE ItWr_YasinNotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseYasinNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Yasins Notiz";
};
func void UseYasinNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Muss jemanden finden, der dieses Schwein beseitigt. Darf aber niemand sein, den er als einen von uns erkennen k�nnte. Sonst riecht er den Braten und ich bin endg�ltig geliefert."					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_UrsNotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseUrsNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hat Urs liegen lassen";
};

func void UseUrsNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Hier konnte ich Wally leider nicht finden. Ich werde mich hinter dem Alten Lager beim Wald umschauen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_Urs_Hund == 1)
	{
		Mod_Urs_Hund = 2;

		B_LogEntry	(TOPIC_MOD_URS_HUND, "Urs sucht Wally jetzt irgendwo hinter dem alten Lager beim Wald.");

		B_StartOtherRoutine	(Mod_7649_OUT_Urs_MT,	"WALD");
	};

};

INSTANCE ItWr_SeraNotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSeraNotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hatte Serra bei sich";
};
func void UseSeraNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Sehr gut, meine T�chter. Mit eurer Gabe solltet ihr ohne Schwierigkeiten dazu in der Lage sein, die Bewohner des Gebietes eurem Willen zu unterwerfen. Ein gutes St�ck nord�stlich von uns befindet sich ein Dorf. Dort sollt ihr eure Macht erproben."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Strewak_01		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseStrewak_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Notiz von Strewak 1";
};
func void UseStrewak_01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... schritt er ohne zu z�gern zwischen die Kreaturen und schlachtete sie erbarmungslos ab. Keine noch so heftige Attacke schien ihn auch nur im Geringsten zu beeindrucken� als kenne er keinen Schmerz.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Als wir tiefer in den Tempel gingen, kamen wir zuletzt an eine lange Passage, die von Feuer durchzogen war. Mein Begleiter wandte sich zu mir und �bergab mir einige Steintafeln und Spruchrollen. Er verwies mich darauf, dass ich sich mir vieles erschlie�en w�rde, wenn ich sie lese. Zuletzt sprach er etwas von dem Ziel seiner Reise und von Erl�sung, die ihn nun erwartete, drehte sich dann um und schritt durch die Flammen, bis meine Augen ihn nicht mehr zu sehen vermochten."					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Strewak_02		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseStrewak_02;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Notiz von Strewak 2";
};
func void UseStrewak_02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich blieb wie gebannt sitzen und mein Blick fiel auf die Tafel, die vor mir lag. Da war es, als sei ich auf einmal erf�llt von Wissen und die Tafel zerfiel. All die fremdartigen Hieroglyphen an den W�nden des Raumes vermochte ich zu verstehen, auch, wenn sie sehr Bruchst�ckhaft waren. Da entdeckte ich einen Text, der noch relativ vollst�ndig war. Er berichtete davon, dass die Flammen magischer Natur seien und alles Leben verbrennen w�rden, dass sich ihnen n�hrte. Und er erz�hlte von einem Giganten aus Eis, dessen Herz die Flammen erl�schen lassen k�nnte ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Strewak_03		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseStrewak_03;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Notiz von Strewak 3";
};
func void UseStrewak_03 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Die kalte Witterung ist erbarmungslos und meine Kr�fte ersch�pft. Ich werde bei meiner Familie im Dorf rasten, ehe ich den Weg fortsetze ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... da hebt er vor mir empor, gewaltig, Erfurcht einfl��end. Je n�her ich im komme, desto gnadenloser umf�ngt mich die K�lte. Ich werde nun die Spruchrollen nutzen und hoffen, dass ich ihn damit bezwingen kann ..."					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_KesselProblem		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseKesselProblem;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hatte Bruce bei sich";
};
func void UseKesselProblem ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Okey, damit ich es nicht wieder vergesse:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Samstagabend:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "50 Erz und jeder ist zufrieden."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Montagabend:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "20 Erz diesmal f�r Fester f�r die gr��ere Sache."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Mittwochabend:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "10 Erz f�r 12 St�ck."					);
					
					Doc_Show		( nDocID );

	if (Mod_NL_TalkesselProblem < 3)
	{
		Mod_NL_TalkesselProblem = 3;

		B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Soso, ich sollte mal ein Schw�tzchen mit Fester halten.");
	};

};

INSTANCE ItWr_LeeInKneipe		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLeeInKneipe;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Schreiben von Lee";
	TEXT[1]		=	"Gew�hrt mir Zugang zur Kneipe";
};
func void UseLeeInKneipe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Dieser Mann hat sich im Lager als Sch�rfer verdient gemacht und seinen Anteil entrichtet."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Lee"					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_EremitEinkaufsliste		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEremitEinkaufsliste;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Einkaufsliste des Eremiten";
};
func void UseEremitEinkaufsliste ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Einkaufsliste"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "20 Brote");
					Doc_PrintLines	( nDocID,  0, "10 Schinken");
					Doc_PrintLines	( nDocID,  0, "10 Wein");
					Doc_PrintLines	( nDocID,  0, "10 Wurst");
					Doc_PrintLines	( nDocID,  0, "5 Grog");
					Doc_PrintLines	( nDocID,  0, "30 Holz");
					Doc_PrintLines	( nDocID,  0, "300 Pfeile");
					Doc_PrintLines	( nDocID,  0, "2 Moleratfett");
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_PetuniaZettel		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePetuniaZettel;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hatte einer von Petunias Handlangern bei sich";
};
func void UsePetuniaZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wenn ihr einen Anw�rter seht, schlagt hin nieder und fl��t ihm den beigelegten Trank ein. Er wird tr�umen, dass er das ach so tolle Bl�tenblatt dort finden wird, wo die Goblinmatronen waren. Dorthin m�sst ihr das vorbereitete Bl�tenblatt bringen. Anschlie�end wird der Anw�rter das Blatt zu seinem Auftraggeber bringen und wir wissen endlich, wer unser Hauptziel ist. Schaltet den Anw�rter und den Auftraggeber aus und kehrt zu mir zur�ck."					);
					Doc_PrintLine	( nDocID,  0, "P."					);
					
					Doc_Show		( nDocID );

	if (Mod_VMG_Pruefung_Petunia == 4)
	{
		Mod_VMG_Pruefung_Petunia = 5;

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Ich kenne nun den Plan von Petunia. Ich sollte mit ihr dar�ber sprechen, um mehr �ber sie zu erfahren.");
	};

};

INSTANCE ItWr_Schneegeister		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSchneegeister;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hatte der Zombie im Tempel in Gelato bei sich";
};
func void UseSchneegeister ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Fast ist es soweit."					);
					Doc_PrintLines	( nDocID,  0, "F�r das Ritual ist bereits alles gerichtet. Schon in K�rze werde auch ich mit den Sph�ren des D�monischen verbunden sein und mich der Macht bedienen k�nnen ... so wie sie. Und die elendigen Bewohner des Dorfes sollen dann erschaudern ... bis in alle Zeiten."					);
					
					Doc_Show		( nDocID );

	if (Mod_Thys_Schneegeister == 1)
	{
		Mod_Thys_Schneegeister = 2;

		B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Tja, scheinbar war er den finsteren Kr�ften nicht gewachsen.  Ich sollte Thys davon berichten.");
	};

};

INSTANCE ItWr_TheodorusBotschaft		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTheodorusBotschaft;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"soll ich auf dem Gr�st am Marktplatz vorlesen";
};
func void UseTheodorusBotschaft ()
{
	var int nDocID;

	nDocID = 	Doc_Create		()			  ;							// DocManager
	Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
	Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
	Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
	Doc_PrintLines	( nDocID,  0, "Verk�ndigung im Namen des Theodorus"					);
	Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
	Doc_PrintLines	( nDocID,  0, "B�rger Khoratas, ich, der neue Stadthalter, informiere euch hiermit �ber unverz�glich in Kraft tretende �nderungen im Streik der Bergleute. Die von ihnen zurecht vorgetragenen Beschwerden werden einer eingehenden Pr�fung unterzogen; erst dann werde ich entscheiden, ob die Arbeit in der Mine unter neuen Bedingungen wieder aufgenommen wird."					);
	Doc_PrintLines	( nDocID,  0, "Die bisher zu verzeichnenden Todesf�lle sind tragisch, doch ich werde einen Weg finden, die betroffenen Familien zu entsch�digen. Ich bitte euch inst�ndig, die Bergleute nicht euren eventuell angestauten Zorn sp�ren zu lassen."					);
	Doc_PrintLine	( nDocID,  0, ""					);
	Doc_PrintLine	( nDocID,  0, "In Hochachtung,"					);
	Doc_PrintLine	( nDocID,  0, "Theodorus"					);
					
	Doc_Show		( nDocID );
};

INSTANCE ItWr_PerZettel		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePerZettel;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Formel f�r die Meditation im Tal";
};
func void UsePerZettel ()
{
	if (Npc_GetDistToWP(hero, "TUG_87") < 2000)
	&& (Npc_KnowsInfo(hero, Info_Mod_Per_Pruefung3))
	{
		Mod_VMG_Pruefung = 4;

		Npc_RemoveInvItems	(hero, ItWr_PerZettel, 1);
	}
	else if (Npc_GetDistToWP(hero, "TUG_87") >= 2000)
	{
		Print	("Nicht hier.");
	}
	else
	{
		Print	("Noch nicht.");
	};
};

INSTANCE ItWr_RaetselWand		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRaetselWand;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"enth�lt eine Erkl�rung zur R�tselwand";
};
func void UseRaetselWand ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Der Weise deutet die Zeichen"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "0000 = 0"					);
					Doc_PrintLine	( nDocID,  0, "0001 = 1"					);
					Doc_PrintLine	( nDocID,  0, "0010 = 2"					);
					Doc_PrintLine	( nDocID,  0, "0100 = 4"					);
					Doc_PrintLine	( nDocID,  0, "1000 = 8"					);
					
					Doc_Show		( nDocID );

	if (Mod_JG_Raetselwand == 0)
	{
		Mod_JG_Raetselwand = 1;

		Log_CreateTopic	(TOPIC_MOD_JG_RAETSELWAND, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_JG_RAETSELWAND, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_JG_RAETSELWAND, "Hoppla! Das scheint mir noch ein R�tsel zu sein. Hm ...");
	};

};

INSTANCE ItWr_OrktempelZettel1		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOrktempelZettel1;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Notiz eines Novizen";
	TEXT[1]		=	"In einer krakeligen Handschrift";
};

FUNC VOID UseOrktempelZettel1 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "Dies sind meine letzten Atemz�ge beim Licht einer kaum glimmenden Fackel. Cor Kalom hat uns alle ins Verderben gef�hrt; er ist ein besessener Fanatiker. Hier unten habe ich gelernt, was es bedeutet, Angst zu haben. Angst, die mich von der Gruppe der Bruderschaft weg und in diesen schmalen Hohlraum hinein trieb, der nun mein Grab sein wird. Denn der Felsspalt, durch den ich hinein kletterte, ist durch eines dieser kleinen Erdbeben verschwunden; �brig nur der Hohlraum, in dem ich mich in Gesellschaft von Mumien befinde. Meine einzige Hoffnung ist ein zweites Erdbeben, mein einziger Wunsch ein Schluck Wasser ...");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_OrktempelZettel2		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOrktempelZettel2;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Uraltes Schriftst�ck";
	TEXT[1]		=	"Es ist nur noch teilweise leserlich";
};

FUNC VOID UseOrktempelZettel2 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "(unleserlich) ... seid ihr dazu bestimmt, den Tempel f�r den Meister Krushak zu errichten. Danach ... vielleicht R�ckkehr nach Jharkendar erlauben ... zu fliehen, droht der sofortige Tod ... kein Erbarmen ... Wir ... Schamanen, werden eure Aufseher ... euch der Meister gn�dig sein!");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_OrktempelZettel3		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseOrktempelZettel3;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Ork-Dokument";
	TEXT[1]		=	"Voll mit orkischen Schriftzeichen";
};

FUNC VOID UseOrktempelZettel3 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "(Du kannst die Zeichen nicht lesen, aber die aggressive Schrift l�sst auf keinen freundlichen Ton schlie�en. Es scheint, als w�rde im Text h�ufiger das Wort 'Krushak' vorkommen. Beim n�heren Hinsehen f�llt dir auf, dass die Schriftfarbe nicht schwarz wie Tinte ist, sondern bronzefarben wie von getrocknetem Blut...)");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_BlutkelchZettel1		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkelchZettel1;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Teil eines R�tsel der Assassinen";
};

FUNC VOID UseBlutkelchZettel1 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "ANIS");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "DARS");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "HERR");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "MINEN");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_BlutkelchZettel2		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkelchZettel2;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Teil eines R�tsel der Assassinen";
};

FUNC VOID UseBlutkelchZettel2 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "STRAND");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "JHARKEN");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "SCHAFT");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "NICHT");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_BlutkelchZettel3		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkelchZettel3;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Teil eines R�tsel der Assassinen";
};

FUNC VOID UseBlutkelchZettel3 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "KHOR");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "MINEN");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "HAUS");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "TAL");
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Stuhl		(C_Item)
{
	name 				=	"Zeichnung";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Stuhl;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Skizze von Coragons Stuhl";
};

FUNC VOID UseZeichnung_Stuhl ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Stuhl.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Tisch		(C_Item)
{
	name 				=	"Zeichnung";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Tisch;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Skizze von Matteos Festtisch";
};

FUNC VOID UseZeichnung_Tisch ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Tisch.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Schmuckkasten		(C_Item)
{
	name 				=	"Zeichnung";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Schmuckkasten;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Skizze von einem Schmuckk�stchen";
};

FUNC VOID UseZeichnung_Schmuckkasten ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Schmuckkasten.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Bierkrug		(C_Item)
{
	name 				=	"Zeichnung";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Bierkrug;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Skizze von einem Bierkrug";
};

FUNC VOID UseZeichnung_Bierkrug ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Bierkrug.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_Zeichnung_Karte		(C_Item)
{
	name 				=	"Zeichnung";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseZeichnung_Karte;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Skizze einer Karte";
};

FUNC VOID UseZeichnung_Karte ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "Zeichnung_Karte.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_SteinDerWeisen		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSteinDerWeisen;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"Zutatenliste f�r den Stein der Weisen";
};

FUNC VOID UseSteinDerWeisen ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "Liste f�r den Stein der Weisen");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "5 Goldbrocken");
	Doc_PrintLines	(nDocID,  0, "3 Bergkristalle");
	Doc_PrintLines	(nDocID,  0, "2 Schwefelbrocken");
	Doc_PrintLines	(nDocID,  0, "15 Erzbrocken");
	Doc_PrintLines	(nDocID,  0, "5 Kohlest�cke");
	Doc_PrintLines	(nDocID,  0, "30 alte M�nzen");
	Doc_PrintLines	(nDocID,  0, "5 Perlen");
	Doc_PrintLines	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "1 St�rketrank");
	Doc_PrintLines	(nDocID,  0, "1 Geschicklichkeitstrank");
	Doc_PrintLines	(nDocID,  0, "1 Elixier des Lebens");
	Doc_PrintLines	(nDocID,  0, "2 Elixier des Geistes");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_MahamadRaetsel1		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMahamadRaetsel1;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"enth�lt das erste R�tsel von Mahamad";
};

FUNC VOID UseMahamadRaetsel1 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "F�r ein eine gute Flasche Wein zahlt man 100 Gold und dazu noch die H�lfte des Preises.");
	Doc_PrintLine	(nDocID,  0, "");
	Doc_PrintLines	(nDocID,  0, "Wieviel kostet der Wein also?");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_MahamadRaetsel2		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMahamadRaetsel2;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"enth�lt das zweite R�tsel von Mahamad";
};

FUNC VOID UseMahamadRaetsel2 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "lettersMahamad.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLine	(nDocID,  0, "Z�hle die Dreiecke");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_MahamadRaetsel3		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMahamadRaetsel3;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"enth�lt das dritte R�tsel von Mahamad";
};

FUNC VOID UseMahamadRaetsel3 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "Finde die Gesetzm��igkeit der Zahlen jeder Reihe heraus und erg�nze sie jeweils um zwei Zahlen.");
	Doc_PrintLine	(nDocID,  0, "");
	Doc_PrintLine	(nDocID,  0, "21 18 16 13 11  8 . .");
	Doc_PrintLine	(nDocID,  0, "12 14 13 15 14 16 . .");
					
	Doc_Show (nDocID);
};

INSTANCE ItWr_MahamadRaetsel4		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMahamadRaetsel4;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"enth�lt das vierte R�tsel von Mahamad";
};

FUNC VOID UseMahamadRaetsel4 ()
{
	var int nDocID;

	nDocID = Doc_Create();

	Doc_SetPages	(nDocID,  1);
	Doc_SetPage 	(nDocID,  0, "letters.TGA", 0);
	Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
	Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
	Doc_PrintLines	(nDocID,  0, "");
	Doc_SetFont 	(nDocID,  0, FONT_Book);
	Doc_PrintLines	(nDocID,  0, "Jemand ist krank und bekommt daf�r drei Flaschen Heiltrank. Diese sollen in einem Abstand von 30 Minuten eingenommen werden.");
	Doc_PrintLine	(nDocID,  0, "");
	Doc_PrintLine	(nDocID,  0, "Wie lange dauert es, bis alle weg sind?");
					
	Doc_Show (nDocID);
};

var int GnomZettel_Gelesen;

INSTANCE ItWr_GnomZettel		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseGnomZettel;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"vom betrunkenen Gnom auf dem Weidenplateau";
};
func void UseGnomZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich bin ins Tal des Erzes aufgebrochen, um mir dort in einer der Minen die Taschen mit Erz zu f�llen. Wir sehen uns bestimmt bald wieder, alter Freund."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (GnomZettel_Gelesen == 0)
	{
		GnomZettel_Gelesen = 1;

		B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Bei diesem Gnom habe ich einen Zettel von einem Freund von ihm gefunden, der ihn benachrichtigte, dass er im Minental in einer Mine nach Erz suchen wird. Ich sollte ihn vielleicht aufsuchen ...");
	};

};

INSTANCE ItWr_BlutkultMage		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkultMage;
	scemeName			=	"MAP";
	description			= 	"von einem Magier des Blutkultes";
};
func void UseBlutkultMage ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Verdammt ... es ist jemandem gelungen unsere Gesch�pfe zu bannen. Wie ist dies m�glich? Ich sp�re, wie meine eigene Lebenskraft zu verl�schen beginnt, die an meine Kreaturen gebunden war. Ich muss es schaffen zu ... neeeiin ... verflucht sei Adanos ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_BlutkultMage2		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBlutkultMage2;
	scemeName			=	"MAP";
	description			= 	"von einem Magier des Blutkultes";
};
func void UseBlutkultMage2 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Oschustwor, meine Kr�fte schwinden dahin und ich hinterlasse dir diese Nachricht, ehe ich wie unsere anderen Br�der vergehe."					);
					Doc_PrintLines	( nDocID,  0, "Als ich unterwegs war, ist es den elenden Wassermagiern gelungen die Kreaturen zu bannen, welche wir auf dem Plateau herbeiriefen. Als ich zu unserer Wohnst�tte zur�ckkehrte, lagen unsere Br�der bereits leblos am Boden. Auch mein Leben beginnt zu erl�schen ... ich ... verflucht sei Adan ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_TelborZettel		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTelborZettel;
	scemeName			=	"MAP";
	description			= 	"von Telbor";
};
func void UseTelborZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Verflucht sei dieser dunkle Pilger. Krankheit und Verderben hat er �ber unseren Hof gebracht, ehe er weiter zog."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich bete immerzu zu Innos, doch scheinbar erh�rt er meine Gebete nicht. Niemand, der in diesen finsteren Tagen Hilfe bringt ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Innos steh uns bei ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_HenkerRechnung		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseHenkerRechnung;
	scemeName			=	"MAP";
	description			= 	"Rechnung des Henkers von Hans";
};
func void UseHenkerRechnung ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Rechnung"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 Folteraxt, neuwertig	600 Gold"					);
					Doc_PrintLine	( nDocID,  0, "3 Knebel			50 Gold"					);
					Doc_PrintLine	( nDocID,  0, "Insgesamt		650 Gold"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Viel Spa� mit den Neuerwerbungen w�nscht"					);
					Doc_PrintLine	( nDocID,  0, "Hans"					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_FeuermagierMeditation		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseFeuermagierMeditation;
	scemeName			=	"MAP";
	description			= 	"Reinigung des Geistes";
};
func void UseFeuermagierMeditation ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Reinigung des Geistes"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ein Glas klares Wasser trinken"					);
					Doc_PrintLine	( nDocID,  0, "Einen bequemen Sessel suchen"					);
					Doc_PrintLine	( nDocID,  0, "Augen schlie�en, entspannen"					);
					Doc_PrintLine	( nDocID,  0, "Gedanken auf die Innenseite der Augenlider richten"					);
					Doc_PrintLine	( nDocID,  0, "Formen erkennen, interpretieren"					);
					Doc_PrintLine	( nDocID,  0, "ca. 2 Stunden sp�ter: Aufwachen"					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_BibAusleihliste		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBibAusleihliste;
	scemeName			=	"MAP";
	description			= 	"Die Ausleihliste der Bibliothek von Khorata";
};
func void UseBibAusleihliste ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Ausleihliste"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Anselm: (Die Rattenzucht), Twilight Teil 1-4"					);
					Doc_PrintLines	( nDocID,  0, "Heiler: Grundlagen der Medizin f�r blutige Anf�nger"					);
					Doc_PrintLines	( nDocID,  0, "Fuego: Dunkle Magie"					);
					Doc_PrintLines	( nDocID,  0, "Theodorus: Staatsysteme - Ihre Vor- und Nachteile"					);
					Doc_PrintLines	( nDocID,  0, "Peter: Exotische Rezepte"					);
					Doc_PrintLines	( nDocID,  0, "(Endres: So peppen Sie Ihr Liebesleben auf)"					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Fragebogen		(C_Item)
{
	name 				=	"Liste";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseFragebogen;
	scemeName			=	"MAP";
	description			= 	"Fragen �ber Khorata";
};
func void UseFragebogen ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Fragebogen"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1. In welchem Geb�ude findet sich der einzige Abort Khoratas?"					);
					Doc_PrintLines	( nDocID,  0, "2. Wie hie�en die drei Ratten des Stadthalters?"					);
					Doc_PrintLines	( nDocID,  0, "3. Lerne etwas �ber die Anf�nge Khoratas!"					);
					Doc_PrintLines	( nDocID,  0, "4. Wie viele St�nde hat der Marktplatz Khoratas?"					);
					Doc_PrintLines	( nDocID,  0, "5. Wer hat daf�r zu sorgen, dass die Wasserversorgung reibungslos l�uft?"					);
					Doc_PrintLines	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_ErikaLiebesbrief		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErikaLiebesbrief;
	scemeName			=	"MAP";
	description			= 	"von Erika an Wendel";
};
func void UseErikaLiebesbrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Liebster, "					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "wer schaut dir sehns�chtig nach, wenn du in aller Morgenfrische �ber den taunassen Rasen patrouillierst? Wessen schmachtende Blicke prallen von deinem kr�ftigen R�cken ab? (Ich bekomme eine G�nsehaut, wenn ich daran denke.) Oh w�rst du doch nur bei deinem Rundgang allein unterwegs, was h�tte ich f�r M�glichkeiten gehabt! Doch nun versuche ich es auf diesem Wege, in der Hoffnung, nicht abgewiesen zu werden. Meine Gedanken sind immer bei dir. Gib mir ein Zeichen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "E."					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Lehrling01		(C_Item)
{
	name 				=	"Blatt des Lehrlings";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLehrling01;
	scemeName			=	"MAP";
	description			= 	"Gartenpflege - wie mache ich es richtig? [1]";
};
func void UseLehrling01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Ausgraben von Pfahlwurzlern"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Mit einer Schaufel die Erde in einem gro�z�gigen Abstand um die Pflanze abtragen, damit die Haar- und Feinwurzeln keinen Schaden nehmen. Durch leichtes Ziehen die Lage der Hauptwurzel bestimmen und diese vorsichtig freilegen. Unbedingt R�cksicht auf die Hauptwurzel nehmen, Seitentriebe sind weitaus entbehrlicher! Nach einem halben Meter Tiefe eng am Hauptstrang graben, bis sich dieser einfach aus der Erde l�sen l�sst."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_Lehrling02		(C_Item)
{
	name 				=	"Blatt des Lehrlings";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLehrling02;
	scemeName			=	"MAP";
	description			= 	"Gartenpflege - wie mache ich es richtig? [2]";
};
func void UseLehrling02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Pflege der Triticum aestivum"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Der Samen liebt es, von einer wenigen Zentimeter hohen Schicht Erde bedeckt zu sein, um zu seiner vollen Entfaltung kommen zu k�nnen.");
					Doc_PrintLines	( nDocID,  0, "Eine D�ngung im Quartal ist ausreichend! H�ufigeres D�ngen greift den Weizen an seiner Basis an und macht ihn anf�llig f�r K�ferbefall.");
					Doc_PrintLines	( nDocID,  0, "In einem gem��igten Klima ben�tigt T. aestivum keine zus�tzliche Wasserzufuhr, lediglich in Trockenzeiten sollte bew�ssert werden.");
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_AnselmForFrazer		(C_Item)
{
	name 				=	"Schreiben";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAnselmForFrazer;
	scemeName			=	"MAP";
	description			= 	"Schreiben von Anselm";
};
func void UseAnselmForFrazer ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Du kannst dem Buben vertrauen, Frazer ... Er ist ganz harmlos!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );
};

INSTANCE ItWr_TruhenNotizJG		(C_Item)
{
	name 				=	"Nachricht";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_TruhenScrollJG		(C_Item)
{
	name 				=	"Geheimnisvolle Spruchrolle";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItSc_PalLight.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_NovizeJGPass		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseNovizeJGPass;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"von einem Novizen am Pass";
};
func void UseNovizeJGPass ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Verlasst die Gegend und begebt euch direkt ins Tal, eine neue Aufgabe erwartet Euch. Ein paar bestochene Banditen der Umgebung werden euch bei euren Aufgaben unterst�tzten. Wehe, du versagst ein weiteres Mal."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Khorgor"					);
					
					Doc_Show		( nDocID );

	if (Mod_JG_NovizeJGPass == 0)
	{
		Mod_JG_NovizeJGPass = 1;

		Log_CreateTopic	(TOPIC_MOD_JG_BANDITENSCHULD, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_JG_BANDITENSCHULD, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_JG_BANDITENSCHULD, "Schon wieder so ein Feuernovize. Was die blo� wollen. Den Zettel muss ich Cyrco zeigen.");
	};

};

INSTANCE ItWr_Daemonisch		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hatte der Zombie bei den Seelenpeinigern bei sich";
};
func void UseDaemonisch ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Vielen Dank, du hattest nicht untertrieben. Bei unserem n�chsten Treffen in der Taverne werde ich es dir mit ein paar Bier vergelten ... aber, was sind das f�r schwarze Schatt ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_HQ_Daemonisch == 3)
	{
		Mod_HQ_Daemonisch = 4;

		//B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, Taverne ... nur welche?");
	};

};

INSTANCE ItWr_Daemonisch_SP_01		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch_SP_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hatte der Zombie bei den Seelenpeinigern bei sich";
};
func void UseDaemonisch_SP_01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Innos zum Gru�,"					);
					Doc_PrintLines	( nDocID,  0, "Falls du mal abseits der Menschen einen Ort genie�en m�chtest, bei welchem du in stiller Andacht an Innos verharren kannst, so kann ich dir die H�hle beim See w�rmstens ans Herz legen. Man hat einen herrlichen Blick auf den See von ihr aus und kann das Lichtspiel der Abendsonne und der Nachtsterne wunderbar verfolgen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Ulf"					);
					
					Doc_Show		( nDocID );

		if (Mod_HQ_Daemonisch_SP_01 == 1)
		{
			Mod_HQ_Daemonisch_SP_01 = 2;

			B_StartOtherRoutine	(Mod_753_NOV_Ulf_NW, "DAEMONISCH");

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, sieht so aus, als sei es Ulf, der Leute zu den Stellen mit den Seelenpeinigern locken w�rde.");
		};


};

INSTANCE ItWr_Daemonisch_SP_02		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch_SP_02;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hatte der Zombie bei den Seelenpeinigern bei sich";
};
func void UseDaemonisch_SP_02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Hey, das kleine Lager im Wald ist wirklich ideal um auszuruhen, abseits der ganzen Menschen. Kleingetier gibt es auch, wenn du deinem Steckenpferd - Jagen wieder mal nachgehen m�chtest. Und der Nachthimmel ist wundersch�n ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Till"					);
					
					Doc_Show		( nDocID );

		if (Mod_HQ_Daemonisch_SP_02 == 1)
		{
			Mod_HQ_Daemonisch_SP_02 = 2;

			B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "DAEMONISCH");

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, sieht so aus, als sei es Till, der Leute zu den Stellen mit den Seelenpeinigern locken w�rde.");
		};
};

INSTANCE ItWr_Daemonisch_SP_03		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDaemonisch_SP_03;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"hatte der Zombie bei den Seelenpeinigern bei sich";
};
func void UseDaemonisch_SP_03 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Sei gegr��t mein Freund,"					);
					Doc_PrintLines	( nDocID,  0, "In dem kleinen Tal gibt es allerlei seltene Kr�uter und in der H�hle zudem auch au�ergew�hnliche Pilze. Ich bin mir sicher, dass manch Magier und Alchemist dich um diese beneiden w�rde. Sp�t abends kann man zudem seltsame Kristalle im Eingangsbereich der H�hle gl�nzen und leuchten sehen. Ein Besuch kann sich nur als lohnend erweisen ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Valentino"					);
					
					Doc_Show		( nDocID );

		if (Mod_HQ_Daemonisch_SP_03 == 1)
		{
			Mod_HQ_Daemonisch_SP_03 = 2;

			B_StartOtherRoutine	(Mod_754_NONE_Valentino_NW, "DAEMONISCH");

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Aha, sieht so aus, als sei es Valentino, der Leute zu den Stellen mit den Seelenpeinigern locken w�rde.");
		};

};

INSTANCE ItWr_DraalVermisstennotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDraalVermisstennotiz;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]		=	"von Draals Leiche";
};
func void UseDraalVermisstennotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Die Arbeitsbedingungen sind unmenschlich. Ich wei� nicht, wie lange ich das noch aushalte. Meine Kr�fte schwinden von Tag zu Tag. Nur trocken Brot und Wasser, kein Sonnenlicht ... ich wei� nicht einmal, wie lange ich schon hier bin. Sind es Wochen, oder gar schon Monate? Ich habe die Hoffnung aufgegeben, hier noch einmal je wieder raus zu kommen. Adanos steh mir bei ..."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_WM_KurganAlarm == 3)
	{
		Mod_WM_KurganAlarm = 4;

		B_LogEntry	(TOPIC_MOD_VERMISSTE, "Ohh, das meinte er also mit 'andere'. Naja, jedenfalls habe ich damit die Gewissheit, dass die D�monenkrieger dahinter stecken und kann zu Vatras zur�ckkehren.");
	};

};

INSTANCE ItWr_CirioNotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseCirioNotiz;
	scemeName			=	"MAP";
	description			= 	"von Cirio an Richard";
};
func void UseCirioNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich habe denn Mann in die H�hle gebracht, er sollte uns keine Probleme mehr machen, unsere Freunde dort werden viel Spa� mit ihm haben. Falls du auf einen Bissen vorbei kommen willst, hab ich dir die Stelle auf der Karte eingezeichnet. Aber so wie ich dich kenne wirst du mit der Frau sicher auch viel Spa� haben. Ich warte derweil am Eingang zu Relendel auf neues Futter. Wir sehen uns dann sp�ter am Treffpunkt."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

	if (Mod_RattenQuest == 1)
	{
		Mod_RattenQuest = 2;

		B_LogEntry	(TOPIC_MOD_RATTENQUEST, "In einer H�hle hier in Relendel soll ein Mann sein, ein weiteres Opfer von Cirio. Und ein Mann namens Richard scheint eine Frau gefangen zu haben. Vielleicht finde ich bei dem Mann in der H�hle einen Hinweis zu seinem Verbleib ...");
	};

};

INSTANCE ItWr_LeonhardRichter		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLeonhardRichter;
	scemeName			=	"MAP";
	description			= 	"An den Richter";
};
func void UseLeonhardRichter ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Weentder, Chamiel nud Lippphi isnd genmor derwie uaf emfrei Uf�, dero ihc lestel ide Denfreuderspen-Felierungen fortso ien!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );


};

INSTANCE ItWr_AnselmRundschreiben		(C_Item)
{
	name 				=	"Rundschreiben";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAnselmRundschreiben;
	scemeName			=	"MAP";
	description			= 	"Ein Rundschreiben an die B�rger Khoratas.";
};
func void UseAnselmRundschreiben ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zu detaillierteren Informationen bitte das Blatt wenden."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );


};

INSTANCE ItWr_CirioNotiz2		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseCirioNotiz2;
	scemeName			=	"MAP";
	description			= 	"von der Leiche eines Mannes";
};
func void UseCirioNotiz2 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Schatz,"					);
					Doc_PrintLines	( nDocID,  0, "Ich wei� nicht, wie lange ich noch durchhalte. Seitdem ich hier in der H�hle aufgewacht bin, sind es von Tag zu Tag mehr Ratten geworden, wenn ich eine t�te, kommen zwei neue wieder. Ich hoffe, das uns jemand rettet, aber anscheinden ist es den Leuten in der Stadt egal, was mit der Landbev�lkerung geschieht. Mir ist es schleierhaft, was die Ratten von uns wollen, zumindest bei mir ist es warscheinlich nur die Nahrungsaufnahme. Aber solange sie dich in Ruhe lassen ist mir mein Schicksal egal."					);
					Doc_PrintLine	( nDocID,  0, "Ich liebe dich!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "P.S. Wer das liest hat anscheinend meine Leiche gefunden. Bitte geben Sie diesen Brief meiner Frau. Ein Tipp: Es waren zwei Rattenmenschen, der eine hatte eine Fellr�stung an, warscheinlich kommt er aus einem sehr kalten Gebiet."					);
					
					Doc_Show		( nDocID );

	if (Mod_RattenQuest == 2)
	{
		Mod_RattenQuest = 3;

		B_LogEntry	(TOPIC_MOD_RATTENQUEST, "Der Mann ist tot, doch ich fand bei ihm einen Hinweis auf Richard. Er hatte eine Fellr�stung an und ist vermutlich in einem kalten Gebiet anzutreffen ...");

		B_GivePlayerXP	(200);
	};

};

INSTANCE ItWr_EchsenQuest_01		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEchsenQuest_01;
	scemeName			=	"MAP";
	description			= 	"Zettel von einer Echse";
};
func void UseEchsenQuest_01 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "F�ttere die Weibchen"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "a.) Junge weibchen: T�te f�nf Sumpfhaie und schmei� ihr Fleisch ins Grenzgebiet."					);
					Doc_PrintLines	( nDocID,  0, "b.) Alte weibchen: Schw�che f�nf Sumpfhaie bis auf die H�lfte ihrer Energie, danach Locke sie ins Grenzgebiet."					);
					Doc_PrintLines	( nDocID,  0, "c.) Starke weibchen: Locke f�nf gesunde Sumpfhaie ins Grenzgebiet"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Anmerkung: Die Sumpfhaifarm ist aus der Stadt kommend rechts in einem Talkessel. Das Grenzgebiet ist der Steg, der die Stadt und den Eingang in den Sumpf verbindet. Das Fleisch muss im Grenzgebiet benutzt werden und zwar streng der Hierarchie nach."					);

					Doc_Show		( nDocID );

	if (Mod_EchsenQuest_01 == 0)
	{
		Mod_EchsenQuest_01 = 1;

		Log_CreateTopic	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ECHSEN_WEIBCHENFUETTERUNG, "Ich soll die Weibchen f�ttern. Jede Art von Weibchen ben�tigt eine andere Art der Zubereitung. Zuerst soll ich mich um die jungen Weibchen k�mmern und dazu das Sumpfhaifleisch der Sumpfhaie der Sumpfhaifarm ins Grenzgebiet schmei�en. Die Sumpfhaifarm befindet sich wenn ich aus der Stadt gehe rechts in einer Art Talkessel. Die F�tterung muss streng der Hierarchie entsprechen. Zum Verteilen des Fleisches sollte ich es benutzen ...");

		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_BANDIT_VP3_05");
		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_BANDIT_VP3_05");
		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_BANDIT_VP3_03");
		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_SHARK_02");
		Wld_InsertNpc	(Swampshark_Fuetterung_01,	"ADW_SHARK_01");
	};

};

INSTANCE ItWr_EchsenQuest_02		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEchsenQuest_02;
	scemeName			=	"MAP";
	description			= 	"Zettel von einer Echse";
};
func void UseEchsenQuest_02 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Entfache die Feuer"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "a.) Entfache die vier Signalfeuer in der Unterstadt."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Anmerkung: Feuer wird im Kampf entfacht."					);

					Doc_Show		( nDocID );

	if (Mod_EchsenQuest_02 == 0)
	{
		Mod_EchsenQuest_02 = 1;

		Log_CreateTopic	(TOPIC_MOD_ECHSEN_SIGNALFEUER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SIGNALFEUER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ECHSEN_SIGNALFEUER, "Ich soll vier Signalfeuer in der Stadt entfachen. Als Anmerkung stand auf dem Zettel, dass die Feuer im Kampf entfacht werden ...");

		Wld_InsertNpc	(Mod_7387_Signalfeuer_AW,	"BANDIT_CAMP_ROOF_04");
		Wld_InsertNpc	(Mod_7388_Signalfeuer_AW,	"ADW_BL_SIGNALFEUER_02");
		Wld_InsertNpc	(Mod_7389_Signalfeuer_AW,	"BL_DOWN_SIDE_05");
		Wld_InsertNpc	(Mod_7390_Signalfeuer_AW,	"BL_WAIT_FINN");
	};

};

INSTANCE ItWr_EchsenQuest_03		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseEchsenQuest_03;
	scemeName			=	"MAP";
	description			= 	"Zettel von einer Echse";
};
func void UseEchsenQuest_03 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Einen wei�en Sumpfhai finden"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "a.) Nimm vier Junge Echsen mit."					);
					Doc_PrintLines	( nDocID,  0, "b.) Suche in unserem Teil des Sumpfes nach einem wei�en Sumpfhai ab."					);
					Doc_PrintLines	( nDocID,  0, "c.) Wenn du den Sumpfhai gefunden hast Ruf ihnen etwas zu (egal was, sie verstehen dich ohnehin nicht)."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Anmerkung: Zeige vier Echsen diesen Zettel und sie werden dich Begleiten."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Schhhhhhhhhhhhhhhhhhhhhhhhhzzz."					);

					Doc_Show		( nDocID );

	if (Mod_EchsenQuest_03 == 0)
	{
		Mod_EchsenQuest_03 = 1;

		Log_CreateTopic	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ECHSEN_SUMPFHAIFINDEN, "Ich soll im Sumpf nach einem wei�en Sumpfhai suchen. Dazu soll ich zuerst vier jungen Echsen den Zettel zeigen und dann mit ihnen zusammen aufbrechen.");
	};

};

INSTANCE ItWr_TorlofForSaturas		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_TorlofForSaturas;
	scemeName			=	"MAP";
	description			= 	"von Torlof f�r Saturas";
};
func void UseItWr_TorlofForSaturas ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ehrw�rdiger Magier des Wassers. Ich �bermittle euch diesen magischen Kristall. H�ndigt dem Boten jenes Entgelt aus, welches euch auch immer als passend erscheint."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Torlof"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_DeanGekillt		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_DeanGekillt;
	scemeName			=	"MAP";
	description			= 	"hatte der Golem bei sich";
};
func void UseItWr_DeanGekillt ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bringe den ersten Magier, dem du begegnest, um, und bringe mir seine Robe. Schaffe anschlie�end seine Leiche fort und warte auf weitere Anweisungen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Trador"					);

					Doc_Show		( nDocID );

	if (Mod_Turendil_Faice_Day == 2)
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Dever_Trador))
		{
			B_LogEntry_More	(TOPIC_MOD_FAICE_GIFT, TOPIC_MOD_DEVER_DEAN, "Dean wurde von einem Golem ermordet, der von Trador geschickt worden ist.", "Die Antwort auf Devers Frage wird Dean wohl nicht mehr geben k�nnen, falls er sie wusste.");
		}
		else
		{
			B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Dean wurde von einem Golem ermordet, der von Trador geschickt worden ist.");
		};

		Mod_Turendil_Faice_Day = 3;
	};

};

INSTANCE ItWr_DMBildNotiz		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_DMBildNotiz;
	scemeName			=	"MAP";
	description			= 	"lag auf dem Bett des K�nigs";
};
func void UseItWr_DMBildNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Verehrter K�nig!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Anbei meine neuesten Kreationen. Vielen Dank f�r eure Wertsch�tzung und auf bald!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Euer Drogenminister"					);

					Doc_Show		( nDocID );

	if (Mod_SL_Meer == 3)
	{
		Mod_SL_Meer = 4;

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Es scheint so, als w�re der Drogenminister auch ein Maler. Vielleicht kann er mir ein Bild des Sumpfes zeichnen?");
	};

};

INSTANCE ItWr_HofstaatListe		(C_Item)
{
	name 				=	"Liste";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_HofstaatListe;
	scemeName			=	"MAP";
	description			= 	"mit Dingen, die den Hofstaat schw�chen";
};
func void UseItWr_HofstaatListe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1.) Fluffy ern�chtern"					);
					Doc_PrintLines	( nDocID,  0, "2.) Den k�niglichen Lochgr�ber �bertrumpfen"					);
					Doc_PrintLines	( nDocID,  0, "3.) Die K�nigliche geliebte Verf�hren"					);
					Doc_PrintLines	( nDocID,  0, "4.) In Khorata verbreiten, dass Freudenspender blind macht"					);
					Doc_PrintLines	( nDocID,  0, "5.) Wasser in den �ffentlichen Freudenspender-Brunnen sch�tten"					);
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

	if (Mod_SL_Schwaechen == 0)
	{
		Mod_SL_Schwaechen = 1;
		Mod_SL_PartBlind = 1;

		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Um den Hofstaat zu schw�chen muss ich f�nf Dinge tun: Fluffy ern�chtern, den k�niglichen Lochgr�ber �bertrumpfen, die k�nigliche Geliebte verf�hren, Ger�chte verbreiten, dass Freudenspender blind macht und den Freudenspender-Brunnen mit Wasser f�llen.");

		Log_CreateTopic	(TOPIC_MOD_SL_FLUFFY, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_FLUFFY, LOG_RUNNING);
		Log_CreateTopic	(TOPIC_MOD_SL_LOCHGRAEBER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_LOCHGRAEBER, LOG_RUNNING);
		Log_CreateTopic	(TOPIC_MOD_SL_GELIEBTE, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_GELIEBTE, LOG_RUNNING);
		Log_CreateTopic	(TOPIC_MOD_SL_BLIND, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_BLIND, LOG_RUNNING);
		Log_CreateTopic	(TOPIC_MOD_SL_BRUNNEN, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SL_BRUNNEN, LOG_RUNNING);

		B_LogEntry_NS	(TOPIC_MOD_SL_FLUFFY, "Ich muss Fluffy ern�chtern. Ich sollte mal zur F�tterung gehen.");
		B_LogEntry_NS	(TOPIC_MOD_SL_LOCHGRAEBER, "Den Lochgr�ber �bertrumpfen. Das wird sicher nicht leicht.");
		B_LogEntry_NS	(TOPIC_MOD_SL_GELIEBTE, "Die k�ngliche Geliebte verf�hren ... Da wird mir sicher der Weiberheld helfen k�nnen.");
		B_LogEntry_NS	(TOPIC_MOD_SL_BLIND, "Ger�chte verbreiten, dass Freudenspender blind macht? Klingt einfach ...");
		B_LogEntry_NS	(TOPIC_MOD_SL_BRUNNEN, "Ich muss den Freudenspender-Brunnen mit Wasser f�llen.");

		// Neue NPC's

		Wld_InsertNpc	(Mod_7334_HS_Typ_REL, "REL_242");

		// Bei alten Routinewechsel

		B_StartOtherRoutine	(Mod_7013_HS_Fluffy_REL, "WAITINGFORNEWFOOD");
		B_StartOtherRoutine	(Mod_7011_HS_Alex_REL, "START");
	};

};

INSTANCE ItWr_SentenzaForCutter		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_SentenzaForCutter;
	scemeName			=	"MAP";
	description			= 	"von Sentenza";
};
func void UseItWr_SentenzaForCutter ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Sehr gut. Nachdem wir Bullit den ganzen Krempel abgenommen haben, brauchst du nur noch zu behaupten, dass ein S�ldner, oder Orkj�ger die Tat ver�bt h�tte. Lass die Waffe bald verschwinden, damit uns niemand auf die Spur kommt."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bloodwyn"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_StraschiduosBrief		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_StraschiduosBrief;
	scemeName			=	"MAP";
	description			= 	"aus Straschiduos Inventar";
};
func void UseItWr_StraschiduosBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ausgezeichnet. Unser aller Zusammenarbeit wird diesen armseligen Landstrich mit Tod und Elend verheeren. Die Magier der drei Gottheiten haben keine Vorstellung, was sie mit ihrem t�richten Wirken angerichtet haben. Die Hexen solltet ihr vorerst in der �berzeugung lassen, dass dieses Werk ihrem Gott Beliar� zu Gute kommt. Noch brauchen wir sie. Sobald jedoch Stadt und Bauernh�fe vernichtet sind, solltet ihr keine Zeit damit verschwenden euch auch der Hexen zu entledigen. Mein Meister wird �beraus zufrieden sein und euch f�rstlich entlohnen ... so wie er es bereits in der Vergangenheit getan hat.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Urnol");

					Doc_Show		( nDocID );

		if (Mod_WM_StraschiduosBrief == FALSE)
		{
			Mod_WM_StraschiduosBrief = TRUE;

			B_GivePlayerXP	(150);
		};

};

INSTANCE ItWr_GennGiftListe		(C_Item)
{
	name 				=	"Liste mit Giftpflanzen";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_GennGiftListe;
	scemeName			=	"MAP";
	description			= 	"von Genn";
};
func void UseItWr_GennGiftListe ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Liste giftiger Pflanzen"					);
					Doc_PrintLine	( nDocID,  0, "-----------------------");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Ponzola");
					Doc_PrintLine	( nDocID,  0, "Venena");
					Doc_PrintLine	( nDocID,  0, "Mithrida");
					Doc_PrintLine	( nDocID,  0, "Fungo");
					Doc_PrintLine	( nDocID,  0, "Piante");

					Doc_Show		( nDocID );

};

INSTANCE ItWr_InubisZettel		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_InubisZettel;
	scemeName			=	"MAP";
	description			= 	"von Elena";
};
func void UseItWr_InubisZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nachdem unser Hinterhalt erfolgreich war und Iwan niedergestreckt, erh�ltst du seinen Kopf. Du solltest diesen in absehbarer Zeit an einen sicheren Ort verstecken, damit auch die letzte Gefahr gebannt ist, dass Iwan zu neuem Leben gelangen k�nnte. Seinen Torso habe ich indes in meiner Gruft  verscharrt. Tot und Verderben allen Rechtschaffenden.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Inubis");

					Doc_Show		( nDocID );
};

INSTANCE ItWr_MoeNotiz_Dead		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_MoeNotiz_Dead;
	scemeName			=	"MAP";
	description			= 	name;
};
func void UseItWr_MoeNotiz_Dead ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich habe von eim geheim Treffen zwischen Canthar und einem anderen hochrangigen Ferbrecher geh�rt. Es soll in eim der n�chsten N�chte Stadt finden, und zwar irgendwo in der Kana-Lisa-Tion (aber wol nicht sehr nahe an der Diebesgilde). Vieleicht kann ich die Zusammenkunft aufliegen la�en!");

					Doc_Show		( nDocID );

		if (Mod_CantharQuest_Last == 2)
		{
			Mod_CantharQuest_Last = 3;

			Log_CreateTopic	(TOPIC_MOD_MOE_DEAD, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_MOE_DEAD, LOG_RUNNING);
			B_LogEntry_More	(TOPIC_MOD_MOE_DEAD, TOPIC_MOD_CANTHAR_GESCHAEFTE, "Moe hatte eine Nachricht bei sich, in der von einem Treffen zwischen Canthar und einem zweiten Verbrecher die Rede ist. Es soll abends oder nachts in dem Teil der Kanalisation stattfinden, der weit von der Diebesgilde entfernt ist.", "Die Drohung hat sich nicht als hei�e Luft entpuppt - Moe, mein wichtigster Informant, ist im Lagerhaus ermordet worden.");

			Wld_InsertNpc	(Mod_7211_NONE_Schlaeger_NW, "NW_CITY_KANAL_14");
			Wld_InsertNpc	(Mod_7212_NONE_Schlaeger_NW, "NW_CITY_KANAL_14");
			Wld_InsertNpc	(Mod_7213_NONE_Schlaeger_NW, "NW_CITY_KANAL_14");
		};
};

INSTANCE ItWr_ElenaNotiz		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_ElenaNotiz;
	scemeName			=	"MAP";
	description			= 	"Notiz von Elena";
};
func void UseItWr_ElenaNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Viel zu tun im Hexenhandwerk. Sollte dar�ber nicht vergessen mich des Kopfes entledigen. Naja, aber sich ausdehnende Heilmagie wird wohl kaum jemand bei sich haben, der zuf�llig in unsere H�hle stolpert.");
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_Paper		(C_Item)
{
	name 				=	"Papier";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	1;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	TEXT[5]		= Name_Value;		COUNT[5]		= value;
};

INSTANCE ItWr_HSAufzeichnung		(C_Item)
{
	name 				=	"Aufzeichnung";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
};

INSTANCE ItWr_Passierschein_HS		(C_Item)
{
	name 				=	"Passierschein";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
};

INSTANCE ItWr_HagenForHymir		(C_Item)
{
	name 				=	"versiegelter Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;

	description		= name;
	TEXT[0]			= "Von Lord Hagen f�r Hymir";
};

INSTANCE ItWr_Rukhar_Wacholder		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRukhar_Wacholder;
	scemeName			=	"MAP";
	description			= 	"Aus Rukhars Inventar";
};
func void UseRukhar_Wacholder ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Rukhar, du Idiot! Der Diebstahl ist aufgefallen. Coragon fahndet sicher schon nach uns! Verkaufe den Wachholder an Thekla, die Wirtin der S�ldner, und mach dich d�nne. Hiermit ist unsere Zusammenarbeit beendet!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Kardif"					);

					Doc_Show		( nDocID );

	if (Mod_KnowsRukharWacholder == 0)
	{
		Mod_KnowsRukharWacholder = 1;

		B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Rukhar hat mir einen Brief von Kardif gegeben. Kardif steckt also auch mit in diesem Verbrechen.");
	};

};

INSTANCE ItWr_CronosAbsorbKristall		(C_Item)
{
	name 				=	"Rezept";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseCronosAbsorbKristall;
	scemeName			=	"MAP";
	description			= 	"zur Beschw�rung eines g�ttlichen Boten";
};
func void UseCronosAbsorbKristall ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Knochen eines Skeletts, Heilwurzel, Feuerwurzel, 500 Gold, 1 Erzbrocken, und die unbekannte Zutat � vermutlich etwas Essbares."					);

					Doc_Show		( nDocID );
};

INSTANCE ItWr_MoesZettel		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMoesZettel;
	scemeName			=	"MAP";
	description			= 	"von Moe";
};
func void UseMoesZettel ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wir wissen, wo du wohnst. Wir wissen, was du (der Name ist bis zur Unleserlichkeit verschmiert) verraten hast. Du wirst bald wissen, wie viele Staubk�rner auf dem Boden des Lagerhauses liegen."					);

					Doc_Show		( nDocID );

	if (Mod_MoeDontTalk == 5)
	{
		Mod_MoeDontTalk = 6;
	};

};

INSTANCE ItWr_SnorresNotiz		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSnorresNotiz;
	scemeName			=	"MAP";
	description			= 	"von Snorre";
};
func void UseSnorresNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Entschuldige vielmals, mein lieber Dragon, dass ich es nach so vielen Jahren unter deiner Knute vorzog, mir eine eigene Existenz aufzubauen. Du hast doch bestimmt nichts dagegen, wenn ich mich zu diesem Zweck an einem Teil deiner stinkenden Drachensch�tze bediene. Im Land der Tr�ume werde ich mir damit einen sch�nen Lenz machen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ergebensten Dank,"					);
					Doc_PrintLines	( nDocID,  0, "dein allseits gesch�tzter Snorre ;O)"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ps: Hahaha, nenenene nene ..."					);
					
					Doc_Show		( nDocID );


};

INSTANCE ItWr_TodeslisteVonCanthar		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseTodeslisteVonCanthar;
	scemeName			=	"MAP";
	description			= 	"Aus dem Inventar eines Schl�gers";
};
func void UseTodeslisteVonCanthar ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nehmt euch zuerst Kuno beim Pass vor, bevor er von der Sache Wind bekommt. Dann wartet dort auf ... und erleichtert ihn um den Koffer. Und, ganz wichtig: Bringt Flora aus dem Oberen Viertel zum Schweigen! Sie k�nnte etwas wissen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);

					Doc_Show		( nDocID );

	if (Moe_KnowsPort == 7)
	{
		Moe_KnowsPort = 8;

		B_LogEntry	(TOPIC_MOD_MOE_PORT, "Ich bin anscheinend unbeliebt ... jedenfalls will irgendjemand mich wie Kuno aus dem Weg r�umen. Vielleicht wei� ja diese Flora aus dem Oberen Viertel etwas dar�ber. Zumindest sollte ich sie warnen.");
	};

};

INSTANCE ItWr_MagicPaper		(C_Item)
{
	name 				=	"Magischer Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	//on_state[0]			=   UseMagicPaper;
	//scemeName			=	"MAP";
	description			= 	name;
};
func void UseMagicPaper ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Haltet jeden auf, der unserer Spur folgt! Lasst es mich augenblicklich wissen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Kardif"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_DragomirsNotiz		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDragomirsNotiz;
	scemeName			=	"MAP";
	description			= 	"Notiz";
};
func void UseDragomirsNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Falls uns hier etwas zusto�en sollte, treffen wir uns alle bei Nandor wieder. Er hat in der N�he des Steinkreises im dunklen Wald ein kleines Lager errichtet, welches mir einigerma�en sicher scheint."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Dragomir"					);

					Doc_Show		( nDocID );

	if (Mod_Drago == 1)
	{
		Mod_Drago = 2;

		Log_CreateTopic	(TOPIC_MOD_JG_LAGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_JG_LAGER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_JG_LAGER, "Dragomirs Lager ist verbrannt, er selbst hat sich zu Nandor begeben. Ich sollte ihn dort aufsuchen.");
	};

};

INSTANCE ItWr_LorfornsBrief		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLorfornsBrief;
	scemeName			=	"MAP";
	description			= 	"Brief von Lorforn";
};
func void UseLorfornsBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Lorforn, mit der beigelegten Spruchrolle kannst du einen gro�en Erdrutsch erzeugen, der das ganze H�hlensystem in Tugettso zusammenbrechen l�sst. Dadurch m�ssen die Goblins in das Tal fl�chten  und werden es langsam aber sicher in den Untergang f�hren. Gehe aber nach dem Anwenden der Spruchrolle sicher, dass sich niemand den Matronen n�hert, damit diese weiter Nachwuchs zeugen k�nnen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "P."					);

					Doc_Show		( nDocID );

		if (TUG_Lorforn == FALSE)
		{
			TUG_Lorforn = TRUE;

			B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "Ich habe auf dem Weg zu den Matronen einen Typen namens Lorforn getroffen, der f�r das Erdbeben verantwortlich ist. Er ist von einem gewissen 'P.' geschickt worden.");
		};

};

INSTANCE WilfriedsTagebuchseite		(C_Item)
{
	name 				=	"Tagebuchseite";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseWilfriedsTagebuchseite;
	scemeName			=	"MAP";
	description			= 	"Tagebuchseite von Wilfried";
};

func void UseWilfriedsTagebuchseite ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Was gibt es Sch�neres als der Stadt zu entfliehen, dem L�rm, dem Dreck, den Leuten? Seit ich diese kleine H�hle knapp vor der Stadt entdeckt habe, besuche ich sie h�ufig. Ich habe sie mir so weit eingerichtet, dass ich dort jahrelang leben k�nnte (man wei� ja nie, was so passiert). Ganz besonders freue ich mich immer auf meine Goldtruhe. Ich liebe es, mit meinen H�nden die Goldst�cke zu ber�hren, die ich mir in Kleinstarbeit erworben und auch verdient habe. Vielleicht bin ich bald wirklich so weit, dass ich spurlos verschwinden kann... aber vorher gibt es noch einige, mit denen ich abrechnen will!"					);

					Doc_Show		( nDocID );

		if (Mod_WilfriedsQuest == 4)
		{
			Mod_WilfriedsQuest = 5;

			B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "In einer Truhe von Wilfried habe ich eine Tagebuchseite gefunden, auf der von einer H�hle in der N�he der Stadt die Rede ist, die Wilfried sich als zweites Zuhause eingerichtet hat. Sollte ich dort vielleicht mal einen Blick hineinwerfen?");
		};

};

INSTANCE ItMi_Bauanleitung		(C_Item)
{
	name 				=	"Bauanleitung";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Bauanleitung f�r Sumpfkrautr�stung";
};

INSTANCE ItWr_StahlkampfAnleitung		(C_Item)
{
	name 				=	"Bauanleitung";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Bauanleitung f�r Stahlkampfst�be";
};

INSTANCE ItWr_WilfriedsListe		(C_Item)
{
	name 				=	"Liste";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Eine Liste aus Wilfrieds H�hle";
};

INSTANCE ItWr_BuddlerNachrichtVonAL		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBuddlerNachrichtVonAL;
	scemeName			=	"MAP";
	description			= 	"Brief von Alissandro";
};
func void UseBuddlerNachrichtVonAL ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich will, dass du zu dem Anf�hrer der D�monenritter gehst und ihm anbietest, einen Vertrag wegen der alten Mine abzuschlie�en. Die Mine geh�rt rechtm��ig uns und wir haben das Recht, einen Anteil daran zu verlangen. Wenn er Interesse hat, sag ihm, er soll sich bei mir melden. Sollte das nicht so sein, richte ihm aus, dass wir uns dann gezwungen sehen, Ma�nahmen zu ergreifen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Alissandro"					);

					Doc_Show		( nDocID );

	if (Hat_BuddlerNachrichtVonAL == FALSE)
	{
		Hat_BuddlerNachrichtVonAL = TRUE;

		Log_CreateTopic	(TOPIC_MOD_AL_MINE, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_AL_MINE, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_AL_MINE, "Ich habe eine Nachricht von Alissandro bekommen, die besagt, ich solle den D�monenrittern ein Angebot wegen der alten Mine machen.");

		if (!Npc_KnowsInfo(hero, Info_Mod_Elvrich_Liste))
		{
			Wld_InsertNpc	(Mod_1000_DMR_Kurgan_NW,	"BIGFARM");
		};

		B_StartOtherRoutine	(Mod_1000_DMR_Kurgan_NW, "ANGEBOT");
	};

};

INSTANCE ItWr_NandorToDragomir		(C_Item)
{
	name 				=	"Nachricht";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseNandorToDragomir;
	scemeName			=	"MAP";
	description			= 	"Nachricht von Nandor f�r Dragomir";
};
func void UseNandorToDragomir ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich habe einen geeigneten Platz gefunden und werde ihn schon einmal so gut es geht herrichten und die Gegend weiter erkunden. Ich erwarte euch in sp�testens 2 Wochen. Das alte Lager ist zu unsicher geworden."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Nandor"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_KimonsBeleg		(C_Item)
{
	name 				=	"Beleg";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Beleg von Kimon";
};

INSTANCE AL_PfeilNachricht		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAL_PfeilNachricht;
	scemeName			=	"MAP";
	description			= 	"Ein Brief, der an einem Pfeil hing";
};
func void UseAL_PfeilNachricht ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ich habe Informationen zu den Diebst�hlen. Kann mich nicht offen zu erkennen geben. Wenn du mehr wissen willst, gehe auf den Burgfried."					);

					Doc_Show		( nDocID );

			if (Mod_TemplerBeiThorus == 3)
			{
				Mod_TemplerBeiThorus = 4;
			};

};

INSTANCE ItWR_MessageAlvar		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseMessageAlvar;
	scemeName			=	"MAP";
	description			= 	"Ein Brief, der an einem Pfeil hing";
};
func void UseMessageAlvar ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Sei gegr��t, Fremder,"					);
					Doc_PrintLines	( nDocID,  0, "dein Geist scheint nicht geblendet, wie die der anderen, dein Drang zur Wahrheit gr��er, als die Angst um den eigenen Vorteil. Willst du den Weg zur Wahrheit, den du beschritten hast weiterverfolgen? Dann gehe hinter das Dorf und du wirst zu deiner Rechten eine H�hle erblicken. Dort sollst du weitere Antworten erhalten ..."					);

					Doc_Show		( nDocID );

			if (Mod_AlvarKristall == 4)
			{
				Mod_AlvarKristall = 5;

				B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Der unbekannte Autor der Nachricht verspricht mir weitere Antworten in einer H�hle, die auf der rechten Seite hinter dem Dorf liegt. Ich bin mir nicht ganz sicher, was ich davon halten soll ...");

				Wld_InsertItem	(ItWr_ErisKult, "FP_ITEM_BUCH_ERISKULT");
			};

};

INSTANCE AL_Aufstellung		(C_Item)
{
	name 				=	"Plan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Aufstellung der Gardisten";
};

INSTANCE ItWr_HagenLares		(C_Item)
{
	name 				=	"Friedensbotschaft";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"von Lord Hagen f�r Lares";
};

INSTANCE ItWr_TurnierUrkunde		(C_Item)
{
	name 				=	"Urkunde";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Urkunde f�r den Sieger des Miliz-Turniers";
};

INSTANCE ItWr_DiebDokumente		(C_Item)
{
	name 				=	"Wertvolle Dokumente �ber Khorata";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	"Wertvolle Dokumente �ber Khorata";
};

INSTANCE ItWr_FisksNotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_FisksNotiz;
	scemeName			=	"MAP";
	description			= 	"Zettel von Fisk";
};
func void Use_FisksNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Dein Zeug:"					);
					Doc_PrintLines	( nDocID,  0, "1x Schlafspruchrolle"					);
					Doc_PrintLines	( nDocID,  0, "5x Erzbrocken"					);
					Doc_PrintLines	( nDocID,  0, "3x Goldbrocken"					);
					Doc_PrintLines	( nDocID,  0, "1x Richtstab"					);
					Doc_PrintLines	( nDocID,  0, "7x St�ngel Sumpfkraut"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "gez. Bloodwyn"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "PS: Cutter haben wir auf unserer Seite."					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_AL_Zufluchtsnotiz		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_AL_Zufluchtsnotiz;
	scemeName			=	"MAP";
};
func void Use_AL_Zufluchtsnotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wer das liest ist in Sicherheit."					);
					Doc_PrintLines	( nDocID,  0, "Dies ist eine der Zufluchten die ich f�r Notf�lle errichten lie�."					);
					Doc_PrintLines	( nDocID,  0, "Verlasse die Zuflucht nicht, bis du von mir geh�rt hast."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Alissandro"					);

					Doc_Show		( nDocID );

	if (Mod_AL_EnteredGobboCaveFirstTime == 1)
	{
		Mod_AL_EnteredGobboCaveFirstTime = 2;

		B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "ZUFLUCHT");
	};

};

INSTANCE ItWr_Alissandro_KillList		(C_Item)
{
	name 				=	"Liste";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ItWr_Alissandro_KillList;
	scemeName			=	"MAP";
	description			= 	"Liste von Alissandro";
};
func void Use_ItWr_Alissandro_KillList ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Fletcher, Anf�hrer der Gardisten"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Ian, Anf�hrer der Schatten"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Cathran, abtr�nniges Mitglied der k�niglichen Garde"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_JuanNotiz		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_JuanNotiz;
	scemeName			=	"MAP";
};
func void Use_JuanNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Siehst du, ich habe dir nicht zu viel versprochen. Dieser H�ndler Juan hat echt hei�e Ware. Da selbst die Bosse im Neuen Lager seit Jahren keine Frau zu Gesicht bekamen und auch nicht non stop stoned sind, wirst du hier eine h�bsche Summe daf�r bekommen."					);
					Doc_PrintLine	( nDocID,  0, "Gr��e, Antonius"					);

					Doc_Show		( nDocID );

	if (Mod_JuanQuest == 3)
	{
		Mod_JuanQuest = 4;
	};

};

INSTANCE ItWr_AliBotschaft		(C_Item)
{
	name 				=	"Nachricht";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_AliBotschaft;
	scemeName			=	"MAP";
	description			= 	"Botschaft an Dexter";
};
func void Use_AliBotschaft ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Um unser Lager steht es schlecht. Bartholo hat Thorus ermordet und das Lager �bernommen. Darum bitten wir die anderen Lager, eine Allianz mit uns einzugehen. Wir bieten, sollten wir den Krieg um das Lager gewinnen, eine Beteiligung am Erzabbau von 10 Prozent. Sollte Interesse bestehen, so bekommt ihr alle Informationen von dem entsandten Botschafter."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "gez. Alissandro"					);

					Doc_Show		( nDocID );

};

INSTANCE ItWr_DraganNachricht		(C_Item)
{
	name 				=	"Botschaft";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_DraganNachricht;
	scemeName			=	"MAP";
	description			= 	"Botschaft aus der Truhe des Unbekannten";
};
func void Use_DraganNachricht ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Hey Paran,"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "wenn die Idioten weiterhin keinen Verdacht sch�pfen, verdienen wir uns an der Arena verr�ckt. Mit den Spruchrollen, die wir diesen Idioten gestohlen haben, besiegen wir jeden K�mpfer mit Leichtigkeit. K�mpfe du einfach nur, ich schw�che deinen Gegner mit den kleinen Sch�tzen hier. Ich sage dir, uns wird eine goldene Zukunft bevorstehen."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "gez. Dragan"					);

					Doc_Show		( nDocID );

	if (Mod_GorKarantoSchwach == 5)
	|| (Mod_GorKarantoSchwach == 6)
	{
		B_LogEntry	(TOPIC_MOD_AL_ARENA, "Aha, der Unbekannte und ein Komplize haben sich ihre Siege also mit Tricks errungen. Das werde ich Thorus berichten.");

		Mod_GorKarantoSchwach = 7;
	};

};

INSTANCE ItWr_Erfinderbrief		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderbrief;
	scemeName			=	"MAP";
	description			= 	"Ein Brief an den Erfinder";
};
func void UseErfinderbrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Lieber 'Erfinder',"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Triff mich um Mitternacht hinter dem Rathaus. Du gehst besser freiwillig mit uns, ansonsten  wird dir auch die Miliz nicht mehr helfen k�nnen!"					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "L.");

					Doc_Show		( nDocID );

	if (Mod_Erfinderbrief_Gelesen == FALSE)
	&& (hero.guild == GIL_PAL)
	{
		Wld_InsertNpc	(Mod_1730_MIL_Lawrence_NW,	"NW_CITY_UPTOWN_HUT_04_ENTRY");

		Mod_Erfinderbrief_Gelesen = TRUE;
	};

};

INSTANCE ItWr_ErfinderKolamsBrief		(C_Item)
{
	name 				=	"Brief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderKolamsBrief;
	scemeName			=	"MAP";
	description			= 	"Ein Brief an Larius";
};
func void UseErfinderKolamsBrief ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Alles l�uft nach Plan!"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Der Erfinder befindet sich in meiner Gewalt. Er wird f�r uns arbeiten, daf�r sorge ich schon."					);
					Doc_PrintLines	( nDocID,  0, "Der Schl�fer ist zufrieden mit euch und wird bald zur�ckkehren, macht weiter so!"					);
					Doc_PrintLine	( nDocID,  0, "Der Schl�fer erwache!");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Cor Kolam");

					Doc_Show		( nDocID );

	if (Mod_MitLawrenceGesprochen == 12)
	{
		B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Es scheint, als w�re ein gewisser Cor Kolam der Anf�hrer der fanatischen Sektenspinner. Er versucht den Schl�fer mit Hilfe des Erfinders wieder zu erwecken. Wenn ich das R�tsel l�sen will, dann muss ich wohl Cor Kolam finden. Ich sollte jedoch erstmal mit Lord Andre sprechen.");

		Mod_MitLawrenceGesprochen = 13;
	};

};

INSTANCE ItWr_ErfinderLuteroNotiz		(C_Item)
{
	name 				=	"Notiz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderLuteroNotiz;
	scemeName			=	"MAP";
	description			= 	"Eine Notiz von Lutero";
};
func void UseErfinderLuteroNotiz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Bestellliste"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wir brauchen 20 Kisten mit magischem Erz."					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");

					Doc_Show		( nDocID );

	if (Mod_MitLawrenceGesprochen == 9)
	{
		Mod_MitLawrenceGesprochen = 10;

		B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Ich denke, es ist nun an der Zeit, dieses Treffen hinter dem Rathaus zu besuchen. Das m�sste gegen Mitternacht sein.");
	};

};

INSTANCE ItWr_ErfinderLawrenceFuerLutero		(C_Item)
{
	name 				=	"Zettel";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseErfinderLawrenceFuerLutero;
	scemeName			=	"MAP";
	description			= 	"Ein Zettel von Lawrence";
};
func void UseErfinderLawrenceFuerLutero ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "NOTFALL!"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Miliz untersucht verschwinden des Erfinders. Wenn dich jemand fragt, so nenne dich Junur! Du bist der Bruder von Lutero, Lutero ist fort. Wir treffen uns heute um Mitternacht hinter dem Ratshaus."					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");

					Doc_Show		( nDocID );

	if (Mod_MitLawrenceGesprochen == 5)
	{
		AI_Teleport	(Mod_594_NONE_Lutero_NW, "NW_CITY_SMALLTALK_05");

		B_StartOtherRoutine	(Mod_594_NONE_Lutero_NW, "BRIEF");

		AI_Teleport	(Mod_594_NONE_Lutero_NW, "NW_CITY_SMALLTALK_05");

		Wld_InsertItem	(ItWr_ErfinderLawrenceFuerLutero, "FP_ERFINDER_BRIEFFUERLUTERO");
		Npc_RemoveInvItems	(PC_Hero, ItWr_ErfinderLawrenceFuerLutero, 1);

		Mod_MitLawrenceGesprochen = 6;
	};

};

INSTANCE ItWr_PatherionNachricht1		(C_Item)
{
	name 				=	"Tagebuchseite 7";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePatherionNachricht1;
	scemeName			=	"MAP";
	description			= 	name;
};
func void UsePatherionNachricht1 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "1. Tag des 3. Monats"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Endlich wurde ich von den Feuermagiern in ihre Reihen berufen. Meine V�ter sind jetzt meine Br�der.");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "5. Tag des 4. Monats");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Ich habe viel zu tun, ich komme kaum noch dazu, dieses Buch zu f�hren geschweige denn zu schlafen. Doch ich tue es gern, f�r Innos.");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "23. Tag des 4. Monats");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Die oberen Feuermagier sind alle sehr aufgeregt. Ich h�rte zwei von ihnen �ber 'Patherion' sprechen. Was das Wohl sein mag?");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "25. Tag des 4. Monats");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Heute kam Pyrokar zu mir. Er erz�hlte mir von Patherion. Eine alte Feuermagierhochburg, die jetzt unter Belagerung steht. Ich solle hingehen und ihnen eine Lieferung Tr�nke bringen damit sie das ganze �berstehen.");
					Doc_PrintLine	(nDocID, 0, "");
					
					Doc_Show		( nDocID );

};

INSTANCE ItWr_PatherionNachricht2		(C_Item)
{
	name 				=	"Tagebuchseite 8";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePatherionNachricht2;
	scemeName			=	"MAP";
	description			= 	name;
};
func void UsePatherionNachricht2 ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	(nDocID, 0, "1. Tag des 5 Monats");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Bin heute in Patherion angekommen. Schwarzmagier� �berall. Schwarze Krieger so weit das Auge reicht. Ich wei� nicht ob ich das Kloster erreiche.");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLine	(nDocID, 0, "3. Tag des 5. Monats");
					Doc_PrintLine	(nDocID, 0, "");
					Doc_PrintLines	(nDocID, 0, "Habe das gesamte Gel�nde untersucht. Vom Ausgang der Kapelle aus schr�g links ist eine H�hle. Ich werde versuchen mich nachts dort durchzuschleichen. Es sind viele� Innos halte dein sch�tzendes Feuer �ber mich.");

					Doc_Show		( nDocID );

};

INSTANCE ItWr_SektisTeleport1		(C_Item)
{
	name 				=	"Spruchrollenh�lfte";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_SektisTeleport2		(C_Item)
{
	name 				=	"Spruchrollenh�lfte";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	description			= 	name;
};

INSTANCE ItWr_SektisTeleport3		(C_Item)
{
	name 				=	"Spruchrolle";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	visual				=	"ItSc_PalLight.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_TeleportSektis;
	cond_atr[2]   			= 	ATR_MANA_MAX;
	cond_value[2]  			= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_TeleportSektis;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
};

//**********************************************************************************
//	StandardBuch
//**********************************************************************************

INSTANCE StandardBuch (C_ITEM)
{
	name 					=	"StandardBuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"StandardBuch";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseStandardBuch;
};

	FUNC VOID UseStandardBuch()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "23. Tag des 4ten Umlaufs. Zyklus 457"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Heute bin ich Long John Silver�s Piraten beigetreten. Ich musste einen Eid bei Adanos schw�ren ihm immer Loyal zu bleiben."					);
					//Absatz
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  0, "7. Tag des 8ten Umlaufs. Zyklus 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Wir haben eine k�nigliche Gallere geentert. Besatzung ist tot, ein Koch entkam jedoch. Riesiger Schatz, jedoch wird uns bald die k�nigliche Flotte verfolgen.");
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  0, "20. Tag des 8ten Umlaufs. Zyklus 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Wir sind auf einer Insel angekommen.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Ger�chte �ber eine Meuterei machen sich breit. Habe nicht den Mut mich gegen die Meuterer zu stellen."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  1, "21. Tag des 8ten Umlaufs. Zyklus 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Heute wurde der K�ptn geh�ngt. Mit seinen letzten Atemz�gen hat er uns verflucht und uns ausgelacht: �Adanos wird euch strafen!�");
					//Absatz
					Doc_PrintLine	( nDocID,  1, "");
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			);
					Doc_PrintLines	( nDocID,  1, "22. Tag des 8ten Umlaufs. Zyklus 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "HILFE!!!!!!!!!!!!!");
					Doc_Show		( nDocID );

		if (Mod_HatSkeletonBook_Gelesen == FALSE)
		{
			Mod_HatSkeletonBook_Gelesen = TRUE;
		};
};

var int Mod_REL_KhorataGeschichte;

INSTANCE ItWr_KhorataGeschichte (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Die volle Wahrheit �ber Khorata";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseKhorataGeschichte;
};

	FUNC VOID UseKhorataGeschichte()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		if (Mod_REL_KhorataGeschichte == 0)
		{
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, "Die volle Wahrheit �ber Khorata"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Einer der vier �berlebendem aus Jharkendar fand den Weg nach Relendel. Fernab von seinen alten Problemen wollte er sich ein neues Leben aufbauen. Etwas sp�ter stie� ein tugendhaftes P�rchen zu ihm, das von dem Leben in Khorinis angewidert war und eine eigene Siedlung gr�nden wollte. Die Frau hie� Eva und der Mann Bernd. Zu dritt errichteten sie ein beschauliches Lager unter einem Fels�berhang, von dem heute noch die angeschw�rzten Ruinen stehen.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
 					Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Nur wenige Jahrzehnte sp�ter war diese Siedlung auf eine erstaunliche Gr��e herangewachsen. Alte und Junge lebten ein harmonisches Leben, denn es fehlt ihnen an nichts, und es gab keinen Anlass zum Streit. Da stellte sie Beliar auf die Probe, indem er einen Brand entfachte und ihre H�user verkohlte. Zutiefst schockiert �ber diese Bosheit, doch im Herzen noch immer voller Hoffnung, gr�ndete die Gemeinschaft ein neues Dorf, das Khorata genannt wurde.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "- Bitte neu aufschlagen, um umzubl�ttern -");
					Doc_Show		( nDocID );
			

			Mod_REL_KhorataGeschichte = 1;
		}
		else
		{
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, ""	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Einige Heimatlose setzten sich von den �brigen ab und zogen weiter, in der Hoffnung, Beliars Beobachtung zu entgehen. Sie versteckten sich in einem kleinen Tal und bauten den Hofstaat auf. Da es nur wenige waren, liebten die M�nner ihre Schwestern, und die Frauen liebten ihre Br�der, und so verkam dieser genetische Zweig, wie wir noch heute sehen.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
 					Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Khorata aber ist noch immer eine bl�hende Stadt. Allein durch Geschick und Flei� ist es der Bev�lkerung gelungen, n�tzliche Handelsverbindungen in alle Teile der Insel zu unterhalten. Mit Adanos' sch�tzender Hand wird es Beliar nicht gelingen, die Gemeinschaft zu zerst�ren.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "- Bitte neu aufschlagen, um umzubl�ttern -");
					Doc_Show		( nDocID );

			Mod_REL_KhorataGeschichte = 0;
		};
};

INSTANCE ItWr_HofstaatGeschichte03 (C_ITEM)
{
	name 					=	"Die Geschichte des Hofstaats Teil 3";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseHofstaatGeschichte03;
};

	FUNC VOID UseHofstaatGeschichte03()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Die Geschichte des Hofstaats Teil 3"					);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Nach anf�nglichen Erfolgen setzte eine Regression im Freudenspender-Export ein, als mehrere Herrscher die Droge ihrer starken Wirkung wegen in ihren Reichen verboten. Die Hofstaatler starteten daraufhin eine Werbekampagne, die den Ruf ihres einzigen Erzeugungsproduktes verbessern sollte.");
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLine	( nDocID,  0, ""					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
		Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Am st�rksten vom Freudenspender-Missbrauch beeinflusst ist sicherlich die Kleinstadt Khorata, die dem Hofstaat quasi vorgelagert ist. Der eigenen Geschichtsschreibung zufolge entstammen beide Siedlungen der gleichen V�lkergruppe. Dies konnte bisher jedoch nicht verifiziert werden.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_BeliarBibGruss (C_ITEM)
{
	name 					=	"Geburtstagsgru�";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseBeliarBibGruss;
};

	FUNC VOID UseBeliarBibGruss()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Die Geschichte des Hofstaats Teil 3"					);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Herzlichen Gl�ckwunsch zum Geburtstag, du alte Ratte. Wenn du dieses Buch �ffnest, wirst du wissen, warum ich dieses Jahr nicht zum Festessen erscheinen konnte. Ich habe lieber meine kleinen Sch�pfungen vorausgeschickt, auf dass sie dich und deine unselige Sippe endg�ltig vom Antlitz dieser Welt tilgen m�gen. Und dann wird deine Festung, die du so sch�ndlich dem Verfall preisgibst, endlich mir geh�ren! Und wehe, du �ffnest das Buch nicht!");
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLine	( nDocID,  0, ""					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
		Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_GeheimnisseDerJagd5 (C_ITEM)
{
	name 					=	"Geheimnisse der Jagd Band V � Gifte";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseGeheimnisseDerJagd5;
};

	FUNC VOID UseGeheimnisseDerJagd5()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "... die Zangen und Stachel der Tiere oder giftige Gew�chse nutze kann. Daf�r muss man die Gifte jedoch zuerst an einem Alchemietisch extrahieren. Die gewonnene Essenz des Giftes l�sst sich dann im Anschluss auf Pfeile und scharfe/spitze Waffen auftragen. Wildtiere k�nnen damit wesentlich einfacher gestellt und erlegt werden. Jedoch wird die Nahkampfwaffe mit jedem Hieb und Streich einen Teil des aufgetragenen Giftes verlieren, bis sie erneut mit giftigem Sekret bestrichen werden muss."					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Auch ist zu beachten, dass Tiere, die selbst Gift im Kampf einsetzen eine hohe Resistenz gegen�ber Tiergift besitzen. Das eigentlich etwas schw�chere Pflanzengift ist in solchen F�llen die bessere Wahl. Andere Wesen, solche d�monischen Ursprungs und J�ger, die sich in lebensfeindlichen S�mpfen tummeln, besitzen gegen�ber allen Giftigen eine gewisse Widerstandskraft. Wiederum v�llig wirkungslos sind Gifte jeder Art bei Wesen aus unbelebtem Material und Elementen, gleicherma�en untoten Gesch�pfen ...");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_StadthalterChroniken (C_ITEM)
{
	name 					=	"Stadthalter-Chroniken";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseStadthalterChroniken;
};

	FUNC VOID UseStadthalterChroniken()
	{
		var int nDocID;
		nDocID = 	Doc_Create		();

		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Stadthalter-Chroniken"					);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "14. Stadthalter: Aurelian. Weil er sich bei der Wahl zum neuen Stadthalter �bergangen f�hlte, f�hrte er einen S�ldner-Armee gegen den designierten Nachfolger Quintillus ins Feld, der dieser nichts entgegenzusetzen hatte.");
		Doc_PrintLines	( nDocID,  0, "Aurelians Herrschaft stand anfangs unter keinem guten Stern. Horden von Molerats verw�steten Relendel und wagten sich teilweise sogar bis nach Khorata vor. Aus dieser Zeit stammt die noch heute bekannte Vielzahl an Moleratfleisch-Rezepten.");
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLine	( nDocID,  0, ""					);

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 
		Doc_PrintLine	( nDocID,  1, ""					);	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Auch innerhalb der Stadtmauern gab es Unruhen, als die M�nzpr�ger gegen einen Korruptionsvorwurf rebellierten und Aurelian mit Gold bewarfen, sodass dieser mehrere Beulen davontrug. Als Ausgleich lie� der Stadthalter die Rebellen foltern und langsam t�ten. Seitdem gibt es in Khorata keine M�nzpr�ger mehr.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Erfolge (C_ITEM)
{
	name 					=	"Erfolge";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	0;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Enth�lt alle erreichten Erfolge";
	TEXT[1]		= ErfolgText;

	on_state[0]				=	UseItWr_Erfolge;
};

	FUNC VOID UseItWr_Erfolge()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont	( nDocID,  0, FONT_Book);
		Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Erfolg_EifrigerBuesser == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Eifriger B��er");
		};
					
		if (Erfolg_EiserneKonstitution == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Eiserne Konstitution");
		};
					
		if (Erfolg_BackgroundStory2 == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Erkenntnis um die Sch�pfung");
		};

		if (Erfolg_FLehrling == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Flinker Lehrling");
		};

		if (Erfolg_Helferlein == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Helferlein");
		};

		if (Erfolg_Kiffer == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Kettenraucher");
		};

		if (Erfolg_LangeFinger == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Lange Finger");
		};

		if (Erfolg_Leidensfaehigkeit == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Leidensf�higkeit");
		};

		if (Erfolg_MaxLevel == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Levelmeister");
		};

		if (Erfolg_Magersucht == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Magers�chtiger");
		};

		if (Erfolg_MonsterHunter == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Monsterj�ger");
		};

		if (Erfolg_Rattenjaeger == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Rattenj�ger");
		};

		if (Erfolg_Seepferdchen == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Seepferdchen");
		};

		if (Erfolg_Selbstlosigkeit == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Selbstlosigkeit");
		};

		if (Erfolg_Sparschwein == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Sparschwein");
		};

		if (Erfolg_Trampel == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Trampel");
		};

		if (Erfolg_Wandlungskuenstler == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Wandlungsk�nstler");
		};
					
		if (Erfolg_BackgroundStory == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Wissen um das alte Volk");
		};

		if (Erfolg_Zeitspiel == 1)
		{
			Doc_PrintLine	( nDocID,  0, "Zeitspiel");
		};

		Doc_PrintLines	( nDocID,  0, "");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
					
		Doc_Show		( nDocID );
};

INSTANCE ItWr_BookLehmar (C_ITEM)
{
	name 					=	"Merkw�rdiges Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description = name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_Siegelbuch (C_ITEM)
{
	name 					=	"Buch mit drei Siegeln";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description = name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_JuanBook (C_ITEM)
{
	name 					=	"Buch f�r Juan";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseJuanBook;
};

	FUNC VOID UseJuanBook()
	{
		if (Mod_HasJuanBook_Gelesen == TRUE)
		{
			var int nDocID;

				nDocID = 	Doc_Create		()			  ;								// DocManager

					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "JuanBook01.TGA"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "JuanBook02.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					Doc_Show		( nDocID );	
	
		}
		else
		{
			Mod_HasJuanBook_Gelesen = TRUE;

			CreateInvItems	(hero, ItWr_JuanNotiz, 1);

			AI_PrintScreen	("Notiz erhalten", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		};

		
};

INSTANCE ItWr_Chromanin3 (C_ITEM)
{
	name 					=	"Chromaninbuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseChromanin3;
};

	FUNC VOID UseChromanin3()
	{
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager
				Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga


					Doc_Show		( nDocID );	
	
		if (Mod_NL_Chromanin == 0)
		{
			Mod_NL_Chromanin = 1;

			Log_CreateTopic	(TOPIC_MOD_NL_SIEGELBUCH, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_NL_SIEGELBUCH, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_NL_SIEGELBUCH, "Verdammt! Das Chromanin-Buch ist leer. Was Xardas dazu sagen wird?");
		};		
};

INSTANCE ItWr_AlvarTagebuch (C_ITEM)
{
	name 					=	"Tagebuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseAlvarTagebuch;

	description				= 	name;
	TEXT[1]					=	"von Alvar";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseAlvarTagebuch()
	{
		var int nDocID;
		nDocID = 	Doc_Create();								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "... gestern bei der Jagd bin ich wieder einigen dieser Eisgeister begegnet. Zum Gl�ck habe ich ja meinen magischen Kristall, der versteckt in meine R�stung eingearbeitet ist. Damit sollte mir von ihnen nie wieder Gefahr drohen.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Das Holz und die Felle gehen schnell zur neige. Bald werde ich wohl wieder in den Wald gehen m�ssen um neue zu beschaffen. Seit dem letzten �rger will mir ja niemand mehr etwas verkaufen ...");


		Doc_Show		( nDocID );	
	
		if (Mod_AlvarTagebuch == 1)
		{
			Mod_AlvarTagebuch = 2;

			B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Hmm, auf den letzten Seiten kann ich nichts finden, was sich als Gest�ndnis eigenen w�rde. Sera soll ich das Buch genauer ansehen.");
		};		
};

INSTANCE ItWr_AlvarTagebuch2 (C_ITEM)
{
	name 					=	"Tagebuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseAlvarTagebuch2;

	description				= 	name;
	TEXT[1]					=	"von Alvar";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseAlvarTagebuch2()
	{
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager
				Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Diese Dirnen wollen sich mir nicht hingeben. Ich werde wohl mit mehr Nachdruck herangehen m�ssen. Und wehe ihnen, sie verraten mich � dann soll es ihnen schlecht ergehen.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "");

		Doc_Show		( nDocID );	
	
		if (Mod_AlvarDead == 2)
		{
			Mod_AlvarDead = 3;

		};		
};

INSTANCE ItWr_GorNaKoshsTagebuch1 (C_ITEM)
{
	name 					=	"verstaubtes Tagebuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseGorNaKoshsTagebuch1;

	description				= 	name;
	TEXT[1]					=	"von Gor Na Kosh";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseGorNaKoshsTagebuch1()
	{
		var int nDocID;
		nDocID = 	Doc_Create();								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Nach all den Jahren, die ich hier verbringen durfte, ist es endlich so weit. Ich werde in den Stand eines Templers erhoben. Ich habe geschwitzt und ich habe gelitten, doch der Schmerz den mir Schwei� und Blut schenkten vermochte es nicht vollends, die vertrocknete Spur der Tr�nen wegzuwischen ...");
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Und wieder bin ich ein unvollwertiges Mitglied der Gesellschaft. Einer der �lteren H�ter hat mir gesagt, ich werde erst ein vollwertiger Templer sein, wenn ich eine H�terklinge f�hre. Die ben�tigten Rohstoffe f�r eine solche zu finden ist jedoch nahezu unm�glich. Ich habe andere Templer gesehen, die H�terklingen von �lteren Templern abgeluchst oder abgefeilscht haben, andere wiederum haben die falschen Zutaten zur Schmiede gebracht. Ich wei� nicht, was ich machen soll ...");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Ich habe heute mit Baal Ydran gesprochen. Er hat mir ein altes Buch gegeben, welches ein paar vage Andeutungen enth�lt. In der N�he der Felsenfestung lebt angeblich ein Eremit, welcher mir bei meiner Suche helfen k�nnte.");


		Doc_Show		( nDocID );	
	
		if (Mod_TPL_HK_Ydran == 1)
		{
			Mod_TPL_HK_Ydran = 2;

			B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh scheint f�r die Suche nach seinen Zutaten zu einem Eremiten aufgebrochen zu sein, der in der N�he der Felsenfestung leben soll.");

			Wld_InsertItem	(ItWr_GorNaKoshsTagebuch2, "FP_ITEM_GORNAKOSH_BUCH2");
		};		
};

INSTANCE ItWr_GorNaKoshsTagebuch2 (C_ITEM)
{
	name 					=	"verstaubtes Tagebuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseGorNaKoshsTagebuch2;

	description				= 	name;
	TEXT[1]					=	"von Gor Na Kosh";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseGorNaKoshsTagebuch2()
	{
		var int nDocID;
		nDocID = 	Doc_Create();								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Ich habe den Eremiten gefunden und tats�chlich konnte er mir weiterhelfen. Er hat mir einige Orte genannt, die ich aufsuchen sollte, um die von mir ben�tigten Rohstoffe zu finden, darunter die Trollschlucht, einen Strand, den Nebelturm und ein altes Kloster. Ich konnte ihm im Gegenzug nicht helfen. Als ich mich am fr�hen Abend auf den Weg machte, noch keine f�nf Minuten vom Lager des Eremiten entfernt war, h�rte ich Geschreie und Geheul.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Ich rannte zur�ck, war jedoch schon zu sp�t. Ein riesiger Schattenl�ufer beugte sich �ber den alten Mann und labte sich an seinen Innereien. Ich lief mit gez�ckter Waffe auf das Ungeheuer los und schaffte es, es zu vertreiben. Alles was ich noch f�r den Eremiten tun konnte, war ihn ordentlich zu begraben. M�ge er in Frieden ruhen.");


		Doc_Show		( nDocID );	
	
		if (Mod_TPL_HK_Ydran == 2)
		{
			Mod_TPL_HK_Ydran = 3;

			B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh scheint eine Spur gefunden zu haben. In seinen Unterlagen erw�hnt er die Trollschlucht, einen Strand, den Nebelturm und ein altes Kloster. Vielleicht finde ich an einem dieser Orte einen weiteren Hinweis.");

			Wld_InsertItem	(ItWr_GorNaKoshsTagebuch3, "FP_ITEM_GORNAKOSH_BUCH3");

			Npc_RemoveInvItems	(hero, ItWr_GorNaKoshsTagebuch1, 1);
		};		
};

INSTANCE ItWr_GorNaKoshsTagebuch3 (C_ITEM)
{
	name 					=	"verstaubtes Tagebuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				=	UseGorNaKoshsTagebuch3;

	description				= 	name;
	TEXT[1]					=	"von Gor Na Kosh";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

	FUNC VOID UseGorNaKoshsTagebuch3()
	{
		var int nDocID;
		nDocID = 	Doc_Create();								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 		Doc_PrintLine	( nDocID,  0, ""					);
		Doc_PrintLines	( nDocID,  0, "Dem Eremiten sei Dank. Ich habe nach all den Jahren des Suchens wirklich alle Zutaten gefunden. Meine Knochen m�gen alt und m�rbe geworden sein, mein Geist brennt noch immer wie damals, als ich ein junger Novize war, der eben erst in den Stand eines Templers erhoben wurde.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Sobald ich wieder ins Lager gehe, werde ich meine H�terklinge geschmiedet bekommen. Vorher werde ich aber beim Grab des Eremiten vorbeigehen, um ihm meinen Dank zu erweisen.");


		Doc_Show		( nDocID );	
	
		if (Mod_TPL_HK_Ydran == 3)
		{
			Mod_TPL_HK_Ydran = 4;

			B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh hat alle Zutaten gefunden und wollte vor seiner R�ckkehr ins Lager noch einmal beim Grab des Eremiten vorbeisehen.");

			Wld_InsertItem	(ItWr_GorNaKoshsTagebuch3, "FP_ITEM_GORNAKOSH_BUCH3");

			Npc_RemoveInvItems	(hero, ItWr_GorNaKoshsTagebuch2, 1);

			Wld_InsertNpc	(Shadowbeast_GorNaKosh, "FP_ROAM_GORNAKOSH_SHADOWBEAST");
		};		
};

INSTANCE Ryans_Almanach (C_ITEM)
{
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"Almanach aus Ryans Truhe";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_XardasAlmanach (C_ITEM)
{
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"Almanach von einem Ork";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_BeliarBook (C_ITEM)
{
	name 					=	"Necronomicum";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"Buch der Schwarzmagier";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};


INSTANCE ItWr_BookFromSkeleton (C_ITEM)
{
	name 					=	"Tagebuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Tagebuch des Piratenzombies";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseSkeletonBook;
};

	FUNC VOID UseSkeletonBook()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "23. Tag des 4ten Umlaufs. Zyklus 457"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Heute bin ich Long John Silver�s Piraten beigetreten. Ich musste einen Eid bei Adanos schw�ren ihm immer Loyal zu bleiben."					);
					//Absatz
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  0, "7. Tag des 8ten Umlaufs. Zyklus 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Wir haben eine k�nigliche Gallere geentert. Besatzung ist tot, ein Koch entkam jedoch. Riesiger Schatz, jedoch wird uns bald die k�nigliche Flotte verfolgen.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  0, "20. Tag des 8ten Umlaufs. Zyklus 459");
					Doc_SetFont	( nDocID,  0, FONT_Book);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Wir sind auf einer Insel angekommen.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Der K�ptn will den Schatz vergraben. Dann will er weiter nach Norden fahren um den Schatz irgendwann einmal wieder zu heben. Ger�chte �ber eine Meuterei machen sich breit. Habe nicht den Mut mich gegen die Meuterer zu stellen."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  1, "21. Tag des 8ten Umlaufs. Zyklus 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Heute wurde der K�ptn geh�ngt. Mit seinen letzten Atemz�gen hat er uns verflucht und uns ausgelacht: �Adanos wird euch strafen!�");
					//Absatz
					Doc_PrintLine	( nDocID,  1, "");
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			);
					Doc_PrintLines	( nDocID,  1, "22. Tag des 8ten Umlaufs. Zyklus 459");
					Doc_SetFont	( nDocID,  1, FONT_Book);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "HILFE!!!!!!!!!!!!!");
					Doc_Show		( nDocID );

		if (Mod_HatSkeletonBook_Gelesen == FALSE)
		{
			Mod_HatSkeletonBook_Gelesen = TRUE;
		};
};

INSTANCE ItWr_EmerinsTagebuch (C_ITEM)
{
	name 					=	"Tagebuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Tagebuch von Emerin";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseEmerinsTagebuch;
};

	FUNC VOID UseEmerinsTagebuch()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Diese verdammten Orks. Ich h�re sie schon wieder am Eingang rumoren. Ich denke, ich werde einige Zombies dorthin schicken.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Ich h�re Stimmen in meiner N�he. Ich werde besser nachsehen, ob dieser Harpien-Idiot wiederkommt, dann kann ich ihm endlich die Spruchrolle geben, schlie�lich habe ich sie jetzt fertig.");
					Doc_Show		( nDocID );

		if (Mod_Hermy_KnowsQuest == 6)
		{
			Mod_Hermy_KnowsQuest = 7;

			B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Die Orks haben Emerin umgebracht und die Spruchrolle an sich genommen. Ich werde sehen, ob ich den Zauber ohne Blutvergie�en bekommen kann.");
		};
};

INSTANCE ItWr_MagicSecretsBand5 (C_ITEM)
{
	name 					=	"Altes Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Geheimnise der Zauberei Band V � magisch begabte Untote";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseMagicSecretsBand5;
};

	FUNC VOID UseMagicSecretsBand5()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "�berreste magisch begabter Wesen, die sich zu Untotendasein erhoben, jedoch ohne eigenem Willen und Verstand. Sie folgen diffusen Impulsen von Magie, oder einem Meister, wie gew�hnliche Untote, auch wenn sie selbst Magie wirken k�nnen. Es wird auch von solchen berichtet, denen Verstand und zu gewissem Ma� sogar freier Wille bestehen blieben. Meist sind es Dienerkreaturen m�chtiger magischer Gesch�pfe, wie Erzd�monen.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Alte Quellen berichten sogar von einer Gilde untoter Magier, die dadurch bestehen konnten, indem sie in einem komplexen magischen Prozess ihre Lebenskraft an einen Gegenstand banden. V�llig unabh�ngig von anderen Wesen und �beraus m�chtig konnte man ihnen nur Einhalt gebieten, indem man den Gegenstand, der ihre Lebenskraft barg, auffand und vernichtete. Diese waren meist in einiger Entfernung der Magier gut versteckt. Es h�tte n�mlich sonst die M�glichkeit bestanden, dass der Gegenstand die Lebenskraft wieder an den toten K�rper �bergeben h�tte, wo sie sofort erloschen w�re ...");
					Doc_Show		( nDocID );

		if (Mod_NL_Lich == 1)
		{
			Mod_NL_Lich = 2;

			Mod_NL_Dragon_KnowsLich = 1;

			B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Aha, eine Gilde untoter Magier, die ihre Lebenskraft an Gegenst�nde gebunden haben.");
		};
};

INSTANCE ItWr_MagicSecretsBand6 (C_ITEM)
{
	name 					=	"Altes Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Geheimnisse der Zauberei Band VI � T�uschung und Tarnung";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseMagicSecretsBand6;
};

	FUNC VOID UseMagicSecretsBand6()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... so wird auch davon berichtet, dass Hexen die F�higkeit besitzen, ihre Gestalt zu wandeln, jedoch nicht nur in Tierformen. Alles von liebreizender Maid bis greiser Frau k�nnen sie verk�rpern. Es ist jedoch noch umstritten, ob es sich um reine Verwandlungsmagie handelt, oder ob das Auge des Betrachters lediglich �ber die wahre Gestalt der Anwenderin hinwegget�uscht wird.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Die Kunst der Tarnung und T�uschung sollen einige Hexen sogar in so weit vervollkommnet haben, dass sie g�nzlich unsichtbar f�r den Betrachter sind. Dabei scheint die Auswirkung dieser Magie jedoch selektiver Natur zu sein. Auf Lebewesen, in welchen die magisch begabten Weiber keine Gefahr f�r sich sehen,  scheint diese Zauberei keinerlei Auswirkungen zu haben. Auch sollen Menschen, denen es einmal gelang die Tarnung einer Hexe zu durchblicken, nicht mehr durch deren Zauber beeinflussbar gewesen sein ...");
					Doc_Show		( nDocID );

		if (Knows_MagicSecretsBand6 == 0)
		{
			Knows_MagicSecretsBand6 = 1;

			B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Hmm, sich verbirgt dem M�chtigen ... Lebewesen, in welchem sie keine Gefahr sahen, keinerlei Auswirkung ...");
		};
};

INSTANCE ItWr_MagicMonsterBand7 (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Geheimnisse der Arten Band VII � magische Gesch�pfe";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseMagicMonsterBand7;
};

	FUNC VOID UseMagicMonsterBand7()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... blieben �ber Jahrtausende auf der Weltenkugel bestehen. Es waren darunter Riesen, Drachen, Kobolde und Gnome. Vor vielen Jahrhunderten, verschwanden einige jedoch so pl�tzlich von dem Antlitz der Erde, dass zeitgen�ssische Quellen sogar Zweifel geltend machen, sie h�tten jemals existiert.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "L�ckenhafte Quellen, die die Zeit �berdauerten, lassen auf einen m�chtigen Magier als Grund ihres pl�tzlichen Untergangs schlie�en. Wie genau dies von statten gegangen sein soll ist nicht bekannt. Nur der �u�erste S�den der Weltenkugel, weit entfernt von Myrtana, soll von dem Zugriff des Magiers verschont geblieben sein ...");
					Doc_Show		( nDocID );

};

INSTANCE ItWr_Buddlerbuch (C_ITEM)
{
	name 					=	"Buddlerbuch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	description				= 	"von Costa";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_Milizregeln (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Grundregeln der Miliz";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseMilizregeln;
};

	FUNC VOID UseMilizregeln()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, "Grundregeln der Miliz"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1. Ein guter Milizsoldat sch�tzt stets die Schw�cheren."					);
					Doc_PrintLines	( nDocID,  0, "2. Das Androhen von Gewalt gegen ein Individuum oder die Allgemeinheit als solche ist als Straftat anzusehen."					);
					Doc_PrintLines	( nDocID,  0, "3. Milizen ist es in ihrer Vorbildwirkung nicht erlaubt unlautere Taten auszu�ben."					);
					Doc_PrintLines	( nDocID,  0, "4. Recht und Ordnung sind Brot und Luft des wahren Milizsoldaten."					);
					Doc_PrintLines	( nDocID,  0, "5. Ein Milizsoldat k�mpft f�r die Stadt, das Land, den K�nig und die Freiheit."					);
					Doc_PrintLines	( nDocID,  0, "6. Ein Milizsoldat k�mpft nicht wegen des Soldes, sondern aus �berzeugung."					);
					Doc_PrintLines	( nDocID,  0, "7. Ein Milizsoldat erhebt unter keinen Umst�nden das Schwert gegen einen Waffenbruder."					);
					Doc_Show		( nDocID );

		if (Mod_PAL_HeroBot == 18)
		{
			Mod_PAL_HeroBot = 19;

			B_GivePlayerXP	(2000);
		};
};

INSTANCE ItWr_Innosklinge (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Zerfleddertes Buch �ber die Schwertweihe";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseInnosklinge;
};

	FUNC VOID UseInnosklinge()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, ""	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... So hei�t es, dass jener, der den Ruf des Kriegers vernimmt, auf den Pfaden seines Herrn wandeln m�ge �ber verschieden Region der Erde. An den St�tten des Gebets lasse er ihn wiederhallen, wenn die Sonne am hellsten strahlt. Das Licht, die flammende Kugel, den feurigen Sturm, den Diener aus Feuer und den versengend Regen soll er ihm als Opfer dar geben. Vergie�t er ein jedes Mal das heilige Wasser �ber seine Klinge, so wird der Stahl durchtr�nkt von der Macht Innos�. Seinen treuen Diener wird die heilige Flamme von nun an geleiten und ihn sch�tzen ..."					);
					Doc_Show		( nDocID );

		if (Mod_AndreSchwert_Test == 1)
		{
			Mod_AndreSchwert_Test = 2;

			B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Hmm, sehr R�tselhaft. 'Der den Ruf des Kriegers vernimmt, auf den Pfaden seines Herrn wandeln m�ge'. Vielleicht f�llt Harad was dazu ein.");
		};
};

INSTANCE ItWr_HSBook (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Eigenheiten der hofst�dtischen Frauen";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseHSBook;
};

	FUNC VOID UseHSBook()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, "Eigenheiten der hofst�dtischen Frauen"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Frauen, die nicht dem P�bel angeh�ren, lassen sich grunds�tzlich nur mit M�nnern ein, die sie au�erhalb des Reiches kennengelernt haben. Bei Bauern sollteman darauf achten, die Frau des derzeitigen 'k�niglichen Hundefutters' zu umwerben, da diese sehr bald Single sein wird. Desweiteren sollte man darauf achten, dass sie nicht gerade Freudenspender genommen haben, da dies das Sexualverhalten deutlich einschr�nkt.");

					//2.Seite
					Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Am besten funktioniert das Ganze mit einer Droge, die au�erhalb unseres Reiches sehr verbreitet ist. Es ist eine Fl�ssigkeit, die in verschiedener Konzentration in manchen Getr�nken enthalten ist und die den Willen zerbrechen l�sst. Der Trunkenbold hat davon, man sollte ihn danach fragen.");
					Doc_Show		( nDocID );

		if (Mod_HSBook == 0)
		{
			Mod_HSBook = 1;
		};
};

INSTANCE ItWr_HSBook2 (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Anmachen und Anlachen";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseHSBook2;
};

	FUNC VOID UseHSBook2()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLines	( nDocID,  0, "Anmachen und Anlachen"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "'Du siehst meiner vierten Freundin �hnlich.' Sie: 'Oh, wie viele Freundinnen hattest Du denn schon?' 'Drei.'");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "'Ich verrat dir was: Das in meiner Hose ist kein schwerer Ast.'");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "'Wenn ich dich fragen w�rde, ob du mich heiratest, w�re es dieselbe Antwort wie auf diese Frage?'");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "'Hast du eine Brieftaube Dabei? Ich habe n�mlich meiner Mutter versprochen zu schreiben, sobald ich meine Traumfrau gefunden habe.'");
					Doc_Show		( nDocID );

		if (Mod_HSBook2 == 0)
		{
			Mod_HSBook2 = 1;
		};
};

INSTANCE ItWr_Advent1 (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Eigenheiten der hofst�dtischen Frauen";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAdvent1;
};

	FUNC VOID UseAdvent1()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, ""	);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "...wurde ich endlich bei den S�ldnern aufgenommen. Die interessiert wenigstens die Sache mit den G�ttern nicht. Die Pfaffen und Krieger Innos' nehmen zwar dankbar jede helfende Hand bei ihrer Schmutzarbeit an, aber wenn es dann ums Eingemachte geht, ist man 'nicht gl�ubig genug'. Pah, der Verein kann mir gestohlen bleiben!");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Aber genug davon. Im neuen Lager scheint sich einiges ge�ndert zu haben, seit der Sache mit dem Schl�fer; aber Vieles ist mir altbekannt...");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Advent2 (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Eigenheiten der hofst�dtischen Frauen";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAdvent2;
};

	FUNC VOID UseAdvent2()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, ""	);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Kaum war ich wieder dabei, hat mich Fester gleich zum 'Jagen' engagiert - ein paar Scavenger und Molerats sollten wir erlegen, wenn der w�sste... Das breite Grinsen in seinem Gesicht h�tte mir gleich verd�chtig vorkommen m�ssen, aber ich schob es auf seine �berheblichkeit. Zu viert sind wir dann losgezogen, schnurstracks in eine der kleinen H�hlen direkt vor den Reisfeldern.");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Dort steckten sich die werten Herren erstmal ihr Sumpfkraut an, was Fester lediglich mit 'Ahh, herrlich' quittierte. Ich durfte mich dann um die Scavenger und Molerats k�mmern, w�hrend die anderen drei 'auf der Lauer lagen'. Das Sumpfkrautverbot im Lager scheint irgendwie nicht so richtig zu greifen...");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Advent3 (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Eigenheiten der hofst�dtischen Frauen";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAdvent3;
};

	FUNC VOID UseAdvent3()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, ""	);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Nachdem ich das Fleisch abgeliefert hatte (Fester hatte schon wieder fast vergessen, warum wir �berhaupt losgezogen waren), wollten die Jungs noch in einer anderen H�hle etwas 'erlegen'. Der einzige, der etwas 'erlegen' durfte, war dann wieder ich - und zwar eine kleine Gruppe junger Goblins, welche die zugedr�hnten S�ldner f�r Orks hielten.");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Danach wollten sich die S�ldner in der nach Sumpfkraut stinkenden H�hle etwas in 'Alchemie �ben'. Nachdem sie ihre Joints gedreht hatten, ging es zur�ck zum Lager. Auf dem Weg dahin trieb sich noch einer der Goblins herum, vor dem die harten Burschen Rei�aus nahmen und etwas von einem 'gro�en b�sen Ork' schrieen. Das Sumpfkrautverbot hat durchaus seine Berechtigung scheint mir, vor dem Einsturz der Barriere ging es wesentlich gesitteter zu im Lager.");
		Doc_Show		( nDocID );
};

INSTANCE ItWr_Advent4 (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Eigenheiten der hofst�dtischen Frauen";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAdvent4;
};

	FUNC VOID UseAdvent4()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite

		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, ""	);
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Als ich die drei dann schlie�lich wieder eingeholt hatte, bekam ich noch etwas Erz und ein paar St�ngel Kraut als Belohnung - au�erdem das Versprechen, man w�rde Lee und Sylvio von meiner Hilfe berichten.");

		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
		Doc_PrintLine	( nDocID,  1, ""					);
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Ob das meinem Ansehen allerdings wirklich zutr�glich ist, dessen bin ich mir nicht so sicher; zumal ich nicht wei�, ob ich �berhaupt etwas mit diesem Sylvio...");
		Doc_Show		( nDocID );
};

var int ErisKult_Page;


INSTANCE ItWr_ErisKult (C_ITEM)
{
	name 					=	"Buch";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Die Macht des Eriskultes";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	Use_Eriskult;
};

	FUNC VOID Use_Eriskult()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		if (ErisKult_Page == 0)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Die Macht des Eriskultes");
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Der Eriskult ist eine Schwesternschaft, welche Hexenkulten sehr nahe steht. W�hrend andere Hexenclans jedoch Verwandlung und T�uschung ausschlie�lich durch den Einsatz von Magie erwirken, besteht die Kunst der Erisschwestern darin, ihre Umgebung durch den Einsatz emotionaler Selbstdarstellung und rhetorischer Mittel irrezuf�hren."					);

			Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLines	( nDocID,  1, "war verst�rkt Magie die Wirksamkeit ihrer Mittel, jedoch sind es banale Methoden der Kommunikation, welche sie geschickt und perfide einsetzen. Durch Intrigen, L�gen, T�uschung und Verf�hrung verm�gen sie Zwietracht unter den Menschen zus�hen, und gleichzeitig ihren eigenen Einfluss auf die Umgebung zu st�rken.");

			ErisKult_Page = 1;
		}
		else if (ErisKult_Page == 1)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Wenn sie eine Gemeinschaft lange genug beeinflusst haben, werden die Menschen mit der Zeit vollkommen von ihnen abh�ngig, gleich einer Droge. Sie werden sogar dazu breit sein den Schwestern der T�uschung bis hin zur Selbstaufgabe zu folgen, ihrerseits zu l�gen und zu t�uschen ... gar zu morden, wenn es von ihnen verlangt wird."					);

			Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLines	( nDocID,  1, "Die Einzige M�glichkeit den Erisschwestern Einhalt zu gebieten besteht in der Macht Innos. Fernab des gro�en Steinkreises soll sich in Nordwestlicher Richtung eine H�hle befinden, die anderes ist, als die Umgebung aus Eis. Feuer kommt dem Boden empor und �tzende D�mpfe machen das Atmen schwer.");

			ErisKult_Page = 2;
		}
		else if (ErisKult_Page == 2)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Als Innos einst seine Tr�nen vergoss, sollen einige ihren Weg dorthin gefunden haben. Die widernat�rlichen Bedingungen in der H�hle formten Neues aus ihnen. Sie gediehen zu den Kristallen, welche die Macht Innos in sich tragen."					);

			Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
			Doc_PrintLine	( nDocID,  1, ""					);
			Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
			Doc_PrintLines	( nDocID,  1, "Es hei�t, sie w�rden die Zungen jener, die ihre Macht auf T�uschung gr�nden, dazu zwingen die Wahrheit zu sagen. Der Tr�ger eines solchen 'Tr�nenkristalls', muss dazu nur das Gespr�ch mit einer tr�gerischen Person aufnehmen ...");

			ErisKult_Page = 3;
		}
		else if (ErisKult_Page == 3)
		{
			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
			Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 			Doc_PrintLine	( nDocID,  0, ""					);
			Doc_PrintLines	( nDocID,  0, "Kapitel.2: Erste Schritte von Erisschwestern ihre Umgebung zu beeinflussen");
			Doc_PrintLine	( nDocID,  0, "");
			Doc_PrintLines	( nDocID,  0, "Die Erisschwestern beginnen �blicherweise damit ihrem gegen�ber zu schmeicheln. Sie vermitteln ihm das Gef�hl, jener sei au�ergew�hnlich, h�be sich von seiner Umgebung ab. Auf diese Weise machen sie ihm sich gewogen und seine Bereitschaft ...");

			ErisKult_Page = 0;

			if (Mod_AlvarKristall == 5)
			{
				Mod_AlvarKristall = 6;

				B_Say_Overlay	(hero, NULL, "$ERISKULTBUCH01");

				B_GivePlayerXP	(300);

				B_RaiseHandelsgeschick	(10);

				AI_Teleport	(Mod_7563_OUT_Brutus_EIS, Npc_GetNearestWP(hero));
				B_StartOtherRoutine	(Mod_7563_OUT_Brutus_EIS, "CAVE");

				Wld_InsertItem	(ItMi_Traenenkristall,	"FP_ITEM_TRAENENKRISTALL");
			};
		};
};

var int Almanach_Pre_Gelesen;


INSTANCE ItWr_AxtAlmanach_Pre (C_ITEM)
{
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Enth�lt das 1. R�tsel";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_Pre;
};

	FUNC VOID UseAxtAlmanach_Pre()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Die Axt des Untergangs ist gut gesichert und versteckt. Nur wer reinen Herzens ist und das R�tsel l�st wird sie erlangen. Nun h�re die ersten Worte:"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Das erste Buch ist verborgen, gut gesichert und bewacht!");
					Doc_PrintLines	( nDocID,  0, "Nur wer in die Tiefe der blut'gen H�hle herabsteigt wird's erlangen!");
					Doc_PrintLines	( nDocID,  0, "Nur wer die L�ufer der Schatten �berwindet wird's erlangen!");
					Doc_PrintLines	( nDocID,  0, "Nur wer das R�tsel l�st wird's erlangen!");
					
					Doc_Show		( nDocID );

		if (Almanach_Pre_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_Pre_Gelesen = TRUE;

			B_StartOtherRoutine	(GardeBeliars_1989_Drach, "ATALMANACH");
		};
};

var int Almanach_01_Gelesen;


INSTANCE ItWr_AxtAlmanach_01 (C_ITEM)
{
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Enth�lt das 2. R�tsel";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_01;
};

	FUNC VOID UseAxtAlmanach_01()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Das erste Buch ist nun geborgen und er�ffnet das n�chste R�tsel. Folge dem Pfade Innos' und gehe in die H�hle des blauen Lichts! Dort erwartet dich das zweite Buch!"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

		if (Almanach_01_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_01_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Das erste R�tsel habe ich gel�st und nun kenne ich das Zweite. Ich sollte mich gleich auf den Weg machen.", "Drach ist jetzt tot und wird mir keinen �rger mehr machen.");

			Wld_InsertNpc	(GardeBeliars_1990_Jorjo, "BIGFARM");
		};
};

var int Almanach_02_Gelesen;


INSTANCE ItWr_AxtAlmanach_02 (C_ITEM)
{
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Enth�lt das 3. R�tsel";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_02;
};

	FUNC VOID UseAxtAlmanach_02()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Das zweite Buch ist geborgen und du kommst deinem Ziele n�her! Doch bedenke noch vier R�tsel musst du l�sen um die Axt zu erlangen. Nun horch! Gehe zum Kreise im Wald an dem die Sonne scheint und berge den n�chsten Almanach!");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_Show		( nDocID );

		if (Almanach_02_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_02_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Auch das zweite R�tsel war kein Problem. Jetzt soll ich zum Kreis im Wald wo die Sonne scheint.", "Auch der zweite Krieger namens Jorjo ist jetzt Geschichte.");

			Wld_InsertNpc	(GardeBeliars_1991_Fantrek, "BIGFARM");
		};
};

var int Almanach_03_Gelesen;


INSTANCE ItWr_AxtAlmanach_03 (C_ITEM)
{
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Enth�lt das 4. R�tsel";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_03;
};

	FUNC VOID UseAxtAlmanach_03()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Die H�lfte des Weges hast du hinter dir! Nun h�re das n�chste R�tsel!");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Gehe dorthin wo Sand und Wasser aufeinander treffen!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_03_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_03_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Wo Sand und Wasser aufeinander treffen ...", "Drei erledigt, bleiben noch drei. Fantrek war keine gro�e Herausforderung.");

			Wld_InsertNpc	(GardeBeliars_1992_Reinhold, "SEPCIAL_FOR_REINHOLD");
		};
};

var int Almanach_04_Gelesen;


INSTANCE ItWr_AxtAlmanach_04 (C_ITEM)
{
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Enth�lt das 5. R�tsel";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_04;
};

	FUNC VOID UseAxtAlmanach_04()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nun lausche den n�chsten Worten:");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Begib dich in die Dunkelheit in der einst Erz gesch�rft wurde. Besiege die dunklen Diener und berge das f�nfte Buch!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_04_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_04_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Erz gesch�rft ... klingt nach einer Mine. Zum Gl�ck gibt es davon nicht so viele auf dieser Insel.", "Wieder ein Krieger weniger. Wenn ich so weitermache, dann sterben sie bald aus.");

			Wld_InsertNpc	(GardeBeliars_1993_Gunram, "SEPCIAL_FOR_GUNRAM");
		};
};

var int Almanach_05_Gelesen;


INSTANCE ItWr_AxtAlmanach_05 (C_ITEM)
{
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Enth�lt das 6. R�tsel";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_05;
};

	FUNC VOID UseAxtAlmanach_05()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Nun bist du fast am Ziel!");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Kehre zur�ck, zum ersten Ort, und beende die Suche, Suchender!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_05_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_05_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Ich soll jetzt wieder zum ersten Ort zur�ckkehren.", "Gunram ist Geschichte. Jetzt ist nur noch einer der sechs Krieger �brig.");

			Wld_InsertNpc	(GardeBeliars_1994_Frowin, "BIGFARM");

			Wld_InsertItem	(ItWr_AxtAlmanach_06, "FP_STAND_DRACH");
		};
};

var int Almanach_06_Gelesen;


INSTANCE ItWr_AxtAlmanach_06 (C_ITEM)
{
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_SHOW;

	value 					=	100;

	visual 					=	"ItWr_Book_02_05.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Enth�lt das 7. R�tsel";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseAxtAlmanach_06;
};

	FUNC VOID UseAxtAlmanach_06()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Du hast es geschafft! Nun h�re diesen Worten genau zu:");
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Gehe hin zu Inubis letzter Ruhest�tte und hebe das Grab aus. Besiege die dunklen W�chter und nimm die Axt an dich und nutze sie weise!"					);
					
					Doc_Show		( nDocID );

		if (Almanach_06_Gelesen == FALSE)
		&& (CurrentLevel == NEWWORLD_ZEN)
		{
			Almanach_06_Gelesen = TRUE;

			B_LogEntry_More	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_FIVEKNIGHTS, "Die letzte Ruhest�tte von Inubis? Wo das wohl sein mag. Jedenfalls werde ich dort die Axt finden, wenn mir Frowin nicht zuvor kommt.", "Frowin ist entkommen. Ich muss ihn schnell finden.");
		};
};
//////////////////////////////////////////////////////////////////////////////
//
//	MAPS
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_NewWorld (C_Item)
{
	name 		= "Landkarte Khorinis";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_Eisgebiet (C_Item)
{
	name 		= "Landkarte Eisgebiet";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_Eisgebiet.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Eisgebiet;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_Eisgebiet()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Eisgebiet);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_Eisgebiet.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_Eisgebiet_Richard (C_Item)
{
	name 		= "Landkarte Eisgebiet";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_Eisgebiet.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Eisgebiet_Richard;

	description	= name;
	TEXT[0]		= "Richards Aufenthaltsort ist markiert";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_Eisgebiet_Richard()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Eisgebiet_Richard);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_Eisgebiet_Richard.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_Eisgebiet_Keith (C_Item)
{
	name 		= "Landkarte Eisgebiet";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_Eisgebiet.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Eisgebiet_Keith;

	description	= name;
	TEXT[0]		= "Keiths H�tte ist markiert";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_Eisgebiet_Keith()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Eisgebiet_Keith);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_Eisgebiet_Keith.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_Tugettso_Tempel (C_Item)
{
	name 		= "Landkarte Tugettso";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Tugettso_Tempel;

	description	= name;
	TEXT[0]		= "Der Tempel ist markiert";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_Tugettso_Tempel()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Tugettso_Tempel);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_Tugettso_Tempel.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_LageplanOrks (C_Item)
{
	name 		= "Landkarte Khorinis";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_LageplanOrks;

	description	= "Es sind einige Stellen markiert";
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_LageplanOrks()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_LageplanOrks);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Orklager.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);

	if (Mod_GarondQuest == 0)
	{
		Mod_GarondQuest = 1;

		Wld_InsertNpc	(OrcScout_Garond_03, "NW_PATH_TO_MONASTER_AREA_01");
		Wld_InsertNpc	(OrcScout_Garond_04, "NW_PATH_TO_MONASTER_AREA_01");
		Wld_InsertNpc	(OrcScout_Garond_05, "NW_PATH_TO_MONASTER_AREA_01");
		Wld_InsertNpc	(OrcScout_Garond_06, "NW_TROLLAREA_RUINS_CAVE_01");
		Wld_InsertNpc	(OrcScout_Garond_07, "NW_TROLLAREA_RUINS_CAVE_01");
		Wld_InsertNpc	(OrcScout_Garond_08, "NW_TROLLAREA_RUINS_CAVE_01");
		Wld_InsertNpc	(OrcScout_Garond_09, "NW_BIGMILL_MALAKSVERSTECK_06");
		Wld_InsertNpc	(OrcScout_Garond_10, "NW_BIGMILL_MALAKSVERSTECK_06");
		Wld_InsertNpc	(OrcScout_Garond_11, "NW_BIGMILL_MALAKSVERSTECK_06");

		Log_CreateTopic	(TOPIC_MOD_GAROND_ORKLAGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_GAROND_ORKLAGER, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_GAROND_ORKLAGER, "Im Lager der zwei Ork Sp�her war eine Karte. Auf ihr sind einige Stellen markiert. Ich sollte diese Karte Garond zeigen.");
	};
};

instance ItWr_Map_NewWorld_City (C_Item)
{
	name 		= "Stadtkarte Khorinis";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 50;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_City;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_City()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld_City);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_City.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_OldWorld (C_Item)
{
	name 		= "Landkarte Minental";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_OldWorld;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_OldWorld()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_OldWorld);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_OldWorld.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_Map_HagenAL (C_Item)
{
	name 		= "Landkarte Minental";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_HagenAL;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_HagenAL()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_HagenAL);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_HagenAL.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_MapToGobboHoehle (C_Item)
{
	name 		= "Landkarte Minental";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_MapToGobboHoehle;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_MapToGobboHoehle()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_MapToGobboHoehle);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "MapToGobboHoehle.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

instance ItWr_NicksMap (C_Item)
{
	name 		= "Schatzkarte";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 350;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_NicksMap;

	description	= name;
	TEXT[0]		= "von Nick";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_NicksMap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_NicksMap);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "NicksMap.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

var int Lerne_Einhand;
var int Lerne_Zweihand;

instance ItWr_Map_Schatzsuche (C_Item)
{
	name 		= "Schatzkarte";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 0;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

instance ItWr_Map_Schatzsuche_Translated (C_Item)
{
	name 		= "�bersetzte Schatzkarte";

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 0;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};
//---------------------------------------------------------------------------------------------------------------------------
//						Einhandkampf
//---------------------------------------------------------------------------------------------------------------------------
INSTANCE ItWr_EinhandBuch (C_ITEM)
{
	name 					=	"Kampfkunst";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"ItWr_Book_02_04.3ds";  					
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Die s�dl�ndische Verteidigung";
	
	TEXT[2] 				=  "Ein Lehrbuch zum Kampf";
	TEXT[3] 				=  "mit Einhandwaffen";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseEinhandBuch;
};

	FUNC VOID UseEinhandBuch()
	{
		if (Lerne_Einhand == FALSE)
		{
			B_RaiseFightTalent (self, NPC_TALENT_1H, 5);
			Print (PRINT_Learn1H);
			Lerne_Einhand = TRUE;
			Snd_Play("Levelup");
		};
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								
					Doc_SetPages	( nDocID,  2 );                        

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga"  , 0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 0	); 

					

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Die s�dl�ndische Verteidigung"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Der S�dl�nder k�mpft nun mehr weniger mit der Kraft des Nordmannes, als mit seiner Behendigkeit. Denn im hei�en Klima seiner Heimat, bevorzugt er leichte R�stungen welche ihm mehr Beweglichkeit erlauben. Durch diesen Umstand hat der S�dl�nder einen ihm angepassten Kampstil entwickelt, der sich auf fundamentale Weise von den uns bekannten unterscheidet. "					);
					
					

					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Das wohl bekannnteste Man�ver des S�dl�nders ist wohl der einarmige Block mit r�ckw�rtigen Ausfallschritt. Durch den Ausfallschritt gelingt es ihm, die Kraft des gegnerischen Angriffes zu mildern und so eine hervorragende Ausgangsposition zu erlangen, die zum direkten Gegenangriff genutzt werden kann."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					
					
					Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------------------------------------------------------
//						Zweihandkampf
//---------------------------------------------------------------------------------------------------------------------------
INSTANCE ItWr_ZweihandBuch (C_ITEM)
{
	name 					=	"Kampftaktik ";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"ItWr_Book_02_03.3ds";  					
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Der Doppelblock";
	
	TEXT[2] 				=  "Ein Lehrbuch zum Kampf";
	TEXT[3] 				=  "mit Zweihandwaffen";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseZweihandBuch;
};

	FUNC VOID UseZweihandBuch()
	{
		if (Lerne_Zweihand == FALSE)
		{
			B_RaiseFightTalent (self, NPC_TALENT_2H, 5);
			Print (PRINT_Learn2H);
			Lerne_Zweihand = TRUE;
			Snd_Play("Levelup");
		};
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga"  , 0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 0	); 

				

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Der Doppelblock"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Das Abblocken der gegnerischen Klinge, mit einer beidh�ndig gef�hrten Waffe, kann bei ausreichender Kraft dazu genutzt werden, s�mtlichen Schwung des Angriffes aufzuhalten und den Gegner zu zwingen seien begonnene Kombination abrupt zu beenden. "					);
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, ""	);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Die daraufhin meist folgende Stagnation des Gegners sollte entschlossen genutzt werden, um selbst die Initiative zu ergreifen und den Gegner mit gekonnten Schl�gen in die Niederlage zu treiben.    "	);
					
					Doc_Show		( nDocID );
};