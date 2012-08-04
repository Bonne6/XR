// ***************
// B_Announce_Herold 
// ***************

func void B_Announce_Herold ()
{
	var int randy;

	var int rnd;

	if ( C_BodystateContains(self, BS_SIT) )
	{
		AI_StandUp		(self);
		B_TurnToNpc		(self,	hero);
	};
	
	// ------ NSC steckt ggf. Waffe weg ------
	AI_RemoveWeapon (self);
	
	CreateInvItem		(self,	Fakescroll);
	AI_UseItemToState	(self,	Fakescroll,	1);
	AI_UseItemToState	(self,	Fakescroll,	-1);

	AI_Output (self,self,"Info_Mod_Herold_Announce_04_00"); //Hergeh�rt, hergeh�rt!
	
	if (Npc_KnowsInfo(hero, Info_Mod_Herold_Flugblaetter))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_01"); //Ihr habt Hunger und nicht viel Gold? Dann geht zu Matteo im H�ndlerviertel, dort bekommt ihr alle Lebensmittel zu einem guten Preis.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_02"); //F�r kurze Zeit gibt es sogar K�se im Angebot, also schlagt schnell zu.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_03"); //Oder spannt etwas an seinem Freibierstand aus. Manchmal kann die Arbeit auch warten.

		AI_GotoWp	(self, "WP_HEROLD_BIERHOLEN");

		CreateInvItems	(self, ItFo_Beer, 1);

		B_UseItem	(self, ItFo_Beer);

		AI_GotoWP	(self, self.wp);

		AI_AlignToWP	(self);
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Herold_Verbrecher))
	&& (Mod_PAL_HeroBot == 3)
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_04"); //Letzte Nacht wurden vier Milizen im Schlaf von einem Irren in einem bunten Kost�m mit Schachkragen ermordet.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_05"); //Nehmt euch vor diesem Verbrecher in acht.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Moe_Geruechte3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Valentino_Kidnapped))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_06"); //Doch nicht nur au�erhalb von Khorinis hat sich Schreckliches ereignet: Ein hochrangiger B�rger Khorinis' wurde entf�hrt!
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_07"); //Der nicht immer ehrbare, aber einflussreiche und verm�gende Valentino ist nach einem n�chtlichen Treffen nicht nach Hause zur�ckgekehrt.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_08"); //Nachdem sein Verschwinden zun�chst unentdeckt blieb, da der junge Mann durchaus f�r seine Eskapaden bekannt war, haben sich nun die Entf�hrer in einem merkw�rdigen Brief an die B�rger der Stadt gewendet.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_09"); //Statt einer Geldsumme fordern sie im Austausch einen der Str�flinge aus dem Minental.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_10"); //Aus welchem Grund diese Forderung entstanden ist, liegt zu diesem Zeitpunkt noch im Dunkeln.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_11"); //M�ge die Angelegenheit ohne Blutvergie�en Unschuldiger vonstatten gehen.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest3))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest4))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_12"); //Die Qualit�t der Waren der H�ndler nimmt immer weiter ab.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_13"); //Den k�rzlich durchgef�hrten Warentest, der von Matteo finanziert wurde, bestand nur er selbst mit Auszeichnung.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_14"); //Alle anderen H�ndler hatten vor allem Defizite beim Obst.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_15"); //Befragt, wie er das Ergebnis interpretiere, sagte Matteo:
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_16"); //"Das gibt es nichts zu interpretieren. Wer faule �pfel verkauft, darf nicht weiter unterst�tzt werden.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_17"); //Ich dagegen habe jahrelang in Qualit�t investiert. Das konnten die Pr�fer eindrucksvoll belegen."
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_18"); //F�r die letzten Tage vermeldet Matteo einen neuen Umsatzrekord.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hagen_Asylanten2))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_19"); //Lord Hagen steht wegen seiner Str�flingspolitik zunehmend in der Kritik.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_20"); //Ein Paladin, der seinen Namen nicht ver�ffentlicht wissen m�chte, vertraute einem kleinen Kreis an, dass der Stadtverwalter einen ehemaligen Kuppelinsassen ausgesandt hat, um sich von den Entwicklungen im Minental berichten zu lassen.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_21"); //Lord Hagen stand jedoch f�r eine Stellungnahme bisher nicht zur Verf�gung.
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_AufgebrachteBuergerin_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Moe_Anschlaege))
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_22"); //Canthars Sohn Allievo ist Opfer eines unverst�ndlichen Mordanschlags geworden.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_23"); //Ein ehemaliger H�ftling, der es in Khorinis in k�rzester Zeit zu zweifelhaftem Ansehen gebracht hat, soll ihn aufgesucht und umgebracht haben.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_24"); //Es wird allen B�rgern empfohlen, diesem Kriminellen aus dem Weg zu gehen, bis sich der Fall gekl�rt hat.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_25"); //Um den H�ftling f�r alle sichtbar anzuprangern, hat Canthar in ganz Khorinis Flugbl�tter mit seinem Konterfei verteilt.
	}
	else if (Mod_Herold_Kompass == 0)
	&& (Kapitel == 2)
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_26"); //Der goldene Kompass der Esmeralda wurde gestohlen. Der Dieb konnte scheinbar nachts unerkannt durch das Osttor entkommen.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_27"); //Demjenigen, der den Dieb stellt und ihm den Kompass entrei�t, ist geboten, das wertvolle St�ck unverz�glich zu Lord Andre bringen.

		if (Npc_GetDistToNpc(hero, self) < 1000)
		{
			Mod_Herold_Kompass = 1;

			Log_CreateTopic	(TOPIC_MOD_HEROLD_KOMPASS, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_HEROLD_KOMPASS, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_HEROLD_KOMPASS, "Der goldene Kompass der Esmeralda wurde gestohlen und der Dieb ist aus dem Osttor gefl�chtet. Wenn ich ihn finde, dann soll ich den Kompass zu Lord Andre bringen.");

			Wld_InsertNpc	(Mod_7744_OUT_Dieb_NW, "TAVERNE");

			rnd = Hlp_Random(5);

			if (rnd == 0)
			{
				B_KillNpc	(Mod_7744_OUT_Dieb_NW);
			}
			else if (rnd == 1)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "BRUECKE");
			}
			else if (rnd == 2)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "ORLAN");
				B_KillNpc	(Mod_7744_OUT_Dieb_NW);

				Wld_InsertNpc	(Gobbo_Skeleton, "NW_FARM2_TAVERNCAVE1_02");
				Wld_InsertNpc	(Gobbo_Skeleton, "NW_FARM2_TAVERNCAVE1_02");
			}
			else if (rnd == 3)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "SEE");
			}
			else if (rnd == 4)
			{
				B_StartOtherRoutine	(Mod_7744_OUT_Dieb_NW, "SUMPF");
				B_KillNpc	(Mod_7744_OUT_Dieb_NW);
			};
		};
	}
	else if (Mod_Herold_Siegelring == 0)
	&& (Kapitel == 4)
	{
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_28"); //Im oberen Viertel hat sich ein brutaler �berfall auf einen hohen W�rdentr�ger der Stadt ereignet.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_29"); //Neben viel Gold und Silber wurde auch ein kostbarer Siegelring geraubt.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_30"); //Die beiden T�ter konnten �ber die Stadtmauer entkommen, ehe noch die Stadtwachen vor Ort waren.
		AI_Output (self,self,"Info_Mod_Herold_Announce_04_31"); //Derjenige, der den T�ter stellt und den Siegelring zu Lord Hagen bringt, darf mit einer angemessenen Belohnung rechnen.

		if (Npc_GetDistToNpc(hero, self) < 1000)
		{
			Mod_Herold_Siegelring = 1;

			Log_CreateTopic	(TOPIC_MOD_HEROLD_SIEGELRING, LOG_MISSION);
			B_SetTopicStatus	(TOPIC_MOD_HEROLD_SIEGELRING, LOG_RUNNING);
			B_LogEntry	(TOPIC_MOD_HEROLD_SIEGELRING, "Im oberen Viertel gab es einen �berfall, bei dem ein kostbarer Siegelring neben anderen Wertgegenst�nden gestohlen wurde. Wenn ich den Ring finde, kann ich mir bei Lord Hagen eine Belohnung abholen.");

			Wld_InsertNpc	(Mod_7745_BDT_Landstreicher_NW, "TAVERNE");

			rnd = Hlp_Random(4);

			if (rnd == 0)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "BRUECKE");
			}
			else if (rnd == 1)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "WEIDENPLATEAU");
			}
			else if (rnd == 2)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "EROL");
			}
			else if (rnd == 3)
			{
				B_StartOtherRoutine	(Mod_7745_BDT_Landstreicher_NW, "BRUECKE");
			};
		};
	}
	else if (Kapitel < 2)
	{
		rnd = Hlp_Random(5);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_32"); //Abuyin hat die Vermutung ge�u�ert, dass der letztens am Nachthimmel stehende erschreckliche Kometenstern (wir berichteten) ein Vorzeichen f�r das Kentern der Minna vor dem Hafen gewesen sein k�nnte.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_33"); //Die wahre unheilvolle Bedeutung dieses Wunderzeichens k�nne jedoch nur Innos wissen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_34"); //Es kann jedoch sicher nicht schaden, die Gebete zu Innos zu intensivieren.
		}
		else if (rnd == 1)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_35"); //Die Bauern und einige H�ndler berichten au�erdem von merkw�rdigen Zwischenf�llen vor den Toren der Stadt.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_36"); //Dort sei es in letzter Zeit h�ufiger zu Zusammentreffen mit einer verh�llten Gestalt gekommen, nach denen sich betreffende Personen unwohl gef�hlt und �ber Atemnot und �belkeit geklagt h�tten.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_37"); //Es wird deshalb geraten, sich nicht allein au�erhalb der Stadtmauern zu bewegen, oder zumindest jeden zu meiden, der sich dort herumtreibt, bis die Stadtwache N�heres herausgefunden hat.
		}
		else if (rnd == 2)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_38"); //Berichten zufolge ist vor einigen Monaten in Myrtana ein Fischkind geboren worden, dessen Oberk�rper menschlich ist und Unterk�rper die Form eines Fischschwanzes hat.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_39"); //Leider hat Innos das Kind kurz nach der Geburt zu sich genommen, sodass wir nicht hoffen k�nnen zu erfahren, was es mit seiner Geburt auf sich hat.
		}
		else if (rnd == 3)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_40"); //Nach dem Fall der Barriere treffen nun die ersten H�ftlinge in Khorinis ein. Lord Hagen l�sst verlauten, dass sie bis auf Weiteres nicht benachteiligt werden sollen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_41"); //Wer sich an ihnen vergreift, wird wie f�r jedes andere Verbrechen bestraft werden.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_42"); //Da sich der Zustrom in den n�chsten Wochen sicher vergr��ern wird, werden alle, die nicht dringend auf Herberge angewiesen sind, gebeten, ihren Platz dort zu r�umen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_43"); //Nach einer L�sung der Unterkunftsfrage kann selbstverst�ndlich dort wieder Quartier bezogen werden.
		}
		else
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_44"); //Die Wassermagier kommen einer gro�en Entdeckung immer n�her.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_45"); //Nachdem der unterirdische Tempel nun vollst�ndig erschlossen ist und ein mysteri�ses Portal gefunden wurde, ist es nur noch eine Frage der Zeit, bis sie hinter das Geheimnis der Anlage kommen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_46"); //Unterdessen hat sich Serpentes emp�rt �ber diesen Alleingang der Wassermagier gezeigt.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_47"); //Das Kloster h�tte die Ausgrabung gern mit allen erdenklichen Mitteln unterst�tzt.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_48"); //Noch viel best�rzter d�rfte er dar�ber sein, dass der D�monenbeschw�rer Xardas wieder im Lande ist.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_49"); //Fr�her ein Mitglied der Feuermagier, musste er den Orden nach diversen Querelen verlassen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_50"); //Es wird ihm eine Verbindung zu den Schwarzmagiern nachgesagt, deren Zahl so hoch wie schon lange nicht mehr sein soll.
		};
	}
	else if (Kapitel < 4)
	{
		rnd = Hlp_Random(2);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_51"); //Die Neuigkeit des Tages: Die Wassermagier haben einen Weg durch das Portal gefunden. Wurde damit die B�chse der Pandora ge�ffnet?
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_52"); //Seitdem n�mlich die Anh�nger Adanos' durch entschwunden sind, gibt es kein Lebenszeichen mehr von ihnen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_53"); //Stattdessen gibt es beunruhigende Berichte aus dem Minental, in denen es hei�t, eine uralte Kreatur sei wiederauferstanden.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_54"); //Allerdings ist dies kein Grund zur Panik, lie� Lord Andre verlauten. Im Falle einer Invasion durch Beliars Brut sei die Stadtwache bestens ger�stet.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_55"); //Serpentes zeigte sich indes besorgt wegen der spurlos verschwundenen Wassermagier. Er sagte w�rtlich:
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_56"); //"Nat�rlich w�re der Tod aller Wassermagier ein schwerer Verlust f�r uns alle. Ich werde sie in meine Gebete einschlie�en.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_57"); //Dieses Ungl�ck sollte allen Rechtgl�ubigen nur wieder zeigen, dass ungez�gelter Forscherdrang und Wissensdurst immer in einer Katastrophe enden."
		}
		else
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_58"); //Es wird gemunkelt, dass die Paladine die Einf�hrung einer neuen Steuer erw�gen, um ihre Ausr�stung auf dem neuesten Stand halten zu k�nnen. Die Steuer soll vor allem Besserverdiener hart treffen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_59"); //Den genauen Wortlaut kennt allerdings bisher niemand. Trotzdem hat Matteo bereits ein Protestschreiben verfasst, in dem er auf die "fatalen Folgen f�r das Wirtschaftssystem" durch eine weitere Steuer hinweist.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_60"); //Sollten sich zu diesem Thema Neuigkeiten ergeben, werden sie unverz�glich bekannt gegeben.
		};		
	}
	else if (Kapitel == 4)
	{
		rnd = Hlp_Random(3);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_61"); //Es gibt Schreckliches zu berichten. Die Vorzeichen der letzten Zeit waren eine Warnung.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_62"); //Au�erhalb der Stadt hat der Wahnsinn um sich gegriffen und aus ehrbaren M�nnern sabbernde Irre gemacht.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_63"); //Ein Lichtblick bleibt einzig, dass unsere sch�ne Stadt bisher von dieser Krankheit verschont geblieben ist. Selbst in Zeiten der Not h�lt Innos seine sch�tzende Hand �ber uns.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_64"); //Dass seine Macht nicht grenzenlos ist und er unsere Unterst�tzung braucht, zeigt sich in diesen Tagen im Alten Lager des Minentals, das zum Schauplatz kriegerischer Handlungen zwischen Menschen und Orks geworden ist.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_65"); //Nach harten K�mpfen mussten sich die Bewohner des Alten Lagers den Angreifern geschlagen geben.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_66"); //Auch wenn sie in der Vergangenheit viel ges�ndigt haben, ist diese Niederlage gegen Beliars Schergen ein schlimmes Ereignis.
		}
		else if (rnd == 1)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_67"); //Nachdem Tengron als Erster zugegeben hat, dass �ber die Einf�hrung einer neuen Steuer nachgedacht worden ist, haben sich zahlreiche B�rger mit Unmuts�u�erungen Luft verschafft.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_68"); //Sie beklagen unter anderem die schlechte Kommunikation mit den Paladinen, die freiwillig nichts preisgegeben h�tten und sie nun vor vollendete Tatsachen stellen wollten.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_69"); //Auf eine Reaktion der Paladine auf diese Anschuldigungen wird weiterhin gewartet.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_70"); //Matteo k�ndigte bereits an, notfalls nicht nur mit Worten, sondern auch mit Taten die Durchsetzung dieser Steuer verhindern zu wollen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_71"); //Diese neuesten Entwicklungen haben nicht zur Popularit�t der Paladine beigetragen.
		}
		else
		{
			if (Mod_LehrlingBei == 1)
			&& (Npc_KnowsInfo(hero, Info_Mod_Constantino_LehrlingQuest9))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_72"); //Es ist gekommen, wie es kommen musste: Constantino ist nun endg�ltig unter die Verr�ckten gegangen.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_73"); //Es wird gemunkelt, er habe versucht, den Stein der Weisen herzustellen.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_74"); //Dieser Vorfall zeigt nur wieder, dass Innos S�nden nicht unbestraft l�sst.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_75"); //Es wird sich zeigen, ob sich jemand bereit erkl�rt, Constantino in seiner umnachteten Verfassung zu betreuen.
			}
			else if (Mod_LehrlingBei == 2)
			&& (Npc_KnowsInfo(hero, Info_Mod_Gritta_ThorbenLehrling))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_76"); //Ganz Khorinis zeigt sich schwer betroffen von der Krankheit des allseits gesch�tzten Meisters Thorben.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_77"); //Nachdem er schon den ganzen Tag �ber Schmerzen geklagt und versucht hatte, diese im Alkohol zu ertr�nken, kippte er gegen Abend wortlos um und ist derzeitig immer noch nicht wieder bei Besinnung.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_78"); //Es ist der g�ttlichen Vorhersehung zu verdanken, dass er einen flei�igen Lehrling zur Seite stehen hat, der seinen Ausfall kompensieren k�nnte, sollte Thorben nicht wieder zu alter Form finden.
			}
			else if (Mod_LehrlingBei == 4)
			&& ((Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest12))
			|| (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest13)))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_79"); //Bosper scheint derzeit eine schwierige Phase durchzumachen.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_80"); //Mehrere seiner Kunden und Lieferanten berichteten, dass er sie unter w�sten Beschimpfungen aus seinem Laden vertrieben habe, obwohl sie ihn nur begr��t h�tten.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_81"); //Ihm ist zu w�nschen, dass er sich bald wieder f�ngt.
			}
			else if (Mod_LehrlingBei == 5)
			&& (Npc_KnowsInfo(hero, Info_Mod_Olav_HaradLehrling))
			{
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_82"); //Der bisher nie auff�llig gewordene Harad ist nun f�r eine geheime Kooperation mit den S�ldnern hinter Gitter gekommen.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_83"); //Die Paladine lie�en verlauten, man habe schon l�nger davon gewusst, ihn aber erst durch gutes Zureden von seinem Handeln abbringen wollen.
				AI_Output (self,self,"Info_Mod_Herold_Announce_04_84"); //Nachdem dies nicht gefruchtet hat, wird er seine Zeit nun im Gef�ngnis verbringen, bis er seine Schuld eingesehen hat.
			};
		};		
	}
	else	//Kapitel 5
	{
		rnd = Hlp_Random(2);

		if (rnd == 0)
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_85"); //Ist Khorinis nun schutzlos allem �bel ausgeliefert?
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_86"); //Die drei m�chtigsten Magier und Oberh�upter der Gilden haben Khorinis verlassen, um unser aller Wohlergehen in die H�nde eines Ungenannten zu legen.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_87"); //Auf einer weit entfernten Insel wollen sie daf�r ein geheimes Ritual durchf�hren.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_88"); //Lasst uns hoffen, dass diese klugen K�pfe wissen, was sie tun. Ansonsten k�nnte dies unser Ende sein!
		}
		else
		{
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_89"); //Als ob das noch nicht genug w�re, steht auch der Streit um die Reichensteuer kurz vor einer Eskalation.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_90"); //Da die Paladine eine Revision ihrer Gesetzes�nderunge ablehnen, kam es zu einer spontanen Demonstration, die jedoch von der Stadtwache zerschlagen wurde.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_91"); //Bei Ausschreitungen am Rande der Demonstration wurden zwei Wachen durch Flaschen- und Steinw�rfe leicht verletzt, mehrere Demonstranten wurden festgenommen und mit einer Geldstrafe belegt.
			AI_Output (self,self,"Info_Mod_Herold_Announce_04_92"); //Die Feundseligkeiten den Paladinen gegen�ber haben sich weiter zugespitzt, und niemand wei�, wie lange der tr�gerische Frieden noch halten wird...
		};
	};
};