FUNC VOID B_ShowGiftText(var int pos)
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
			Doc_PrintLines	( StPl_nDocID,  0, "... in den K�rper gelangen und ihre sch�dliche Wirkung entfalten. Die Gesundheit erleidet dabei �ber eine gewisse Zeitdauer konstanten Schaden, bis das Gift vom Organismus neutralisiert oder ausgeschieden wurde.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Die Gifte unterteilen sich in verschiedene Gruppen. Gew�chse kennzeichnen eine davon. Ob giftige Pilze oder Pflanzen wirken sie beim Verzehr mit einer gewissen Verz�gerung, da sie erst allm�hlich aufgenommen werden."		);     
	}
	else if (pos == 2)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Gelangen sie jedoch direkt in den Blutkreislauf, ist ihre Wirkung unmittelbar. Sie wirken ungleich st�rker, daf�r jedoch auch k�rzer. Es wird berichtet, dass einige Menschen und andere vernunftbegabte Wesen ihre Waffen bewusst damit benetzen, um Widersacher im Kampf zu vergiften.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "�bersteht ein Mensch jedoch mehrere Vergiftungen, so erlangt er zunehmende Resistenz. Der K�rper erlernt das spezielle Gift schneller abzubauen, bis er nach zahlreichen Vergiftungen v�llig immun wird. Zudem reduziert sich die sch�dliche Wirkung auch anderer Gew�chsgifte, da sie �hnlich zusammengesetzt sind."		);     
	}
	else if (pos == 3)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Eine andere Gruppe von Giften entstammt dem Tierreich. Meist durch Insekten �bertragen, gelangen sie durch Stacheln und Zangen des Getiers sofort in den Blutkreislauf. Die Wirkung ist meist k�rzer, daf�r etwas intensiver, als bei Gew�chsgiften. Auf den Klingen von Waffen finden sich Tiergifte ungleich seltener, da die Beschaffung aufw�ndiger ist.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Auch hier k�nnen sich mit steigender Anzahl von Vergiftungen wachsende Resistenzen zeigen. �hnlich, wie bei den Pflanzengiften, nimmt die Wirkungsdauer bei einem bestimmten Tiergift bis zur v�lligen Immunit�t ab. Gleichzeitig l�sst der sch�dliche Effekt aller Tiergifte nach, da sie auf �hnliche Mechanismen beruhen und der Organismus ihrer Wirkung besser entgegenzuwirken lernt."		);     
	}
	else if (pos == 4)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Als letzte wichtige Gruppe zu nennen sind giftige D�mpfe. Ihr Effekt ist �u�ert unmittelbar und heftig, wenn auch meist nur auf wenige Sekunden beschr�nkt. Zwar kann auch hier der K�rper mit der Zeit Resistenzen erlangen, jedoch haben die D�mpfe zus�tzlich eine �tzende Wirkung und rauben dem Betroffenen die Luft zum atmen, sodass man nie v�llig schadlos davonkommt.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ganz gleich jedoch, welcher Form von Giften der K�rper ausgesetzt war, steigt die Erfahrung darum, die Chance Vergiftungen jeder Art zu entgehen."		);     
	}
	else if (pos == 5)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Ist jedoch einmal eine Vergiftung eingetreten, ist es mit einer simplen Heilpflanze nicht getan, da das Gift im K�rper verbleibt.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Von einer Pflanze namens Heilknospe wird jedoch berichtet, dass sie den Effekt jeder Vergiftung schlagartig aufzuheben vermag."		);     
	}
	else if (pos == 6)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Auch kundige Alchemisten sind in der Lage Gegengifte herzustellen, welche bestehende Vergiftungen nicht nur aufheben, sondern auch noch eine kurze Zeit nachwirken und Schutz vor weiteren Vergiftungen bieten.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Stehen jedoch diese Mittel nicht zur Verf�gung, so kann zumindest die Zufuhr von reichlich Fl�ssigkeit dabei helfen, das Gift schneller aus dem K�rper zu sp�len ..."		);     
	};

	Doc_Show		( StPl_nDocID );
};