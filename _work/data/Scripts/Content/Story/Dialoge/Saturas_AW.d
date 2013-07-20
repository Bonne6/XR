INSTANCE Info_Mod_Saturas_AW_Hi (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Hi_Condition;
	information	= Info_Mod_Saturas_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Saturas_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_00"); //Alles in Ordnung mit dir? Wie bist du in diesen Tempel gekommen?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_01"); //Was ist passiert?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_02"); //Das w�rde mich auch interessieren.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_03"); //Wir sind dir durch das Portal gefolgt und vor diesem Tempel aufgetaucht.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_04"); //Von dir keine Spur.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_05"); //Wir suchen also die Umgebung ab, fangen an uns einzurichten, als sich pl�tzlich das Tor des Tempels �ffnet, du herauswankst und ohnm�chtig wirst.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_06"); //Danach haben wir den Tempel erforscht und etwas Interessantes gefunden.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_07"); //Aber jetzt bist erst du dran mit Erz�hlen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_08"); //Es kommt mir vor wie ein Traum.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_09"); //Ich wurde von einem Gnom abgefangen, der mich zu seinem Meister bringen wollte.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_10"); //Welchem Meister?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_11"); //Ich wei� kaum etwas �ber ihn, nur dass er es auf mich abgesehen hat und irgendetwas mit dem Schl�fer zu tun hatte.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_12"); //Als ich seinem Handlanger vorlog, nicht ich selbst zu sein, glaubte er mir merkw�rdigerweise sofort und lie� mich frei - aber nicht, ohne mir ein Abschiedspr�sent in Form eines laufenden Steinhaufens zu hinterlassen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_13"); //Es geschieht viel R�tselhaftes in dieser Welt, aber das hier ist schlicht unerkl�rlich.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_14"); //Ich kann mir nicht vorstellen, wie viel Macht ben�tigt wird, um eine Teleportation zu unterbrechen oder abzulenken.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_15"); //Das ist doch einfach unm�glich!
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_16"); //Und woher wei� dieser Meister, wo du dich aufh�ltst?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_17"); //Keine Ahnung. Ich hab's nicht gro� herumposaunt.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_18"); //Meinst du, Argez hat etwas damit zu tun?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_19"); //Ich halte es jedenfalls f�r sinnvoller, wenn du dich nicht mehr in seiner N�he aufh�ltst.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_20"); //Du solltest ihm auch nicht erz�hlen, was du vorhast.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Hi_15_21"); //In Ordnung.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Hi_14_22"); //Aber jetzt will ich dir unsere Entdeckung im Tempel zeigen. Komm mit!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOFOKUS");

	B_StartOtherRoutine	(Mod_9002_KDW_Nefarius_AW, "INTEMPEL");
};

INSTANCE Info_Mod_Saturas_AW_Fokusplatz (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Fokusplatz_Condition;
	information	= Info_Mod_Saturas_AW_Fokusplatz_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Fokusplatz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Hi))
	&& (Npc_GetDistToWp(self, "ADW_PORTALTEMPEL_TELEPORTSTATION") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Fokusplatz_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_00"); //Da sind wir. Diese S�ule und die Plattform sehen aus wie die Fokuspl�tze im Minental.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_01"); //Wir sollten die Foki hierher bringen. Dieser Teil der Insel hat etwas mystisches an sich.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_02"); //Vielleicht bekommen wir dadurch ein paar Informationen �ber dieses Land.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_03"); //Wo sind die Foki? Sind sie noch im Neuen Lager?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_04"); //Nein, nach dem Fall der Barriere haben wir die Foki wieder an ihre alten Pl�tze gebracht.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_05"); //Warum das denn, verdammt nochmal?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_06"); //Es war die sicherste Option, die uns eingefallen ist, um zu verhindern, dass au�er uns jemand in ihren Besitz gelangen k�nnte.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_07"); //Nur wir und du - den wir tot glaubten - wissen von den entlegenen Pl�tzen, an denen sie sich befinden.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_08"); //Und sollte doch jemand auf einen von ihnen sto�en, wird er kaum zuf�llig einen zweiten finden.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_09"); //Auch wenn die Foki nicht so viel Macht besa�en, wie wir urspr�nglichen angenommen haben, kam uns diese Sicherheitsma�nahme sinnvoll vor.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_10"); //Ach ja, da gibt es noch etwas.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_11"); //(st�hnt) Das kann ja nichts Gutes bedeuten.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_12"); //Wir haben alle Foki zus�tzlich mit einem Schutzzauber belegt.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_13"); //Lass mich raten: Ihr wisst nicht, wie man ihn wieder aufhebt.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_14"); //(gereizt) Halt deine Zunge im Zaum. Es ist ein Leichtes, ihn wieder aufzuheben.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_15"); //Allerdings haben drei von uns ihre Kr�fte geb�ndelt, um den Zauber zu wirken.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_16"); //Also werden auch drei Magier ben�tigt, um ihn wieder aufzuheben.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_17"); //Aha, da liegt also das Problem.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_18"); //In der Tat. Ich kann niemanden er�brigen, der sich auf den langen Weg dorthin macht.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_19"); //Au�er mich.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_20"); //Du wirst dich allein darum k�mmern m�ssen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_21"); //Aber wie? Ich kenne nicht viele Magier, die sich mal eben den Nachmittag frei nehmen k�nnen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_22"); //Zuf�lligerweise ist Nefarius im hinteren Teil des Tempels auf etwas gesto�en, das dir hilfreich sein k�nnte.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_23"); //Er wird dir erkl�ren, worum es sich dabei handelt.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_24"); //Hier hast du die Fokuskarte, falls du dich nicht mehr an die Orte erinnerst.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_25"); //Ach ja, der Pass zum Minental wird von den Paladinen bewacht, und nur, wer eine Lizenz besitzt, darf passieren.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_26"); //Ohne ausdr�ckliche Erlaubnis wirst du nicht hineingelassen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokusplatz_15_27"); //Wer k�nnte mir so eine Lizenz verschaffen?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokusplatz_14_28"); //Ich vermute mal ganz stark, dass Lord Hagen f�r die Kontrolle verantwortlich ist.

	B_GiveInvItems	(self, hero, ItWrFocimap, 1);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DIEB");

	Mod_TarrokDarfQuatschen = 1;

	Mod_Saturas_KDW_Geblubber = Wld_GetDay();

	Log_CreateTopic	(TOPIC_MOD_FOKUSSUCHE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FOKUSSUCHE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Saturas hat mich damit beauftragt, die Foki aus dem Minental zu holen. Allerdings sind alle mit einem Schutzzauber belegt, den nur drei Magier gleichzeitig brechen k�nnen. Nefarius im hinteren Teil des Tempels in Jharkendar sollte mir dabei helfen k�nnen. Au�erdem muss ich mich darum k�mmern, dass ich ins Minental gelassen werde. Da der Eingang von den Paladinen kontrolliert wird, sollte ich mein Gl�ck mal bei Lord Hagen versuchen.");
};

INSTANCE Info_Mod_Saturas_AW_UngebeterBesucher (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_UngebeterBesucher_Condition;
	information	= Info_Mod_Saturas_AW_UngebeterBesucher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_UngebeterBesucher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_AW_Fokussuche))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_00"); //(erbost) Noch nicht mal ganz bei Bewusstsein und schon wieder die Langfinger ausgestreckt!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_01"); //(verdattert) Was?

	if (Wld_IsTime(07,00,22,00))
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_02"); //Am hellichten Tage werden uns wichtige Teile unserer Ausr�stung gestohlen.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_03"); //In dieser Nacht hat sich jemand bei uns im Lager bedient und wichtige Teile unserer Ausr�stung gestohlen.
	};

	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_04"); //Ich bin mir sicher, du steckst mal wieder dahinter.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_05"); //Was fehlt denn?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_06"); //Alles M�gliche an Kleinkram: Laborwasserflaschen, Heilkr�uter. Brote.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_07"); //Sogar aus unseren Lebensmittels�cken wurde etwas genommen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_08"); //Das kann nicht alles ich gewesen sein.

	if (Wld_IsTime(07,00,22,00))
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_09"); //Ach ja, und wer dann? Niemand hat etwas gesehen, und Argez wird die ganze Zeit �ber beobachtet.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_10"); //Ach ja, und wer dann? Die Wassermagier und Argez schlafen seit geraumer Zeit.
	};

	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_11"); //Jemand, der das alles gebrauchen konnte.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_12"); //(ver�rgert) Nur sehe ich hier niemanden, der nicht an die Sachen rankommen w�rde, ohne zu fragen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher_15_13"); //Du h�ltst ja auch nicht Ausschau, sondern kommst gleich zu mir gestapft.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_14"); //Jetzt reicht's. Entweder du findest den Dieb oder r�ckst die Sachen raus.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher_14_15"); //Vorher spreche ich nicht mehr mit dir.

	if (Wld_IsTime(07,00,22,00))
	{
		Log_CreateTopic	(TOPIC_MOD_SATURAS_TAGGAST, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SATURAS_TAGGAST, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_SATURAS_TAGGAST, "Ein Dieb stiehlt den Wassermagiern von ihrer Ausr�stung. Bevor ich ihn erwischt habe, will Saturas nicht mehr mit mir reden.");

		Mod_Saturas_Gast = 1;
	}
	else
	{
		Log_CreateTopic	(TOPIC_MOD_SATURAS_NACHTGAST, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SATURAS_NACHTGAST, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_SATURAS_NACHTGAST, "Ein Dieb stiehlt den Wassermagiern von ihrer Ausr�stung. Bevor ich ihn erwischt habe, will Saturas nicht mehr mit mir reden.");

		Mod_Saturas_Gast = 2;
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PRESTART");
};

INSTANCE Info_Mod_Saturas_AW_UngebeterBesucher2 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_UngebeterBesucher2_Condition;
	information	= Info_Mod_Saturas_AW_UngebeterBesucher2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich muss da etwas gestehen ...";
};

FUNC INT Info_Mod_Saturas_AW_UngebeterBesucher2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher2_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_15_00"); //Ich muss da etwas gestehen ...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_01"); //(zornig) Verdammt seist du! Wie kann ich auch ein ums andere Mal auf dich hereinfallen?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_15_02"); //Ich will es auch wieder gutmachen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_03"); //Das ist ja wohl das Mindeste! R�ck alles raus, was du in deine tiefen Taschen verschwinden lassen hast!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_15_04"); //�h ... Was fehlt denn noch mal alles?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_05"); //So genau l�sst sich das nicht mehr sagen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_06"); //10 Heilpflanzen, wenn nicht mehr. 5 Laibe Brot. 7 oder mehr Laborwasserflaschen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_14_07"); //Und eine Entsch�digung von 100 Goldm�nzen.

	if (Mod_Saturas_Gast == 1)
	{
		B_LogEntry (TOPIC_MOD_SATURAS_TAGGAST, "Saturas will 10 Heilpflanzen, 5 Laibe Brot und 7 Laborwasserflaschen von mir haben. Die soll er bekommen.");
	}
	else
	{
		B_LogEntry (TOPIC_MOD_SATURAS_NACHTGAST, "Saturas will 10 Heilpflanzen, 5 Laibe Brot und 7 Laborwasserflaschen von mir haben. Die soll er bekommen.");
	};

	Info_ClearChoices	(Info_Mod_Saturas_AW_UngebeterBesucher2);

	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Saturas_AW_UngebeterBesucher2, "(Feilschen) Die Sachen ersetze ich ... aber das Gold muss nicht sein.", Info_Mod_Saturas_AW_UngebeterBesucher2_B);
	};

	Info_AddChoice	(Info_Mod_Saturas_AW_UngebeterBesucher2, "Ich werde alles zur�ckbringen.", Info_Mod_Saturas_AW_UngebeterBesucher2_A);
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher2_B()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_B_15_00"); //Die Sachen ersetze ich ... aber das Gold muss nicht sein.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_B_14_01"); //Na sch�n, ich bin ja schon zufrieden, wenn wir das ganze andere Zeug wiederhaben.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_B_14_02"); //(gereizt) Dann lass deine Finger in Zukunft von unseren Sachen!
	};

	Info_ClearChoices	(Info_Mod_Saturas_AW_UngebeterBesucher2);
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher2_A()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher2_A_15_00"); //Ich werde alles zur�ckbringen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher2_A_14_01"); //Das will ich auch hoffen!

	Info_ClearChoices	(Info_Mod_Saturas_AW_UngebeterBesucher2);
};

INSTANCE Info_Mod_Saturas_AW_UngebeterBesucher3 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_UngebeterBesucher3_Condition;
	information	= Info_Mod_Saturas_AW_UngebeterBesucher3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier ist das Diebesgut.";
};

FUNC INT Info_Mod_Saturas_AW_UngebeterBesucher3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher2))
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 10)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 5)
	&& (Npc_HasItems(hero, ItMi_Flask) >= 7)
	&& ((Npc_HasItems(hero, ItMi_Gold) >= 100)
	|| (self.aivar[AIV_Verhandlung] == TRUE))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_UngebeterBesucher3_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher3_15_00"); //Hier ist das Diebesgut.

	B_ShowGivenThings	("Diebesgut gegeben");

	Npc_RemoveInvItems	(hero, ItPl_Health_Herb_01, 10);
	Npc_RemoveInvItems	(hero, ItFo_Bread, 5);
	Npc_RemoveInvItems	(hero, ItMi_Flask, 7);

	if (self.aivar[AIV_Verhandlung] == FALSE)
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 100);
	};

	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher3_14_01"); //Na endlich. Aber glaub ja nicht, dass ich dir jetzt dankbar bin.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher3_14_02"); //Wie sieht es eigentlich mit deiner Minental-Reise aus? Konnte Nefarius dir nicht helfen?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_UngebeterBesucher3_15_03"); //Doch, das wird schon. Dauert nur noch etwas.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_UngebeterBesucher3_14_04"); //Aber nicht tr�deln!

	if (Mod_Saturas_Gast == 1)
	{
		B_SetTopicStatus (TOPIC_MOD_SATURAS_TAGGAST, LOG_SUCCESS);
	}
	else
	{
		B_SetTopicStatus (TOPIC_MOD_SATURAS_NACHTGAST, LOG_SUCCESS);
	};

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Saturas_AW_Magieschranke (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Magieschranke_Condition;
	information	= Info_Mod_Saturas_AW_Magieschranke_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir helfen, eine magische Markierung loszuwerden?";
};

FUNC INT Info_Mod_Saturas_AW_Magieschranke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_Prisma3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Magieschranke_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Magieschranke_15_00"); //Kannst du mir helfen, eine magische Markierung loszuwerden?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Magieschranke_14_01"); //Eine was?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Magieschranke_15_02"); //(seufzt) Schon gut. Du kennst auch niemanden, der davon Ahnung haben k�nnte?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Magieschranke_14_03"); //Die Chance, dass ein anderer Wassermagier sich damit auskennt, ist sehr gering, wenn ich noch nie davon geh�rt habe.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Saturas_AW_Magieschranke_15_04"); //Den Magiern ist dieses Land fast genau so fremd wie mir. Zur magischen Markierung werden sie nichts wissen. Aber weil ich gerade an mysteri�se Magie denke - was meint eigentlich Argez dazu?

	AI_TurnToNpc	(hero, self);

	B_LogEntry	(TOPIC_MOD_MAGISCHEMARKIERUNG, "Saturas und wohl auch alle anderen Magier kennen keine M�glichkeit, eine magische Markierung loszuwerden. Vielleicht sollte ich Argez um Rat fragen ...");
};

INSTANCE Info_Mod_Saturas_AW_HabFoki (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_HabFoki_Condition;
	information	= Info_Mod_Saturas_AW_HabFoki_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_HabFoki_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	&& (Mod_Fokus_Alle == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_HabFoki_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_00"); //Hast du alle Foki geholt?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_01"); //Ja, ich habe alle gefunden.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_02"); //Euer toller Plan, die Fokussteine an ihre urspr�nglichen Pl�tze zur�ckzubringen, w�re aber fast nach hinten losgegangen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_03"); //Was meinst du damit?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_04"); //Die Orks sind auf den Trichter gekommen, mit den Foki den Schl�fer wiederzubeleben, und hatten schon zwei gesammelt.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_05"); //Au�erdem hatte ich noch einen zweiten Gegenspieler, der von den Standorten der Foki wusste.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_06"); //Nur mit Gl�ck konnte ich sie alle vor ihm erwischen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_07"); //Was soll das f�r ein Gegenspieler sein?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_08"); //Ich vermute stark, dass es sich um den handelt, der auch versucht hat, mich zu fangen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_09"); //Und was sollte der mit den Fokussteinen anfangen k�nnen?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_10"); //Keine Ahnung.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_11"); //Dann bringt uns das auch nicht weiter. Wir gehen also unserem urspr�nglichen Plan nach.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_12"); //Du musst jetzt also die Sockel f�r die Fokussteine finden und sie einsetzen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_HabFoki_15_13"); //Protestieren hilft wahrscheinlich nicht, oder?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_HabFoki_14_14"); //(streng) Spar's dir.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Saturas will, dass ich die Foki nun einsetze. Die Plattformen werden wieder in Form eines Pentagrammes angeordnet sein. Auf dem Weg zum Sumpf im Osten wird Neku auf mich warten. Er hat dort das Gebiet ausgesp�ht und hat vielleicht Informationen f�r mich.");

	Wld_InsertNpc	(Mod_7369_WNOV_Neku_AW,	"ADW_ENTRANCE_PATH2BANDITS_13A");

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Saturas_AW_Kap3 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Kap3_Condition;
	information	= Info_Mod_Saturas_AW_Kap3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Kap3_Condition()
{
	if (Kapitel == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Kap3_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_00"); //(ersch�ttert) Adanos helfe uns! Die H�lle ist �ber uns hereingebrochen!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_01"); //So k�nnte man es ausdr�cken. Und ich wei� nun Bescheid.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_02"); //Dann lass dich nicht bitten!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_03"); //Ich habe alle Fokussteine eingesetzt, damit uns aber keinen Gefallen getan.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_04"); //Die Foki haben daf�r gesorgt, dass Xeres, ein uralter, schlechtgelaunter Magier nun aus seinem Gef�ngnis unter der Erde ausbrechen kann.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_05"); //Er pers�nlich treibt sich schon herum, und wie es aussieht, hat er seine Truppen auch schon ausgesandt.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_06"); //Es waren Dutzende, Kreaturen, die ich noch nie vorher gesehen habe.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_07"); //Wie habt ihr �berlebt?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_08"); //Es ... es war Argez. Er hat sie mit Zaubern in Schach gehalten, bis sie ihn �berw�ltigt haben.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_09"); //Und dann haben sie ihn mitgenommen und sind abgezogen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_10"); //Argez hat ...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_11"); //Er hat uns gerettet. Ich scheine mich in ihm get�uscht zu haben.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_12"); //Wohin haben sie ihn gebracht?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_13"); //Nach Westen. Merdarion ist kurz in diese Richtung gelaufen und hat von einem riesigen Schlund berichtet, der sich dort in einer der Schluchten aufgetan haben soll.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_14"); //Das werd ich mir sp�ter mal aus der N�he ansehen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Kap3_14_15"); //Spinnst du?!
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Kap3_15_16"); //W�rd ich nicht ausschlie�en.

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Xeres' Unterschlupf scheint sich ganz in der N�he zu befinden. Im Westen der Wassermagier soll sich in einer der Schluchten ein Loch aufgetan haben. Wenn ich Xeres besuchen gehe, kann ich eigentlich auch gleich noch Argez befreien, der von ihm verschleppt worden ist.");

	Wld_SendTrigger	("EVT_ZUGANG_UNTERWELT");
};

INSTANCE Info_Mod_Saturas_AW_Member_01 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_01_Condition;
	information	= Info_Mod_Saturas_AW_Member_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Member_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	&& (Mod_Gilde == 9)
	&& ((Wld_GetDay()-2 >= Mod_Saturas_KDW_Geblubber)
	|| ((FokiEingesetzt == 2)
	&& (FokusBlockade == TRUE)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_00"); //Du bist nun seit einigen Tagen ein Mitglied unserer Gemeinschaft, der Gemeinschaft des Wassers. Ich hoffe du begreifst, welche gro�e Verantwortung damit verbunden ist.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_01"); //Wir sind es, die auf Adanos Weisung die Kr�fteverh�ltnisse und den Einfluss der beiden Gottheiten Innos und Beliar im Gleichgewicht halten.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_02"); //Es ist ein sehr zerbrechliches Gleichgewicht und nur, wenn jedes der Kinder unserer Gemeinschaft seine Aufgaben mit gro�er Gewissenhaftigkeit erf�llt, wird es auch weiterhin Bestand haben.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_03"); //Erlangt n�mlich eine von beiden Seiten � Ordnung oder Chaos - die Dominanz, ger�t das gesamte Gef�ge der Welt, wie wir sie kennen, aus den Fugen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_04"); //Dies w�rde f�r die meisten Gesch�pfe, die auf ihr wandeln, verheerende Folgen haben ...
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_01_15_05"); //Kann ich etwas tun, um unsere Gemeinschaft bei ihrem Bestreben nach Erhalt des Gleichgewichtes zu unterst�tzen?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_01_14_06"); //Im Moment noch nicht. Vielleicht findet sich in einigen Tagen etwas.
};

INSTANCE Info_Mod_Saturas_AW_Member_02 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_02_Condition;
	information	= Info_Mod_Saturas_AW_Member_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Member_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_01))
	&& (FokiEingesetzt == 2)
	&& (FokusBlockade == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_14_00"); //Hast du einen Augenblick Zeit? Ich habe eine Aufgabe f�r dich.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_02_15_01"); //Worum geht es?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_14_02"); //Nun, wir haben davon vernommen, dass die D�monenmagier durch unheilige Rituale die Beschaffenheit des Bodens zu ver�ndern verm�gen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_14_03"); //Vielleicht hast du auch bereits davon geh�rt?

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_02);
	
	Info_AddChoice	(Info_Mod_Saturas_AW_Member_02, "Nein, bislang noch nicht.", Info_Mod_Saturas_AW_Member_02_B);

	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Aufnehmen))
	{
		Info_AddChoice	(Info_Mod_Saturas_AW_Member_02, "Ja, soweit ich erfahren hatte (...)", Info_Mod_Saturas_AW_Member_02_A);
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_C()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_00"); //Das Besorgniserregende dabei ist, dass die dunkle Magie, die auf das Erdreich gewirkt wurde, dem Boden verhaftet bleibt.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_01"); //Dunkle und d�monische M�chte k�nnen dort leichter fu�fassen und das Gebiet allm�hlich mit der Macht Beliars� verpesten.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_02"); //Das haben auch die D�monenmagier erkannt und ihr unheiliges Wirken auf weitere, vorerst kleinere Gebiete in Khorinis ausgedehnt.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_C_14_03"); //Sie wollen damit ihre Machtposition st�rken und sich Raum erschlie�en, auf welchem ihre Magie st�rker wirken kann.

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_02);
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_B()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_02_B_15_00"); //Nein, bislang noch nicht.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_B_14_01"); //Das macht nichts, das Wesentliche erz�hle ich dir jetzt.

	Info_Mod_Saturas_AW_Member_02_C();
};

FUNC VOID Info_Mod_Saturas_AW_Member_02_A()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_02_A_15_00"); //Ja, soweit ich erfahren hatte, soll der Boden durch Entnehmen und Hinzuf�gen irgendwelcher Stoffe andere Eigenschaften erhalten haben.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_02_A_14_01"); //Genau. Das ist jedoch noch nicht alles, was du dar�ber wissen musst.

	Info_Mod_Saturas_AW_Member_02_C();
};

INSTANCE Info_Mod_Saturas_AW_Member_03 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_03_Condition;
	information	= Info_Mod_Saturas_AW_Member_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was kann man tun, um diesem Treiben ein Ende zu setzen?";
};

FUNC INT Info_Mod_Saturas_AW_Member_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_03_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_00"); //Was kann man tun, um diesem Treiben ein Ende zu setzen?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_01"); //Um den Boden wieder zu s�ubern, gilt es nun die uns von Adanos verliehen Magie einzusetzen. Uns stehen hierzu magische Wasserperlen zur Verf�gung.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_02"); //Es ist nun deine Aufgabe, auf jedem betroffenen Gebiet eine Wasserperle der Neutralisation auszustreuen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_03"); //Sobald sie den Boden ber�hrt, wird sie ihm die dunkle Magie heraussaugen, wie Gift aus einer Wunde, sich dann aufl�sen und die M�chte in die Umgebung freisetzen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_04"); //Schwarze Magie in die Gegend freisetzen?! Ist das nicht etwas riskant?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_05"); //Nun ... darauf wollte ich gerade zu sprechen kommen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_06"); //W�hrend ein Teil der magischen Kr�fte sich allm�hlich bis zu Wirkungslosigkeit in der Umgebung verteilen wird, kann sich ein gro�er Anteil der d�monischen Magie auch in fester Form manifestieren.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_07"); //Du wirst dich also auf die eine, oder andere Auseinandersetzung mit einer Kreatur einstellen m�ssen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_08"); //Ich habe aber keine Zweifel daran, dass du dem Herr wirst, da die einzelnen Gebiete vorerst relativ klein sind und erst wenig Zeit hatten, d�monische M�chte aufzunehmen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_09"); //Au�erdem hast du w�hrend der Fokussuche in der Kolonie damals bestimmt viel widerspenstigeren Kreaturen die Stirn geboten.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_10"); //Ich h�tte auch noch ein Anliegen. Ich habe einen weiteren Fokus eingesetzt, wurde aber an einen v�llig anderen Ort teleportiert, wo ich lieber nicht hingekommen w�re ...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_11"); //Hmm, h�chst ungew�hnlich. Die Ursache k�nnte aber genau in der angesprochenen Verunreinigung der B�den liegen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_03_15_12"); //Es soll sich �ber eine so gro�e Strecke auswirken?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_13"); //Die Justierung solcher Teleporter und ihrer Magie ist eine h�chst genaue und sensible Angelegenheit. Wenn es an einem anderen Platz der Insel eine magische Anomalie in den B�den gibt, kann sich das durchaus bis Jharkendar auswirken.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_03_14_14"); //Gehe nun zu Merdarion, er wird dir die Wasserperlen aush�ndigen. Adanos m�ge dich beh�ten.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_BOEDEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_BOEDEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_BOEDEN, "Saturas gab mir den Auftrag die von den Schwarzmagiern verfluchten B�den zu reinigen. Merdarion soll mich dazu mit den notwendigen Hilfsmitteln ausstatten.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Saturas_AW_Member_04 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_04_Condition;
	information	= Info_Mod_Saturas_AW_Member_04_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wegen der Reinigung der Gebiete ...";
};

FUNC INT Info_Mod_Saturas_AW_Member_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Merdarion_AW_Nefarius))
	&& (Mod_WM_Boeden < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_04_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_00"); //Wegen der Reinigung der Gebiete ...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_01"); //Ja, was hast du zu berichten?

	if (Mod_WM_Boeden < 6)
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_02"); //Ich bin noch an der Sache dran.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_03"); //Dann beeil dich besser und tr�dele nicht hier herum.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_04"); //Ich habe alles gemacht, wie du mir aufgetragen hast und die B�den von schwarzer Magie ges�ubert.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_05"); //Das ist gro�artig. Die Schwarzmagier werden nun glauben, dass ihre Bem�hungen fehlgeschlagen sind und damit aufh�ren.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_06"); //Nun aber berichte: Musstest du vielen d�monischen Schergen entgegentreten?
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_04_15_07"); //Nein, lediglich die ersten zwei Reinigungsritualen zogen die Manifestation von je einem Wesen nach sich.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_08"); //Nur zwei Kreaturen? Das ist sehr verwunderlich ... Nun gut, wie dem auch sei, du hast unserer Gemeinschaft einen nennenswerten Dienst erwiesen.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_04_14_09"); //Nimm diese Manatr�nke als Dank. M�gen sie dir magische Kraft verleihen, f�r den Willen unseres Herren Adanos zu streiten.

		B_GiveInvItems	(self, hero, ItPo_Mana_01, 10);

		B_GivePlayerXP	(300);

		Mod_WM_Boeden = 7;

		Mod_WM_DaySave = Wld_GetDay();

		FokusBlockade = FALSE;
	};
};

INSTANCE Info_Mod_Saturas_AW_Member_05 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_05_Condition;
	information	= Info_Mod_Saturas_AW_Member_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kann ich sonst noch etwas tun.";
};

FUNC INT Info_Mod_Saturas_AW_Member_05_Condition()
{
	if (Mod_WM_Boeden >= 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_05_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_05_15_00"); //Kann ich sonst noch etwas tun.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_05_14_01"); //Im Moment habe ich keine Aufgabe mehr f�r dich, vielleicht in einigen Tagen wieder.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_05_14_02"); //Hmm, aber Cronos erz�hlte, dass er wom�glich Anhaltspunkte f�r den Standort eines alten Artefaktes h�tte, was schon lange als verloren galt, war sich aber noch recht unsicher ...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_05_14_03"); //Geh am besten zu ihm. Vielleicht kannst du ihn bei seinen Nachforschungen unterst�tzen.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_NOVIZE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_NOVIZE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Saturas meinte, dass Cronos m�glicherweise einem Artefakt auf der Spur sei.");
};

INSTANCE Info_Mod_Saturas_AW_Member_06 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_06_Condition;
	information	= Info_Mod_Saturas_AW_Member_06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Member_06_Condition()
{
	if (Mod_Wm_Boeden == 7)
	&& (FokiEingesetzt == 4)
	&& (FokusBlockade == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_06_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_00"); //Hat denn diese Narretei nie ein Ende. Die B�den ...
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_06_15_01"); //Was, schon wieder die Schwarzmagier?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_02"); //Nein, so lass mich doch aussprechen. Diesmal sind es die Diener Innos die das Gleichgewicht durch ihr leichtsinniges Wirken gef�hrden.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_03"); //Sie hatten von den Handlungen der Schwarzmagier erfahren und nun ihrerseits im Rahmen einer Gegenoffensive einige Gebiete gesegnet.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_14_04"); //Geh zu Merdarion, du wei�t bereits, wie du vorgehen musst.

	B_LogEntry_More	(TOPIC_MOD_FOKUSSUCHE, TOPIC_MOD_ADANOS_BOEDEN, "Dann sind wohl jetzt die geweihten B�den die Ursache. Erst wenn diese entweiht sind traue ich mich auch den letzten Fokus einzusetzen.", "Jetzt das noch. Diesmal darf ich die von den Innosdiener gesegneten B�den entweihen. Wie gewohnt darf ich mir alle Materialien daf�r bei Merdarion abholen.");

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_06);

	Info_AddChoice	(Info_Mod_Saturas_AW_Member_06, "Ist das euer Ernst? Ich soll gesegneten Boden entweihen?", Info_Mod_Saturas_AW_Member_06_B);
	Info_AddChoice	(Info_Mod_Saturas_AW_Member_06, "Ich mache mich sofort auf den Weg.", Info_Mod_Saturas_AW_Member_06_A);
};

FUNC VOID Info_Mod_Saturas_AW_Member_06_B()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_06_B_15_00"); //Ist das euer Ernst? Ich soll gesegneten Boden entweihen?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_B_14_01"); //Scheinbar hast du noch nicht ganz begriffen, worin unser Wirken besteht. Es sind eben nicht immer nur die M�chte Beliars�, die es einzud�mmen gilt.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_B_14_02"); //Wenn die Diener Innos meinen, den nat�rlichen Lauf der Dinge durch das Segnen ganzer Landstriche st�ren zu m�ssen, f�llt es selbstverst�ndlich auch in unseren Aufgabenbereich, so etwas zu unterbinden.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_06_B_14_03"); //Und nun geh deinen Pflichten nach.

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_06);
};

FUNC VOID Info_Mod_Saturas_AW_Member_06_A()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_06_A_15_00"); //Ich mache mich sofort auf den Weg.

	Info_ClearChoices	(Info_Mod_Saturas_AW_Member_06);
};

INSTANCE Info_Mod_Saturas_AW_Member_07 (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Member_07_Condition;
	information	= Info_Mod_Saturas_AW_Member_07_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wegen der Reinigung der B�den ...";
};

FUNC INT Info_Mod_Saturas_AW_Member_07_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_06))
	&& (Mod_WM_Boeden < 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Member_07_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_07_15_00"); //Wegen der Reinigung der B�den ...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_01"); //Ja, was hast du zu berichten?

	if (Mod_WM_Boeden < 8)
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_07_15_02"); //Ich bin noch an der Sache dran.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_03"); //Dann beeil dich besser und tr�dele nicht hier herum.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Saturas_AW_Member_07_15_04"); //Ich habe alles gemacht, wie du mir aufgetragen hast und diesmal die B�den  von ... �hh, Innos� Segen befreit.
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_05"); //Sehr gut. Ich hoffe nur, dass es nicht zu Reibereien mit dem Kloster f�hrt ...
		AI_Output(self, hero, "Info_Mod_Saturas_AW_Member_07_14_06"); //Wie dem auch sei hier hast du einige Goldm�nzen f�r deine Ausr�stung.

		B_GiveInvItems	(self, hero, ItMi_Gold, 200);

		B_GivePlayerXP	(300);

		Mod_WM_Boeden = 9;

		Mod_WM_DaySave = Wld_GetDay();

		B_SetTopicStatus	(TOPIC_MOD_ADANOS_BOEDEN, LOG_SUCCESS);

		B_G�ttergefallen(2, 1);

		FokusBlockade = FALSE;
	};
};

INSTANCE Info_Mod_Saturas_AW_PortalInnosSchwert (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_PortalInnosSchwert_Condition;
	information	= Info_Mod_Saturas_AW_PortalInnosSchwert_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_PortalInnosSchwert_Condition()
{
	if (Mod_BEL_FirstPortal == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PortalInnosSchwert_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_00"); //Ahh, da bist du ja wieder. Gibt es Neuigkeiten?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalInnosSchwert_15_01"); //Ja, ich glaube einen Weg zu dem Artefakt gefunden zu haben, das die Garde erlangen will.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalInnosSchwert_15_02"); //Es gibt ein Ritual, zu dessen Schluss ich einen Blitz aussenden musste, um ein Portal zu erschaffen.
	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalInnosSchwert_15_03"); //Leider scheint das Portal nicht stabil genug und verschwindet gleich wieder.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_04"); //Hmm, das h�rt sich danach an, als w�rde das Portal durch die magische Energie des Blitzes gespeist.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_05"); //F�r uns Wassermagier sollte es nicht schwierig sein, eine Spruchrolle zu kreieren, mit welcher sich ein ungleich st�rkerer Blitz erzeugen lie�e.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_06"); //Damit sollte sich dann ein stabiles Portal erschaffen lassen ...
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_07"); //Wir werden allerdings einige Stunden Zeit f�r die Fertigstellung ben�tigen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_08"); //Du solltest in der Zwischenzeit sichergehen, ob du auch alle Vorbereitungen getroffen hast, um der Garde entgegentreten zu k�nnen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalInnosSchwert_14_09"); //Zweifelsohne sind sie ihrem Ziel schon bedrohlich nahe gekommen ...

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Die Wassermagier werden eine modifizierte Blitzspruchrolle herstellen, mit deren Hilfe das Portal stabil bleiben sollte.");

	if (Mod_BEL_BeliarDoch_Gefunden == FALSE)
	{
		B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "W�hrend dessen sollte ich mich auf die Suche nach der Bauanleitung f�r den Dolch Beliars begeben.");
	};

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self, 3600);
};

INSTANCE Info_Mod_Saturas_AW_PortalZauberFertig (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_PortalZauberFertig_Condition;
	information	= Info_Mod_Saturas_AW_PortalZauberFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_PortalZauberFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_PortalInnosSchwert))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PortalZauberFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalZauberFertig_14_00"); //Ahh, hier bist du endlich. Wir sind schon l�ngst mit der Spruchrolle fertig.

	B_GiveInvItems	(self, hero, ItSc_ModifiedZap, 1);

	AI_Output(hero, self, "Info_Mod_Saturas_AW_PortalZauberFertig_15_01"); //Danke. Dann mach ich mich mal auf den Weg.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_PortalZauberFertig_14_02"); //Vergiss  nicht, die Erhaltung des Gleichgewichtes liegt jetzt in deinen H�nden. Adanos beh�te dich.

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Ich habe die pr�parierte Spruchrolle f�r das Portal.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Saturas_AW_Bshydal (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Bshydal_Condition;
	information	= Info_Mod_Saturas_AW_Bshydal_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_Bshydal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Bshydal))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Bshydal_Info()
{
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_00"); //Bei Adanos, konntest du dem �bel Einhalt gew�hren?
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Bshydal_15_01"); //Ja, die Gefahr ist gebannt.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_02"); //Da bin ich beruhigt. Mein magisches Gesp�r lie� es mich schon vermuten, aber die Best�tigung darum ist doch Balsam f�r den Geist.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_03"); //Wie dem auch sei, du hast viel f�r uns und die Sch�pfung getan.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Bshydal_14_04"); //Hier, nimm diese Spruchrollen und die Tr�nke zum Dank. Adanos beh�te dich.

	B_ShowGivenThings	("2 Spruchrollen und 6 Tr�nke erhalten");

	CreateInvItems	(hero, ItSc_IceRain, 2);
	CreateInVItems	(hero, ItPo_Mana_01, 3);
	CreateInvItems	(hero, ItPo_Mana_02, 2);
	CreateInvItems	(hero, ItPo_Geist, 1);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Saturas_AW_Fokussteine (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Fokussteine_Condition;
	information	= Info_Mod_Saturas_AW_Fokussteine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was ist, wenn die Fokussteine hier nicht funktionieren?";
};

FUNC INT Info_Mod_Saturas_AW_Fokussteine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Fokusplatz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_Fokussteine_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_Fokussteine_15_00"); //Was ist, wenn die Fokussteine hier nicht funktionieren?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_Fokussteine_14_01"); //Dann werden wir eben unsere F��e bem�hen m�ssen.
};

INSTANCE Info_Mod_Saturas_AW_FokusSockel (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_FokusSockel_Condition;
	information	= Info_Mod_Saturas_AW_FokusSockel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wo finde ich die Sockel?";
};

FUNC INT Info_Mod_Saturas_AW_FokusSockel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_HabFoki))
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_FokusSockel_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_FokusSockel_15_00"); //Wo finde ich die Sockel?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_01"); //Wir k�nnen dar�ber nur Vermutungen anstellen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_02"); //Aber es ist nicht unwahrscheinlich, dass die Sockel wie im Minental als Pentagramm angeordnet sind.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_03"); //Wenn du erst mal zwei von ihnen lokalisiert hast, solltest du dir den Rest halbwegs erschlie�en k�nnen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_04"); //In den Sumpf im Osten haben wir schon Neku geschickt, der sich dort umschauen sollte.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_FokusSockel_14_05"); //Er hat sicher schon Informationen f�r dich. Du solltest dringend bei ihm vorbeischauen.
};

INSTANCE Info_Mod_Saturas_AW_WofuerGut (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_WofuerGut_Condition;
	information	= Info_Mod_Saturas_AW_WofuerGut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wof�r soll das noch mal gut sein?";
};

FUNC INT Info_Mod_Saturas_AW_WofuerGut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_HabFoki))
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_WofuerGut_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_WofuerGut_15_00"); //Wof�r soll das noch mal gut sein?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WofuerGut_14_01"); //Sobald die Teleporter funktionieren, ist ein gefahrloses Reisen durch diese unbekannte Welt m�glich.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WofuerGut_14_02"); //Wir k�nnen nicht wie bisher immer ein oder zwei Mann aussenden, wir brauchen das Wissen und die Erfahrung der ganzen Gruppe.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WofuerGut_14_03"); //Und die alten Knaben kann ich nicht zu tagelangen beschwerlichen Fu�m�rschen zwingen.
};

INSTANCE Info_Mod_Saturas_AW_WiesoFoki (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_WiesoFoki_Condition;
	information	= Info_Mod_Saturas_AW_WiesoFoki_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wieso sollten die Foki aus dem Minental auch hier wirken?";
};

FUNC INT Info_Mod_Saturas_AW_WiesoFoki_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_HabFoki))
	&& (Kapitel == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Saturas_AW_WiesoFoki_Info()
{
	AI_Output(hero, self, "Info_Mod_Saturas_AW_WiesoFoki_15_00"); //Wieso sollten die Foki aus dem Minental auch hier wirken?
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WiesoFoki_14_01"); //Dass die beiden Teleportationssysteme so �hnlich sind, kann kein Zufall sein.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WiesoFoki_14_02"); //Ich vermute, dass die Technik von hier aus nach Khorinis gelangt ist und von dort ins Minental, vielleicht haben die Fl�chtlinge von hier sogar die Foki mitgenommen.
	AI_Output(self, hero, "Info_Mod_Saturas_AW_WiesoFoki_14_03"); //Deshalb spricht nichts dagegen, sie auch hier einsetzen zu k�nnen.
};

INSTANCE Info_Mod_Saturas_AW_PMSchulden (C_INFO)
{
	npc         	= Mod_9000_KDW_Saturas_AW;
	nr          	= 1;
	condition   	= Info_Mod_Saturas_AW_PMSchulden_Condition;
	information 	= Info_Mod_Saturas_AW_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Saturas_AW_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Saturas_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Saturas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_00"); //Bist du gekommen, um deine Strafe zu zahlen?

	if (B_GetTotalPetzCounter(self) > Saturas_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_01"); //Ich hatte mich schon gefragt, ob du es �berhaupt noch wagst, hierher zu kommen!
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_02"); //Anscheinend ist es nicht bei den letzten Anschuldigungen geblieben!

		if (Saturas_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_03"); //Ich hatte dich gewarnt! Die Strafe, die du jetzt zahlen musst, ist h�her!
			AI_Output (hero, self, "Info_Mod_Saturas_AW_PMAdd_15_00"); //Wieviel?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Saturas_LastPetzCounter);
		
			if (diff > 0)
			{
				Saturas_Schulden = Saturas_Schulden + (diff * 50);
			};
		
			if (Saturas_Schulden > 1000)	{	Saturas_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Saturas_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_04"); //Du hast mich schwer entt�uscht!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Saturas_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_05"); //Es haben sich einige neue Dinge ergeben.
		
		if (Saturas_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_06"); //Pl�tzlich gibt es niemanden mehr, der dich des Mordes bezichtigt.
		};
		
		if (Saturas_LastPetzCrime == CRIME_THEFT)
		|| ( (Saturas_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_07"); //Niemand erinnert sich mehr, dich bei einem Diebstahl gesehen zu haben.
		};
		
		if (Saturas_LastPetzCrime == CRIME_ATTACK)
		|| ( (Saturas_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_08"); //Es gibt keine Zeugen mehr daf�r, dass du jemals in eine Schl�gerei verwickelt warst.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_09"); //Anscheinend haben sich alle Anklagen gegen dich in Wohlgefallen aufgel�st.
		};
		
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_10"); //Ich wei� nicht, was da gelaufen ist, aber ich warne dich: Spiel keine Spielchen mit mir.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_11"); //Ich habe mich jedenfalls entschieden, dir deine Schulden zu erlassen.
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_12"); //Sieh zu, dass du nicht wieder in Schwierigkeiten kommst.
	
			Saturas_Schulden			= 0;
			Saturas_LastPetzCounter 	= 0;
			Saturas_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_13"); //Damit eins klar ist: Deine Strafe musst du trotzdem in voller H�he zahlen.
			B_Say_Gold (self, hero, Saturas_Schulden);
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PMSchulden_14_14"); //Also, was ist?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
		Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"Ich habe nicht genug Gold!",Info_Mod_Saturas_AW_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"Wieviel war es nochmal?",Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Saturas_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Saturas_AW_PMSchulden,"Ich will die Strafe zahlen.",Info_Mod_Saturas_AW_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain_15_00"); //Wie viel war es noch mal?
	B_Say_Gold (self, hero, Saturas_Schulden);

	Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
	Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"Ich habe nicht genug Gold!",Info_Mod_Saturas_AW_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Saturas_AW_PMSchulden,"Wieviel war es nochmal?",Info_Mod_Saturas_AW_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Saturas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Saturas_AW_PMSchulden,"Ich will die Strafe zahlen.",Info_Mod_Saturas_AW_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Saturas_AW_PETZMASTER   (C_INFO)
{
	npc         	= Mod_9000_KDW_Saturas_AW;
	nr          	= 1;
	condition   	= Info_Mod_Saturas_AW_PETZMASTER_Condition;
	information 	= Info_Mod_Saturas_AW_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Saturas_AW_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Saturas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Saturas_AW_PETZMASTER_Info()
{
	Saturas_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime h�her ist...
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_01"); //Gut, dass du zu mir kommst, bevor alles noch schlimmer f�r dich wird.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_02"); //Mord ist ein schweres Vergehen!

		Saturas_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Saturas_Schulden = Saturas_Schulden + 500;						//PLUS M�rder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_03"); //Ganz zu schweigen von den anderen Sachen, die du angerichtet hast.
		};

		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_06"); //Ich habe kein Interesse daran, dich an den Galgen zu bringen. Wir sind im Krieg und wir brauchen jeden Mann.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_07"); //Aber es wird nicht leicht sein, die Leute wieder gn�dig zu stimmen.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_08"); //Du k�nntest deine Reue zeigen, indem du eine Strafe zahlst - nat�rlich muss die Strafe angemessen hoch sein.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_09"); //Gut, dass du kommst! Du wirst des Diebstahls bezichtigt! Es gibt Zeugen!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_10"); //Von den anderen Dingen, die mir zu Ohren gekommen sind, will ich gar nicht erst reden.
		};

		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_11"); //Ich werde so ein Verhalten bei uns nicht dulden!
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_12"); //Du wirst eine Strafe zahlen m�ssen, um dein Verbrechen wieder gutzumachen!
		
		Saturas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_13"); //Wenn du dich mit dem Gesindel im Hafen herumpr�gelst, ist das eine Sache ...
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_14"); //Aber wenn du unsere Leute angreifst, muss ich dich zur Rechenschaft ziehen.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_15"); //Und die Sache mit den Schafen musste wohl auch nicht sein.
		};

		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_16"); //Wenn ich dir das durchgehen lasse, macht hier bald jeder, was er will.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_17"); //Also wirst du eine angemessene Strafe zahlen - und die Sache ist vergessen.
		
		Saturas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf get�tet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_18"); //Mir ist zu Ohren gekommen, du h�ttest dich an unseren Schafen vergriffen.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_19"); //Dir ist klar, dass ich das nicht durchgehen lassen kann.
		AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_14_20"); //Du wirst eine Entsch�digung zahlen m�ssen!
		
		Saturas_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PETZMASTER_15_21"); //Wie viel?
	
	if (Saturas_Schulden > 1000)	{	Saturas_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Saturas_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
	Info_AddChoice		(Info_Mod_Saturas_AW_PETZMASTER,"Ich habe nicht genug Gold!",Info_Mod_Saturas_AW_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Saturas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Saturas_AW_PETZMASTER,"Ich will die Strafe zahlen.",Info_Mod_Saturas_AW_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Saturas_AW_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PETZMASTER_PayNow_15_00"); //Ich will die Strafe zahlen!
	B_GiveInvItems (hero, self, itmi_gold, Saturas_Schulden);
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_PayNow_14_01"); //Gut! Ich werde daf�r sorgen, dass es jeder von uns erf�hrt - damit w�re dein Ruf einigerma�en wiederhergestellt.

	B_GrantAbsolution (LOC_WMCAMP);
	
	Saturas_Schulden			= 0;
	Saturas_LastPetzCounter 	= 0;
	Saturas_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Saturas_AW_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Saturas_AW_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Saturas_AW_PETZMASTER_PayLater_15_00"); //Ich habe nicht genug Gold!
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_PayLater_14_01"); //Dann sieh zu, dass du das Gold so schnell wie m�glich beschaffst.
	AI_Output (self, hero, "Info_Mod_Saturas_AW_PETZMASTER_PayLater_14_02"); //Und ich warne dich: Wenn du dir noch was zu schulden kommen l�sst, wird die Sache noch schlimmer f�r dich!
	
	Saturas_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Saturas_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Saturas_AW_Pickpocket (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_Pickpocket_Condition;
	information	= Info_Mod_Saturas_AW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Saturas_AW_Pickpocket_Condition()
{
	C_Beklauen	(176, ItMi_Gold, 1200);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

	Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_BACK, Info_Mod_Saturas_AW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Saturas_AW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

		Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Saturas_AW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Saturas_AW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Saturas_AW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Saturas_AW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Saturas_AW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Saturas_AW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Saturas_AW_EXIT (C_INFO)
{
	npc		= Mod_9000_KDW_Saturas_AW;
	nr		= 1;
	condition	= Info_Mod_Saturas_AW_EXIT_Condition;
	information	= Info_Mod_Saturas_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Saturas_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Saturas_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};