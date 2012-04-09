var int Beliarkloster_1_permanent;
var int Beliarkloster_2_permanent;
var int Beliarkloster_3_permanent;
var int Beliarkloster_4_permanent;

FUNC VOID BOOKSTAND_BELIARKLOSTER_01_S1()		//Buchst�nder in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Niederschrift des Kriegsherrn Ur GarShock"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Der Menschenk�nig wurde von Beliar selbst geholt. Die letzte Schlacht, und somit der Krieg, waren vorbei. Und dies gelang nur durch Beliar selbst, der Blitze regnen lie�, damit wir vorsto�en konnten.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Beliar der du da bist,"); 
					Doc_PrintLines	( nDocID,  1, "unser Herr und Sch�pfer"); 
					Doc_PrintLines	( nDocID,  1, "alles B�sen,"); 
					Doc_PrintLines	( nDocID,  1, "alles Schlechten,"); 
					Doc_PrintLines	( nDocID,  1, "dessen Reich das pr�chtigste"); 
					Doc_PrintLines	( nDocID,  1, "und gr��te ist."); 
					Doc_PrintLines	( nDocID,  1, "Nur durch deine Macht"); 
					Doc_PrintLines	( nDocID,  1, "werden wir siegreich sein,"); 
					Doc_PrintLines	( nDocID,  1, "um alle zu peinigen,"); 
					Doc_PrintLines	( nDocID,  1, "die sich gegen deine Untertanen wenden."); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_1_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARKLOSTER_02_S1()		//Buchst�nder in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Niederschrift des Propheten Gosh Tar-Wog"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Beliar offenbarte sich heute allen An�ngern, doch manche waren skeptisch gegen�ber der Macht ihres Herrn. Sie wollten ein Zeichen, doch dann tauchte ein mit Nebel umgebener D�mon auf und Sprach: 'Ein Reich, das gegen sich selbst k�mpft, ist dem Untergang geweiht, darum zweifelt nicht an der Macht Beliars, sondern findet und t�tel all diejenigen, die sich gegen den wahren Glauben Beliars wenden.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLines	( nDocID,  1, "Das B�se annehmen"					);
					Doc_PrintLine	( nDocID,  1, "-----------------"					);
					Doc_PrintLine	( nDocID,  1, ""					);
				
					
					Doc_PrintLines	( nDocID,  1, "Niemand nimmt das Haupt seines Feindes mit, um es dann im Verborgenen aufzubewaren oder Niemandem zu zeigen. Das Haupt wird auf einen Speer gespie�t, damit jeder es Sehen kann, sowohl Verb�ndeter als auch Feind. Dein Hass ist der Schl�ssel zur reinen Boshaftigkeit. Darum geh und hasse alle deine Feinde bis aufs Blut und bek�mpfe sie. Wenn du von Hass erf�llt bist und kein Heller Fleck mehr in dir ist, dann wirst du in Beliars Reich einfahren."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_2_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARKLOSTER_03_S1()		//Buchst�nder in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Das Gleichnis des B�sen in euch"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Ein Mann hatte einen Bauernhof, verpachtete ihn an andere Bauern und ging f�r einige Monate weg. Als es zur Ernte kam schickte er einen Knecht, um die Pacht einzuholen. Dieser wurde von den Bauern verpr�gelt und geschlagen. Der Bauer schickte nun einen weiteren, doch mit ihm geschah das Selbe. Nun schickte der Bauer seinen Sohn. Doch die Bauern erkannten ihre Chance und nutzten sie. Denn auf der Welt herrscht nur das Gesetz des St�rkeren.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLines	( nDocID,  1, "Beliar reinigt den Tempel"					);
					Doc_PrintLine	( nDocID,  1, "-------------------------"					);
					Doc_PrintLine	( nDocID,  1, ""					);
				
					
					Doc_PrintLines	( nDocID,  1, "Liebe Br�der und Schwestern, vergesst nicht, wie vor langer Zeit Beliar unseren Vorfahren dieses pr�chtige Kloster mitten im Meer gab, damit wir seinen einzig und wahren Glauben verbreiten k�nnen. Er f�hrte uns durch das Meer und gab uns all das, was wir zm Leben brauchten. Doch all diese Novizen wollten nicht ihre alten G�tter abschw�ren. Deshalb kamen alle durch Beliars Hand um."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_3_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARKLOSTER_04_S1()		//Buchst�nder in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Niederschrift des Schwarzmagiers Thernus"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Ich und meine Schwarzmagierbr�der hatten diese Narren davor gewarnt, dass Beliar sie holen und verdammen w�rde, wenn sie nicht ihren alten G�ttern abschworen. Es war f�rmlich ein Blutbad. So zornig war Beliar seit der Niederlage gegen Innos nicht mehr.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLines	( nDocID,  1, "Beliar t�tet 200.000 Paladine"					);
					Doc_PrintLine	( nDocID,  1, "-------------------------"					);
					Doc_PrintLine	( nDocID,  1, ""					);
				
					
					Doc_PrintLines	( nDocID,  1, "Da rief Beliar seine Diener auf das Schlachtfeld. Und sie kamen alle. Skelette, Orks, D�monen, Untote, Suchende und Schwarze Novizen. Die Paladine hatten die Streitkraft Beliars im Griff, bis pl�tzlich Beliar selbst in das Geschehen eingriff und alles Vernichtete. Es regnete Feuer und Blitze. Selbst ein Gro�teil seiner Armee wurde dahingestreckt, doch der Sieg war eindeutig."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_4_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_4_permanent = TRUE;
					};
	};
};