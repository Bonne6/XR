FUNC VOID B_ShowKrankheitText(var int pos)
{
	StPl_nDocID = Doc_Create		() ;							// DocManager
	Doc_SetPages	( StPl_nDocID,  2 );                         
	Doc_SetPage 	( StPl_nDocID,  0, "Book_Brown_L.tga", 	0 	);  
	Doc_SetPage 	( StPl_nDocID,  1, "Book_Brown_R.tga",	0	);
	Doc_SetFont 	( StPl_nDocID, -1, FONT_Book	   				); 	
	Doc_SetMargins	( StPl_nDocID,  0,  275, 20, 30, 20, 1   	);

	if (pos == 1)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... so schw�chen sie den Organismus und zehren ihn aus.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Es gibt leichte Formen, worunter die wohl jedem bekannte Erk�ltung f�llt. Sie tritt auf, wenn der K�rper unzureichend gesch�tzt kalter Witterung ausgesetzt ist."						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ihr Verlauf ist relativ sanft und gleichm��ig, Vitalit�t, K�rperkraft und die anderen F�higkeiten lassen �ber ihre Zeitdauer etwas nach. Hat der K�rper jedoch in kurzen Zeitabst�nden mehrere Erk�ltungen �berstanden, so h�rtet er sich gegen weitere ab."		);     
	}
	else if (pos == 2)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Schlimmer sind da schon Krankheiten, die durch das Zuf�gen von Wunden in Verbindung mit Schmutz und Unrat entstehen. Die Bisse von Fleisch fressenden Tieren und schmutzige, rostige Waffen k�nnen das Blut des Betroffenen vergiften.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Die Dauer der Erkrankung ist zwar etwas k�rzer und ihr Ausbruch unscheinbarer. Jedoch wird sie im weiteren Verlauf zunehmend st�rker und die Einbu�en an F�higkeiten gr��er."		);     
	}
	else if (pos == 3)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Noch ungleich boshafter sind Krankheiten, welche in verwesenden Kadavern entstehen. Der faulige Biss eines Warans oder der Kontakt mit untotem Fleisch k�nnen verheerend sein. Auch hier ist zwar der Beginn noch vergleichsweise sanft, der �bergang zu einem heftigen, langwierigen Verlauf jedoch kurz.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Selbst die Gesundheit eines vitalen, starken Menschen wird schwer leiden. �berfl�ssig zu erw�hnen, dass unbehandelt h�ufig der Tod den Betroffenen erwartet."		);     
	}
	else if (pos == 4)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Die Behandlung eines erkrankten Organismus sollte dabei ansetzen, ihn mit Speis und Trank zu kr�ftigen. Von stark alkoholischen Getr�nken sollte dabei abgesehen werden, w�hrend frisches Obst und Gem�se besonders vorteilhaft wirkt. Die Dauer, besonders der schweren Phasen, kann dadurch erheblich gesenkt werden.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Auch reichlich Schlaf kann dem K�rper beim �berwinden einer Erkrankung helfen, da er dem leidenden K�rper Erholung verschafft. Dabei sollte jedoch nicht �bersehen werden, dass auch w�hrend des Schlafes die Erkrankung fortschreitet."		);     
	}
	else if (pos == 5)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Der Betroffene kann von einer schweren Phase im Schlaf �berrascht werden und sterben, falls die Behandlung nicht mit Mitteln von Au�en unterst�tzt wurde.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Zu den probatesten unter diesen geh�ren Pflanzen mit heilender Wirkung und die die daraus gebrauten Tr�nke, welche jeder kundige Alchemist feilbietet."		);     
	}
	else if (pos == 6)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "�bersteht ein Mensch mehrere durch Kreaturen �bertragene Erkrankungen, so erlangt er zunehmende Resistenz. Der K�rper erlernt die spezielle Erkrankung besser zu bek�mpfen und somit ihre Folgen zu mindern.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Die Wahrscheinlichkeit, die selbe Krankheit erneut zu bekommen, sinkt. Da der K�rper au�erdem auf den Umgang mit Krankheiten trainiert wird, kann er schneller reagieren. Die Dauer aller Erkrankungen sinkt."		);     
	};

	Doc_Show		( StPl_nDocID );
};