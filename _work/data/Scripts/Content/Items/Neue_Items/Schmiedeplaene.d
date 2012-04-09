INSTANCE ItWr_Bauplan_Erzschwert_Wasser		(C_Item)
{
	name 				=	"Bauplan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Erzschwert_Wasser;
	scemeName			=	"MAP";
	description			= 	"Bauplan: Erzschwert des Wasserhiebes";
};

func void UseBauplan_Erzschwert_Wasser ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Erzschwert des Wasserhiebes"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ein kundiger Schmied in der Verarbeitung magischen Erzes kann eine Nahkampfwaffe mit einer d�nnen Schicht Erz �berziehen und oberhalb des Griffes eine Wasserfaustrune anbringen. Er ben�tigt dazu je nach Gr��e der Waffe 10 oder 15 Erzbrocken und nat�rlich die Rune. Eine auf diese Art aufgebesserte Waffe f�hrt im Nahkampf  (Text verwittert) ..."					);

					Doc_Show		( nDocID );

		Smith_Erzschwert_Wasser = TRUE;
};

INSTANCE ItWr_Bauplan_Erzschwert_Feuer		(C_Item)
{
	name 				=	"Bauplan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBauplan_Erzschwert_Feuer;
	scemeName			=	"MAP";
	description			= 	"Bauplan: Erzschwert des Versengens";
};

func void UseBauplan_Erzschwert_Feuer ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "Erzschwert des Versengens"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ein kundiger Schmied in der Verarbeitung magischen Erzes kann eine Nahkampfwaffe mit einer d�nnen Schicht Erz �berziehen und oberhalb des Griffes eine Feuerballrune � in Erz eingebettet -  anbringen, gleiches an Armbrust, oder Bogen. Ist die Rune im Ganzen zu gro�, kann man sie zerteilen, wobei dir Teilst�cke immer durch magisches Erz verbunden bleiben m�ssen. Er ben�tigt dazu je nach Gr��e der Waffe 10 oder 15 Erzbrocken und nat�rlich die Rune."					);

					Doc_Show		( nDocID );

		Smith_Erzschwert_Feuer = TRUE;
};