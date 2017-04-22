FUNC VOID B_ShowBackground_Story(var int pos)
{
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_9, pos);
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_10, pos);

	StPl_nDocID = Doc_Create		() ;							// DocManager
	Doc_SetPages	( StPl_nDocID,  2 );                         
	Doc_SetPage 	( StPl_nDocID,  0, "Book_MayaRead_L.tga", 	0 	);  
	Doc_SetPage 	( StPl_nDocID,  1, "Book_MayaRead_R.tga",	0	);
	Doc_SetFont 	( StPl_nDocID, -1, FONT_Book	   				); 	
	Doc_SetMargins	( StPl_nDocID,  0,  275, 20, 30, 20, 1   	);

	if (pos == 1)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... es herrschte Weisheit und Vernunft. Und Radanos sah herab und ihm gefiel, was geschah.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Frei von Sorge und Kummer verrichteten alle Bewohner ihr Tagewerk, ein jeder, wie es ihm die Funktion seiner Kaste vorsah. Denn alle waren gesegnet mit einem Teil seiner g�ttlichen Macht und seiner Liebe. Und mit der Macht konnten die Menschen die Welt frei nach ihrem Willen gestalten. So hatten alle Menschen Teil an der g�ttlichen Sch�pferkraft und waren gleich."		);     
	}
	else if (pos == 2)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Doch in der Kaste der Priester ward ein Mann, dessen Herz von Machtgier und Missgunst zerfressen war. Er vermochte nicht zu ertragen, dass ein jeder auf gleiche Weise durch den einen Gott gesegnet war. Sein Name war Xeres. Und er ersann einen Plan, der Harmonie und Gleichheit je beenden sollte.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Er schmiedete Intrigen und er gab vor, die niedreren Kasten wollen ihren Teil der g�ttlichen Macht nutzen, die anderen zu st�rzen. Und es gelang ihm zahlreiche Priester, wie Gelehrte f�r seinen Plan zu gewinnen und das Herz vieler zu verderben. Und so beschlossen sie, den anderen einen Teil ihrer Macht zu nehmen, auf dass auch ihre gro�e Zahl keine Gefahr mehr f�r sie bedeutete. Doch nur wenige unter ihnen wussten, welche Pl�ne er wirklich verfolgte."		);     
	}
	else if (pos == 3)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "So hielten sie ein Ritual ab, den Angeh�rigen der anderen Kasten einen Teil ihrer Macht zu rauben. Und jene, die mit Xeres konspirierten vereinigten ihren Teil der Macht, das Ritual zu vollziehen.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Doch wurden sie alle get�uscht und Xeres entzog ihnen Macht und Leben und verleibte es sich selbst ein. Nur seine engsten Verb�ndeten blieben verschont und vollzogen mit dem Blute der Betrogenen ihren finsteren Plan. Und das Blut vieler sollte noch ihrer Machtgier anheim fallen."		);     
	}
	else if (pos == 4)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Das Ritual ward fortgesetzt, die Verbundenheit der Menschen mit den M�chten des einen Gottes gegen ihn zu nutzen. Und so wie die Leiber der Dahingeschlachteten ward auch Radanos geteilt, Wille und Macht voneinander gel�st und in tausend St�cke zersprengt. Und der Himmel verfinsterte sich und die Erde bebte.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Die Menschen sp�rten, dass ihr Gott nicht mehr war und der Schock �ber den unfassbaren Verlust l�hmte alles Leben. Die Erbauer erfuhren alsbald jedoch von dem schrecklichen Frevel, welchen Xeres verschuldet hatte. Und nachdem die Paralyse des ersten Augenblickes gewichen war, erhob sich unaussprechlicher Zorn in allen Kasten."		);     
	}
	else if (pos == 5)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Die Menschen griffen zu Schwert und Magie um den blasphemischen Xeres zu stellen und zu richten. Doch vermochte niemand ihm und seinen Getreuen etwas entgegenzusetzen ... zu gro� war ihre Macht, un�berwindbar die magischen Schutzmechanismen.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Die Menschen mussten allm�hlich erkennen, dass ihr Aufbegehren vergebens war. Und nachdem der flammende Zorn �ber den Verlust ihres Gottes der Verzweiflung vollends gewichen war, erlosch augenblicklich jeder Kampfeswille. Und Xeres verheerte das Land mit Tyrannei und ein schreckliches Morden begann."		);     
	}
	else if (pos == 6)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Alles, was Xeres als Gefahr f�r seine Macht ansah wurde dem Erboden gleichgemacht. Tempel und Orte, welche den Menschen als unantastbar und heilig galten, wurden gesch�ndet, verbrannt und zu Staub zermahlen. Und viele Bewohner erkannten, dass sie Xeres grausamen Treiben machtlos gegen�berstanden und suchten ihre Rettung in der Flucht. Doch es gab auch jene, welche sich dem G�tzen unterwarfen und ihm Gefolgschaft schworen.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Und das, was einst eine bl�hende Kultur gewesen war, begann zu erl�schen durch Machtgier, Verblendung und Barbarei ..."		);     
	}
	else if (pos == 7)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Und Xeres entsann ein weiteres Vorhaben seine Macht und Existenz auf Erden f�r alle Zeiten zu festigen. Zu diesem Zweck erschuf er Machttr�ger, f�nf an der Zahl, und speiste sie mit den freien M�chten des gest�rzten Gottes.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Und es erschien jener Mann unbekannter Herkunft, der das heilige Schwert ergriff. Dieses war dem einen Gott geweiht� und ein Teil der urspr�nglichen Macht ruhte noch immer in ihm. Und jener nahm das Schwert und richtete es gegen die Tyrannei� und er erschlug Xeres samt seiner Gesch�pfe."		);     
	}
	else if (pos == 8)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Die Kokosnuss ist eine Frucht, die von besonderem Interesse f�r die magischen K�nste ist. Der Genuss von Milch und Fleisch allein schon regeneriert und steigert die magische Bef�higung.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Mischt man jedoch an einem Alchemietisch das Extrakt eines Feldkn�terichs bei und erw�rmt langsam und stetig, so erh�lt man einen Sud, der ungleich wirkungsvoller ist ..."		);     
	}
	else if (pos == 9)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... gleichwohl regte sich in den Sph�ren des Himmlischen neue Sch�pfung. Die Bruchst�cke der Macht und des Willens, welche dem einen Gott entstammten, f�gten sich wieder zusammen ... jedoch zu drei Teilen mit eigenem Willen und eigener Macht. Und es entstanden die neuen Himmlischen und sie nahmen die Herrschaft �ber das Erdenrund auf ...");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "... Und es ward ein neues Zeitalter begonnen ..."		);     
	}
	else if (pos == 10)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... das Zeitalter der drei neuen Gottheiten: Innos, Adanos und Beliar.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Der erste unter ihnen war Innos. Er sah herab auf die Erde und musste erkennen, dass nur wenige Menschen sie noch bewohnten. Die vorangegangenen Ereignisse hatten allzu vielen das Leben gekostet. Und so beschloss er, neue Menschen zu erschaffen und setze sie auf verschiedene Teile der Welt."		);     
	}
	else if (pos == 11)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Als n�chstes betrat Beliar das Land. Er sah, dass Innos Gesch�pfe  - die Menschen - die Erde allein bewohnten und beherrschten. Auch er wollte sein Wirken in der Sch�pfung verewigt sehen und so entstand das Tier durch seinen Willen.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Zuletzt trat Adanos in Erscheinung. Er teilte das meiste an Pers�nlichkeit und Gesinnung mit dem Urvater Radanos. Und er blickte herab auf die Erde und ihm gefiel, was geschah."		);     
	}
	else if (pos == 12)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Und erneut begann eine kurze Zeit des Friedens und der Bl�te. Die �berlebenden Erbauer, zerstreut an vielen Flecken der Erde, begannen allm�hlich zu ihrem gewohnten Alltag zur�ckzukehren, wie sie ihn vor den Schreckensereignissen gekannt hatten.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Und als die Tage, Wochen und Monate vergingen, schienen all die f�rchterlichen Geschehnisse um Xeres - Gewalt, Zwietracht und Ungleichheit - der Vergangenheit anzugeh�ren. Und die Menschen priesen und huldigten die neuen Gottheiten als S�hne ihres Urvaters und als drei gleiche Br�der."		);     
	}
	else if (pos == 13)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Doch so einheitlich der Ursprung der 3 G�tter zu sein schien, als so unterschiedlich erwiesen sie sich mit der Zeit und ihr Vorstellungen darum, wie die Sch�pfung zu formen sei. Und als kein Konsens mehr m�glich schien, beanspruchte jeder einen anderen Teil der Sch�pfung f�r sich. Beliar verschrieb sich der Finsternis und dem Chaos, Innos dem Feuer und der Ordnung. Adanos, der das meiste mit dem Urvater an Pers�nlichkeit und Gesinnung teilte, blieb zun�chst unentschlossen ...");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Und die Menschen wollten einem jeden der G�tter, die Verehrung angedeihen lassen, die ihm Zustand. Doch hie� die Verehrung des Feuers, gleichzeitig die Finsternis zu schm�hen und umgekehrt. Und es entstanden Konflikte unter den Menschen, welche der Gottheiten denn die gr��te Verehrung zukommen sollte."		);     
	}
	else if (pos == 14)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Und der Ingrimm der beiden Gottheiten Innos und Beliar gegeneinander wuchs und gedieh zum offenen Konflikt. Und Innos und Beliar fochten miteinander und der Himmel verfinsterte sich ... und die Erde bebte ...");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Die Erde bebte, der Himmel verfinsterte sich. Zwischen Innos und Beliar tobte ein erbitterter Kampf der das Erdenrund verheerte. Und auch die Anh�nger beider Gottheiten fochten miteinander. Sie richteten ihren Teil der g�ttlichen Macht gegen die Umgebung und bedrohten damit die gesamte Sch�pfung."		);     
	}
	else if (pos == 15)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Da betrat Adanos den Schauplatz des Geschehens und er stellte sich zwischen seine Br�der, um ihren Streit zu schlichten. Und mit Einsatz seiner Weisheit und der g�ttlichen Macht gelang es ihm, den offenen Zwist seiner Br�der zu beenden. Und er sah herab, was auf der Erde geschah, wo erbitterter Krieg herrschte.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Erneut war die Sch�pfung durch die H�nde der Menschen bedroht, welche die g�ttliche Macht als Werkzeug der Zerst�rung missbrauchten. Und er beschloss den Menschen einen Teil ihrer Macht zu nehmen. Nur Auserw�hlten, den Priestern der G�tter, war es von nun an m�glich die g�ttliche Kraft zu beeinflussen."		);     
	}
	else if (pos == 16)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Und er sah herab, was auf der Erde geschah, wo erbitterter Krieg herrschte. Erneut war die Sch�pfung durch die H�nde der Menschen bedroht, welche die g�ttliche Macht als Werkzeug der Zerst�rung missbrauchten. Und so wie sein g�ttlicher Zorn sich erhob, so stiegen auch die Meere, Seen und Fl�sse empor und rissen alles mit sich.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Menschen, Tiere k�mpften um ihr �berleben und viele ertranken in den Fluten. Als das Wasser sich wieder legte, herrschte Stile auf dem Land. Erst allm�hlich begannen sich die �berlebenden wieder zu sammeln, um aufzubauen, was hinfort gesp�lt worden war."		);     
	}
	else if (pos == 17)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Adanos indes beschloss den Menschen einen Teil ihrer Macht zu nehmen. Nur Auserw�hlten, den Priestern der G�tter, sollte es von nun an m�glich sein die g�ttliche Kraft zu beeinflussen.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Und Adanos entschied von nun an nach der Erhaltung des Gleichgewichtes zu streben. Er hatte erkannt, dass die Positionen seiner Br�der unvereinbar waren und dass niemals der Einfluss eines der beiden � Innos, oder Beliar � �berwiegen d�rfte. Weder das v�llige Chaos, noch die absolute Ordnung k�nnten die Sch�pfung gedeihen lassen. Und das wandelbare Wasser sollte zu seinem Element werden ..."		);     
	}
	else if (pos == 18)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... so f�hrte Xeres seine Priester zusammen, die Zeremonie zu beginnen und die Tr�ger der Macht zu erschaffen. 5 an der Zahl, ausgestattet mit einem Teil der freigewordenen M�chte Radanos� ... jedoch an Xeres Existenz gebunden. (verwittert)");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Doch eines der Rituale schlug fehl und brachte ein Wesen hervor, das nicht wie die anderen war. Denn nicht die freigewordene Macht des vernichteten Gottes wurde ihm zu Teil ... es ward sein Wille ... (verwittert) ... und Xeres Diener schworen, seinen Namen f�r alle Zeiten aus den Schriften zu tilgen."		);     
	};

	Doc_Show		( StPl_nDocID );
};