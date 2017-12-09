INSTANCE Info_Mod_Matteo_Hi (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Hi_Condition;
	information	= Info_Mod_Matteo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Matteo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Matteo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Matteo_Hi_36_00"); //(eifrig) Ein Kunde, ein Kunde! Tritt ein, Fremder, und st�bere in meinen erlesenen Waren!
	AI_Output(hero, self, "Info_Mod_Matteo_Hi_15_01"); //Keine Vorurteile gegen�ber einem ehemaligen Str�fling?
	AI_Output(self, hero, "Info_Mod_Matteo_Hi_36_02"); //Ach was! Alles Kundschaft! Interessierte, zahlende Kundschaft!

	Log_CreateTopic	(TOPIC_MOD_HAENDLER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_STADT, "Matteo verkauft Lebensmittel.");
};

INSTANCE Info_Mod_Matteo_Angebot_Kissen (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Angebot_Kissen_Condition;
	information	= Info_Mod_Matteo_Angebot_Kissen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich suche was Weiches f�r den Kopf.";
};

FUNC INT Info_Mod_Matteo_Angebot_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malik_Aufgabe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kissen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Angebot_Kissen_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Angebot_Kissen_15_00"); //Ich suche was Weiches f�r den Kopf.
	AI_Output(self, hero, "Info_Mod_Matteo_Angebot_Kissen_36_01"); //Was genau? Vielleicht eine Fellm�tze? Ich h�tte da ...
	AI_Output(hero, self, "Info_Mod_Matteo_Angebot_Kissen_15_02"); //Nein, nein. Was, um den Kopf beim Schlafen drauf abzulegen.
	AI_Output(self, hero, "Info_Mod_Matteo_Angebot_Kissen_36_03"); //Aha. Und was soll das sein?
	AI_Output(hero, self, "Info_Mod_Matteo_Angebot_Kissen_15_04"); //Wenn ich das w�sste. Vielleicht ein Sack mit trockenem Gras drin.
	AI_Output(self, hero, "Info_Mod_Matteo_Angebot_Kissen_36_05"); //So was hab ich nicht. Vielleicht die Bauern ...
	AI_Output(hero, self, "Info_Mod_Matteo_Angebot_Kissen_15_06"); //Danke trotzdem. Ich suche dann mal weiter.

	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "Matteo konnte mir nicht helfen.");
};

INSTANCE Info_Mod_Matteo_ThorbenLehrling (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_ThorbenLehrling_Condition;
	information	= Info_Mod_Matteo_ThorbenLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Matteo_ThorbenLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorben_LehrlingQuest5))
	&& (Wld_IsTime(10,00,10,30))
	&& (Npc_HasItems(hero, ItMi_MatteoFesttisch) == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_ThorbenLehrling_Info()
{
	AI_Output(self, hero, "Info_Mod_Matteo_ThorbenLehrling_36_00"); //Ach, hallo. Wei�t du, wo Thorben ist?
	AI_Output(hero, self, "Info_Mod_Matteo_ThorbenLehrling_15_01"); //Ich bin seine Vertretung. Du willst deine Tische abholen?
	AI_Output(self, hero, "Info_Mod_Matteo_ThorbenLehrling_36_02"); //Richtig, richtig. Thorben und ich hatten einen Preis von 100 Goldm�nzen ausgehandelt.

	Info_ClearChoices	(Info_Mod_Matteo_ThorbenLehrling);

	Info_AddChoice	(Info_Mod_Matteo_ThorbenLehrling, "Da habe ich aber von einem ganz anderen Preis geh�rt.", Info_Mod_Matteo_ThorbenLehrling_B);
	Info_AddChoice	(Info_Mod_Matteo_ThorbenLehrling, "Hier sind die Tische.", Info_Mod_Matteo_ThorbenLehrling_A);
};

FUNC VOID Info_Mod_Matteo_ThorbenLehrling_B()
{
	AI_Output(hero, self, "Info_Mod_Matteo_ThorbenLehrling_B_15_00"); //Da habe ich aber von einem ganz anderen Preis geh�rt.
	AI_Output(self, hero, "Info_Mod_Matteo_ThorbenLehrling_B_36_01"); //Wie ich sehe, kann man dir nicht so einfach etwas vormachen. Na sch�n, hier hast du die 150 Goldm�nzen.

	Info_ClearChoices	(Info_Mod_Matteo_ThorbenLehrling);

	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Matteo_ThorbenLehrling, "(Feilschen) Noch ein kleiner Bonus f�r den schwer kranken Meister?", Info_Mod_Matteo_ThorbenLehrling_D);
	};

	Info_AddChoice	(Info_Mod_Matteo_ThorbenLehrling, "Abgemacht.", Info_Mod_Matteo_ThorbenLehrling_C);
};

FUNC VOID Info_Mod_Matteo_ThorbenLehrling_A()
{
	AI_Output(hero, self, "Info_Mod_Matteo_ThorbenLehrling_A_15_00"); //Hier sind die Tische.

	B_GiveInvItems	(hero, self, ItMi_MatteoFesttisch, 2);

	Npc_RemoveInvItems	(self, ItMi_MatteoFesttisch, 2);

	AI_Output(self, hero, "Info_Mod_Matteo_ThorbenLehrling_A_36_01"); //Na, das nenn ich mal schnellen Service. Einen wundersch�nen Tag w�nsche ich noch!

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Matteo_ThorbenLehrling);
};

FUNC VOID Info_Mod_Matteo_ThorbenLehrling_D()
{
	AI_Output(hero, self, "Info_Mod_Matteo_ThorbenLehrling_D_15_00"); //Noch ein kleiner Bonus f�r den schwer kranken Meister?

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_ThorbenLehrling_D_36_01"); //Wieso nicht? Ich bin heute eh in Spenderlaune. Bittesch�n, und einen sch�nen Tag noch.

		Npc_RemoveInvItems	(hero, ItMi_MatteoFesttisch, 2);

		CreateInvItems	(hero, ItMi_Gold, 250);

		B_GivePlayerXP	(150);

		B_RaiseHandelsgeschick (2);

		Info_ClearChoices	(Info_Mod_Matteo_ThorbenLehrling);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Matteo_ThorbenLehrling_D_36_02"); //Ich bin zu lange im Gesch�ft, um auf die Nummer hereinzufallen.

		Info_ClearChoices	(Info_Mod_Matteo_ThorbenLehrling);

		Info_AddChoice	(Info_Mod_Matteo_ThorbenLehrling, "Abgemacht.", Info_Mod_Matteo_ThorbenLehrling_C);
	};
};

FUNC VOID Info_Mod_Matteo_ThorbenLehrling_C()
{
	AI_Output(hero, self, "Info_Mod_Matteo_ThorbenLehrling_C_15_00"); //Abgemacht.

	B_GiveInvItems	(hero, self, ItMi_MatteoFesttisch, 2);

	Npc_RemoveInvItems	(self, ItMi_MatteoFesttisch, 2);

	AI_Output(self, hero, "Info_Mod_Matteo_ThorbenLehrling_C_36_01"); //Gut, gut, dann w�re das ja geregelt. Richte Thorben einen Gru� von mir aus!

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Matteo_ThorbenLehrling);
};

INSTANCE Info_Mod_Matteo_OberesViertel (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_OberesViertel_Condition;
	information	= Info_Mod_Matteo_OberesViertel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich m�chte in das Obere Viertel.";
};

FUNC INT Info_Mod_Matteo_OberesViertel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_OberesViertel_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_OberesViertel_15_00"); //Ich m�chte in das Obere Viertel.
	AI_Output(self, hero, "Info_Mod_Matteo_OberesViertel_36_01"); //Kein Problem! Warte, vielleicht doch. Ach nein, das kriegen wir schon hin!
	AI_Output(hero, self, "Info_Mod_Matteo_OberesViertel_15_02"); //Worum geht es?
	AI_Output(self, hero, "Info_Mod_Matteo_OberesViertel_36_03"); //Um in das Obere Viertel zu kommen, musst du entweder B�rger der Stadt sein - oder du schlie�t dich der Miliz an. (hastig) Wovon ich dir abraten w�rde.
	AI_Output(self, hero, "Info_Mod_Matteo_OberesViertel_36_04"); //Die einfachste M�glichkeit, den B�rgerstatus zu erreichen, ist, von einem der Meister als Lehrling angenommen zu werden.
	AI_Output(self, hero, "Info_Mod_Matteo_OberesViertel_36_05"); //Vorzugsweise bei mir, ich ben�tige dringend einen Lehrling!
	AI_Output(self, hero, "Info_Mod_Matteo_OberesViertel_36_06"); //Bevor ich dich anstellen kann, brauche ich aber die Zustimmung aller anderen Handwerksmeister, das w�ren Bosper, Thorben, Harad und Constantino.
	AI_Output(self, hero, "Info_Mod_Matteo_OberesViertel_36_07"); //Es wird also deine Aufgabe sein, sie zu �berzeugen!

	Log_CreateTopic	(TOPIC_MOD_B�RGER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_B�RGER, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_OBERESVIERTEL, TOPIC_MOD_B�RGER, "Um ins Obere Viertel zu kommen muss ich ein B�rger der Stadt oder ein Mitglied der Miliz sein.", "Um ein B�rger der Stadt zu werden muss ich der Lehrling von einem der f�nf Meister sein.");
};

INSTANCE Info_Mod_Matteo_Miliz (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Miliz_Condition;
	information	= Info_Mod_Matteo_Miliz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was muss ich tun um mich der Miliz anzuschlie�en?";
};

FUNC INT Info_Mod_Matteo_Miliz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Miliz_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Miliz_15_00"); //Was muss ich tun, um mich der Miliz anzuschlie�en?
	AI_Output(self, hero, "Info_Mod_Matteo_Miliz_36_01"); //Wenn du dich der Miliz anschlie�en willst, dann solltest du zu Lord Andre gehen.
	AI_Output(self, hero, "Info_Mod_Matteo_Miliz_36_02"); //Er entscheidet, wer bei der Miliz aufgenommen wird.
};

INSTANCE Info_Mod_Matteo_Andre (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Andre_Condition;
	information	= Info_Mod_Matteo_Andre_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wo finde ich Lord Andre?";
};

FUNC INT Info_Mod_Matteo_Andre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Miliz))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Andre_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Andre_15_00"); //Wo finde ich Lord Andre?
	AI_Output(self, hero, "Info_Mod_Matteo_Andre_36_01"); //In der Kaserne in der N�he des anderen Stadttors.
	AI_Output(self, hero, "Info_Mod_Matteo_Andre_36_02"); //Ein gro�er Mann - und ein guter Freund von mir!
};

INSTANCE Info_Mod_Matteo_Auftrag_2 (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Auftrag_2_Condition;
	information	= Info_Mod_Matteo_Auftrag_2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du auch eine Aufgabe f�r mich?";
};

FUNC INT Info_Mod_Matteo_Auftrag_2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Auftrag_2_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Auftrag_2_15_00"); //Hast du auch eine Aufgabe f�r mich?
	AI_Output(self, hero, "Info_Mod_Matteo_Auftrag_2_36_01"); //Wenn du schon fragst: ja!
	AI_Output(self, hero, "Info_Mod_Matteo_Auftrag_2_36_02"); //Du musst wissen, ich bin momentan �bergl�cklich und muss mich um gewisse Vorbereitungen k�mmern.
	AI_Output(self, hero, "Info_Mod_Matteo_Auftrag_2_36_03"); //Da bleibt nicht viel Zeit, f�r mein Gesch�ft zu werben. Also wirst du diese Aufgabe �bernehmen!
	
	B_GiveInvItems	(self, hero, MatteoFlugblaetter, 20);

	AI_Output(self, hero, "Info_Mod_Matteo_Auftrag_2_36_04"); //Verteil die Flugbl�tter unter den B�rgern dieser Stadt, und dem Herold kannst du auch Bescheid geben. Der hat doch eh nichts Sinnvolles zu quasseln!

	Log_CreateTopic	(TOPIC_MOD_MATTEOFLUGBLATT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MATTEOFLUGBLATT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MATTEOFLUGBLATT, "Um Matteos Stimme zu bekommen, soll ich f�r ihn Flugbl�tter verteilen.");
};

INSTANCE Info_Mod_Matteo_WieLehrling (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_WieLehrling_Condition;
	information	= Info_Mod_Matteo_WieLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kann ich auch Lehrling eines anderen Meisters werden?";
};

FUNC INT Info_Mod_Matteo_WieLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	{
		return 1;	
	};
};

FUNC VOID Info_Mod_Matteo_WieLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_WieLehrling_15_00"); //Kann ich auch Lehrling eines anderen Meisters werden?
	AI_Output(self, hero, "Info_Mod_Matteo_WieLehrling_36_01"); //(druckst herum) Na ja, die brauchen doch gar keine!
	AI_Output(self, hero, "Info_Mod_Matteo_WieLehrling_36_02"); //Harad und Thorben haben schon welche, Constantino w�rde am liebsten allein in seinem Haus verrotten, und Bosper ... wird nicht gut auf dich zu sprechen sein.
	AI_Output(self, hero, "Info_Mod_Matteo_WieLehrling_36_03"); //Glaub mir, bei mir bist du schon am besten aufgehoben!
	AI_Output(hero, self, "Info_Mod_Matteo_WieLehrling_15_04"); //Aber m�glich w�re es schon?
	AI_Output(self, hero, "Info_Mod_Matteo_WieLehrling_36_05"); //(ungl�cklich) Theoretisch, ja. Aber bestimmt nicht sinnvoll.
};

INSTANCE Info_Mod_Matteo_Flugblaetter (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Flugblaetter_Condition;
	information	= Info_Mod_Matteo_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab die Flugbl�tter verteilt.";
};

FUNC INT Info_Mod_Matteo_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Mod_Flugblaetter == 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Flugblaetter_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Flugblaetter_15_00"); //Ich hab die Flugbl�tter verteilt.
	AI_Output(self, hero, "Info_Mod_Matteo_Flugblaetter_36_01"); //Ich hab's gemerkt, der Laden war heute rammelvoll.
	AI_Output(self, hero, "Info_Mod_Matteo_Flugblaetter_36_02"); //Ich liebe es, den Menschen dabei zuzusehen, wie sie meine Nahrungsmittel betrachten und abwiegen.
	AI_Output(self, hero, "Info_Mod_Matteo_Flugblaetter_36_03"); //Damit hast du meinen Teil der Bedingung erf�llt. Komm zur�ck, wenn du die Zustimmung aller Meister hast.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_LogEntry	(TOPIC_MOD_MATTEOFLUGBLATT, "Matteo war sehr zufrieden mit meiner Arbeit. Er wird mir seine Stimme geben.");
	B_SetTopicStatus	(TOPIC_MOD_MATTEOFLUGBLATT, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	Mod_LehrlingsStimmen += 1;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Matteo_Aufnahme (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Aufnahme_Condition;
	information	= Info_Mod_Matteo_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich bin bereit, ein Lehrling zu werden.";
};

FUNC INT Info_Mod_Matteo_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Mod_IstLehrling == 0)
	&& (Mod_LehrlingsStimmen == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Aufnahme_15_00"); //Ich bin bereit, ein Lehrling zu werden.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_36_01"); //(erfreut) Ich darf dich willkommen hei�en?

	Info_ClearChoices	(Info_Mod_Matteo_Aufnahme);

	Info_AddChoice	(Info_Mod_Matteo_Aufnahme, "Nein, ich habe einen anderen Meister gew�hlt.", Info_Mod_Matteo_Aufnahme_B);
	Info_AddChoice	(Info_Mod_Matteo_Aufnahme, "Ja, ich werde dein Lehrling.", Info_Mod_Matteo_Aufnahme_A);
};

FUNC VOID Info_Mod_Matteo_Aufnahme_B()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Aufnahme_B_15_00"); //Nein, ich habe einen anderen Meister gew�hlt.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_B_36_01"); //(beleidigt) Das ist nun der Dank f�r mein Entgegenkommen?
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_B_36_02"); //Nein - sag nichts. Ich will nichts h�ren!
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_B_36_03"); //Sieh zu, dass du rauskommst, und lass dich nicht mehr blicken!

	Info_ClearChoices	(Info_Mod_Matteo_Aufnahme);
};

FUNC VOID Info_Mod_Matteo_Aufnahme_A()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Aufnahme_A_15_00"); //Ja, ich werde dein Lehrling.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_01"); //Und das soll nicht zu deinem Schaden sein!
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_02"); //Ich will dir alles sagen, was du als zuk�nftiger H�ndler wissen musst.

	CreateInvItems	(hero, ItAr_Vlk_H, 1);

	B_ShowGivenThings	("B�rgerkleidung erhalten");

	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_03"); //Lass uns die Lehrstunden aufteilen in theoretische und praktische Teile.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_04"); //In den praktischen wirst du mir etwas zur Hand gehen und lernen, dass der Beruf nicht nur aus Vergn�gen besteht.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_05"); //Zus�tzlich bekommst du nun nat�rlich das B�rgerrecht verliehen - das war es doch, was du wolltest?
	AI_Output(hero, self, "Info_Mod_Matteo_Aufnahme_A_15_06"); //Kann jedenfalls nicht schaden.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_07"); //Fein, fein. Dann beginnen wir gleich hier und jetzt mit unserer ersten Lehrstunde:
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_08"); //Du wirst dich sicher wundern, warum mein Obst immer so frisch und wohlgerundet aussieht.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_09"); //Selbstverst�ndlich sehen nicht alle meine Lieferungen so appetitlich aus - leider!
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_10"); //Deshalb greift der gewiefte H�ndler zu einem Trick: Die schadhafte Ware wird einfach nicht offen pr�sentiert!
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_11"); //Vor mir auf dem Warentisch beispielsweise - nimm die oberste Schicht Pilze weg, und die darunter liegende w�rdest du mit spitzen Fingern nicht mehr anfassen.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_12"); //Trotzdem werden sie gekauft, weil viele Kunden nicht genau nachschauen. Das ist unser Vorteil!
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_13"); //Was lernen wir daraus? Pr�sentation ist alles! Achte also auch darauf, dass dein Gesch�ft gepflegt aussieht.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_14"); //Ein Tipp von mir: Schmiere die Auslagefl�chen mit Fett ein, das l�sst sie im Sonnenlicht gl�nzen und poliert wirken.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_15"); //Geht schneller, als sie tats�chlich zu polieren. (lacht)
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_16"); //An diese Einf�hrung anschlie�end habe ich gleich die erste Aufgabe f�r dich.
	AI_Output(hero, self, "Info_Mod_Matteo_Aufnahme_A_15_17"); //(st�hnt) Ich soll putzen?
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_18"); //Nein, nein, das kriege ich schon allein hin. Aber ich habe einen Korb mit �pfeln bekommen.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_19"); //Du wirst die �pfel sortieren nach Auslegetauglichkeit - am besten in zwei Teile, die tauglichen und die untauglichen.
	AI_Output(self, hero, "Info_Mod_Matteo_Aufnahme_A_36_20"); //Den Korb findest du dort hinten auf dem Tisch. Sag Bescheid, sobald du fertig bist.

	Mod_IstLehrling	= 1;

	Mod_LehrlingBei = 3;

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_MATTEO_ONE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_MATTEO_ONE, LOG_RUNNING);

	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	{
		B_LogEntry_NMore	(TOPIC_MOD_B�RGER, TOPIC_MOD_LEHRLING_MATTEO_ONE, TOPIC_MOD_TORLOFSPIONAGE, "Matteo, der H�ndler, hat mich als seinen Lehrling aufgenommen. Dadurch bin ich jetzt ein B�rger der Stadt.", "Als Erstes hat Matteo mir aufgetragen, den Korb voller �pfel nach auslegetauglichen und -untauglichen �pfeln zu sortieren. Ich sollte jeden Apfel einzeln in Augenschein nehmen.", "Da Matteo mich als seinen Lehrling aufgenommen hat ist es mir jetzt m�glich das Obere Viertel zu betreten.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_B�RGER, TOPIC_MOD_LEHRLING_MATTEO_ONE, "Matteo, der H�ndler, hat mich als seinen Lehrling aufgenommen. Dadurch bin ich jetzt ein B�rger der Stadt.", "Als Erstes hat Matteo mir aufgetragen, den Korb voller �pfel nach auslegetauglichen und -untauglichen �pfeln zu sortieren. Ich sollte jeden Apfel einzeln in Augenschein nehmen.");
	};

	Wld_SendTrigger	("EVT_MATTEO_APFELKORB");

	Wld_AssignRoomToGuild ("matteo",		GIL_NONE);

	B_SetTopicStatus	(TOPIC_MOD_B�RGER, LOG_SUCCESS);

	CurrentNQ += 1;

	B_RaiseHandelsgeschick	(5);

	Info_ClearChoices	(Info_Mod_Matteo_Aufnahme);
};

INSTANCE Info_Mod_Matteo_GildenZeug (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_GildenZeug_Condition;
	information	= Info_Mod_Matteo_GildenZeug_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Matteo_GildenZeug_Condition()
{
	if (Mod_LehrlingBei == 3)
	&& (hero.guild > GIL_NONE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_GildenZeug_Info()
{
	if (hero.guild == GIL_PAL)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_GildenZeug_36_00"); //Sieh mal einer an, zu den Milizion�ren bist du gegangen!
	}
	else if (hero.guild == GIL_VLK)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_GildenZeug_36_01"); //Dich hat's wohl zu den Innos-Typen verschlagen, wie? (lacht)
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_GildenZeug_36_02"); //Wie ich sehe, hast du bei deiner Fraktion eine gute Wahl getroffen.
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_GildenZeug_36_03"); //S�ldner willst du werden? Lass dir blo� nicht einfallen, meine Warentransporte zu �berfallen!
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_GildenZeug_36_04"); //Du verehrst Beliar? Da h�tte ich dich schon f�r kl�ger gehalten ...
	};
};

INSTANCE Info_Mod_Matteo_LehrlingQuest (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_LehrlingQuest_Condition;
	information	= Info_Mod_Matteo_LehrlingQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier sind die sortierten �pfel.";
};

FUNC INT Info_Mod_Matteo_LehrlingQuest_Condition()
{
	if (Mod_LehrlingBei == 3)
	&& (Npc_HasItems(hero, ItFo_Apple_Matteo_Gut) == 10)
	&& (Npc_HasItems(hero, ItFo_Apple_Matteo_Schlecht) == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest_15_00"); //Hier sind die sortierten �pfel.

	Npc_RemoveInvItems	(hero, Itfo_Apple_Matteo_Gut, 10);
	Npc_RemoveInvItems	(hero, Itfo_Apple_Matteo_Schlecht, 10);

	B_ShowGivenThings	("10 knackige �pfel und 10 faule �pfel gegeben");

	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest_36_01"); //(freudig) Das ging ja schnell! Lass mal sehen ... (holt einen Apfel hervor) Ja, saubere Arbeit nenne ich das! Das hilft mir ungemein!
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest_36_02"); //Komm bald mal wieder vorbei, dann k�nnen wir unsere Arbeit fortsetzen!

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_MATTEO_ONE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Matteo_LehrlingQuest2 (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_LehrlingQuest2_Condition;
	information	= Info_Mod_Matteo_LehrlingQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich bin mal wieder bereit f�r etwas Theorie.";
};

FUNC INT Info_Mod_Matteo_LehrlingQuest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest2_15_00"); //Ich bin mal wieder bereit f�r etwas Theorie.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_01"); //Ich habe auch gerade etwas Zeit. Lass mich kurz nachdenken ... Dieses Mal wird es um den Konkurrenzkampf gehen.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_02"); //Wie du sicher wei�t, gibt es viele H�ndler hier in der Stadt.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_03"); //Nun kann man sich sicher fragen, warum es diese Vielfalt gibt und der eine den anderen nicht ausstechen kann.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_04"); //Die Antwort darauf ist: die Spezialisierung.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_05"); //Jeder H�ndler hat ein eigenes Angebot, und bestimmte Waren gibt es nur bei bestimmten H�ndlern.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_06"); //So hat jeder von uns seine Daseinsberechtigung.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_07"); //Zus�tzlich gibt es aber noch andere M�glichkeiten, sich Wettbewerbsvorteile zu verschaffen:
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_08"); //Man kann etwa Waren besonderer Qualit�t anbieten - wie ich es tue - oder besonders g�nstig sein.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_09"); //Hauptsache ist, dass daf�r Nachfrage besteht.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_10"); //Aufmerksam machst du die Kunden durch Werbung. Darin hast du ja schon deine ersten Erfahrungen gesammelt.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_11"); //In der praktischen �bung soll es heute um das, �h, Abwerben gehen.
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest2_15_12"); //Abwerben von deinen Konkurrenten?
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_13"); //Richtig! Ich habe mir da schon etwas Feines ausgedacht.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_14"); //Du erinnerst dich an die �pfel, die du beim letzten Mal sortiert hast?
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_15"); //Eine Menge davon sind wirklich nicht zu gebrauchen.
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest2_15_16"); //Was soll ich damit tun?
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_17"); //Ich gebe dir, warte mal, f�nf der fauligen �pfel, und du legst sie f�nf Lebensmittelh�ndlern  in Khorinis in ihr Angebot. Jedem einen, ganz gerecht.

	B_GiveInvItems	(self, hero, ItFo_Apple_Matteo_Schlecht, 5);

	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_18"); //Am besten verwickelst du sie vorher in ein Gespr�ch, und wenn sie kurz wegschauen - schwupps -, hast du ihren Stand pr�pariert.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_36_19"); //Wenn dann jemand an ihren Stand kommt und den Apfel sieht ... habe ich schon gewonnen! (lacht)

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_MATTEO_TWO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_MATTEO_TWO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_MATTEO_TWO, "Matteo hat mir f�nf faule �pfel mitgegeben, die ich an die Lebensmittelh�ndler in Khorinis verteilen soll. Um nicht entdeckt zu werden, soll ich die H�ndler vorher in ein Gespr�ch verwickeln.");

	B_RaiseHandelsgeschick	(5);

	Info_ClearChoices	(Info_Mod_Matteo_LehrlingQuest2);

	Info_AddChoice	(Info_Mod_Matteo_LehrlingQuest2, "Ist das denn in Ordnung?", Info_Mod_Matteo_LehrlingQuest2_B);
	Info_AddChoice	(Info_Mod_Matteo_LehrlingQuest2, "Wird erledigt.", Info_Mod_Matteo_LehrlingQuest2_A);
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest2_B()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest2_B_15_00"); //Ist das denn in Ordnung?
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest2_B_36_01"); //Dar�ber brauchst du dir keine Gedanken zu machen. Wir haben uns schon viel �blere Streiche gespielt.

	Info_ClearChoices	(Info_Mod_Matteo_LehrlingQuest2);
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest2_A()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest2_A_15_00"); //Wird erledigt.

	Info_ClearChoices	(Info_Mod_Matteo_LehrlingQuest2);
};

INSTANCE Info_Mod_Matteo_LehrlingQuest3 (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_LehrlingQuest3_Condition;
	information	= Info_Mod_Matteo_LehrlingQuest3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Matteo_LehrlingQuest3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest2))
	&& ((Mod_Baltram_Apfel+Mod_Jora_Apfel+Mod_Rupert_Apfel+Mod_Fenia_Apfel+Mod_Coragon_Apfel) == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest3_Info()
{
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest3_36_00"); //Sieh an, meine Idee fruchtet! Die Kunden str�men in mein Gesch�ft wie der Rauch in die Lunge eines Sektenspinners.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest3_36_01"); //Ich muss dir wieder f�r deine Hilfe danken!
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest3_15_02"); //Wann setzen wir den Unterricht fort?
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest3_36_03"); //In n�chster Zeit sieht es wahrscheinlich schlecht aus.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest3_36_04"); //Meine Verlobung mit Valentine steht kurz bevor, und wir haben ... anderes zu tun. Wenn du verstehst, was ich meine ... (lacht)
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest3_36_05"); //Du darfst mich nat�rlich trotzdem gern besuchen kommen. Ich sage dir schon Bescheid, wenn's weitergeht. Lass es dir so lange gutgehen!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_MATTEO_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Matteo_LehrlingQuest4 (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_LehrlingQuest4_Condition;
	information	= Info_Mod_Matteo_LehrlingQuest4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie sieht's aus mit einer weiteren Lehrstunde?";
};

FUNC INT Info_Mod_Matteo_LehrlingQuest4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest3))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest4_15_00"); //Wie sieht's aus mit einer weiteren Lehrstunde?
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_01"); //Ist mal wieder an der Zeit, was?
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_02"); //Ich muss dich aber vorwarnen: Zum n�chsten Thema kann ich dir nur eine kleine praktische �bung anbieten, viel mehr gibt es nicht her.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_03"); //Heute geht es um die Preispolitik.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_04"); //Wir unterscheiden hierbei den Verk�uferpreis vom K�uferpreis.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_05"); //Der Verk�uferpreis ist der, zu dem ich gern verkaufen w�rde, sodass mir nach Abzug aller Ankaufs- und Nebenkosten ein ordentlicher Gewinn �brig bleibt.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_06"); //Diesen Preis muss ich dann jedoch erstens noch an die Konkurrenten anpassen.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_07"); //Ich kann einfach g�nstiger verkaufen oder den Preis absichtlich erh�ren, damit die K�ufer denken, bei mir gebe es gute Qualit�t - was, wie du wei�t, bei mir der Fall ist.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_08"); //Die K�ufer sind der n�chste Faktor. Ich verkaufe meine Waren direkt neben dem Eingang zum Oberen Viertel, habe also auch von dort Kunden.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_09"); //Die sind schon eher bereit, ordentlich was abzudr�cken, als die armen Schlucker aus dem Hafenviertel.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_10"); //Letzter Punkt, auf den du achten musst, ist der Umgebungspreis.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_11"); //Das hei�t ganz einfach: Verkaufst du nur teure Sachen, kannst den den Preis selbst bei den billigen anheben.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_12"); //Ein teures Produkt neben lauter g�nstigen anzubieten, hat dagegen wenig Sinn.
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest4_15_13"); //Ich denke, ich hab's verstanden.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_14"); //Na fein! Dann will ich jetzt mal anhand dreier Fragen pr�fen, ob du die Materie beherrschst!
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_36_15"); //Los geht's! Wer wird das teurere Brot verkaufen - Fenia aus dem Hafenviertel oder ich?

	Info_ClearChoices	(Info_Mod_Matteo_LehrlingQuest4);

	Info_AddChoice	(Info_Mod_Matteo_LehrlingQuest4, "Du.", Info_Mod_Matteo_LehrlingQuest4_B);
	Info_AddChoice	(Info_Mod_Matteo_LehrlingQuest4, "Fenia.", Info_Mod_Matteo_LehrlingQuest4_A);
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_C()
{
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_C_36_00"); //Weiter: Ich verkaufe g�nstig Handwerkerzubeh�r und habe eine Goldschatulle gefunden.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_C_36_01"); //Werde ich sie neben meinen anderen Produkten nun �ber oder unter Wert verkaufen?

	Info_ClearChoices	(Info_Mod_Matteo_LehrlingQuest4);

	Info_AddChoice	(Info_Mod_Matteo_LehrlingQuest4, "Du verkaufst die Schatulle unter ihrem Wert.", Info_Mod_Matteo_LehrlingQuest4_E);
	Info_AddChoice	(Info_Mod_Matteo_LehrlingQuest4, "Du verkaufst die Schatulle �ber ihrem Wert.", Info_Mod_Matteo_LehrlingQuest4_D);
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_B()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest4_B_15_00"); //Du.

	Mod_Matteo_Fragen += 1;

	Info_Mod_Matteo_LehrlingQuest4_C();
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_A()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest4_A_15_00"); //Fenia.

	Info_Mod_Matteo_LehrlingQuest4_C();
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_F()
{
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_F_36_00"); //Und drittens: Ich bekomme meine Waren, schlage auf meinen Einkaufspreis ein paar Goldm�nzen drauf und verkaufe sie weiter.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_F_36_01"); //Welchen Preis habe ich dabei au�er Acht gelassen?

	Info_ClearChoices	(Info_Mod_Matteo_LehrlingQuest4);

	Info_AddChoice	(Info_Mod_Matteo_LehrlingQuest4, "Den Verk�uferpreis.", Info_Mod_Matteo_LehrlingQuest4_H);
	Info_AddChoice	(Info_Mod_Matteo_LehrlingQuest4, "Den K�uferpreis.", Info_Mod_Matteo_LehrlingQuest4_G);
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_E()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest4_E_15_00"); //Du verkaufst die Schatulle unter ihrem Wert.

	Mod_Matteo_Fragen += 1;

	Info_Mod_Matteo_LehrlingQuest4_F();
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_D()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest4_D_15_00"); //Du verkaufst die Schatulle �ber ihrem Wert.

	Info_Mod_Matteo_LehrlingQuest4_F();
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_I()
{
	if (Mod_Matteo_Fragen == 0)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_I_36_00"); //(eingeschnappt) Mann, Mann, wof�r erz�hl ich dir eigentlich was, wenn du eh nichts beh�ltst? Na ja, ist ja dein Problem.
	}
	else if (Mod_Matteo_Fragen == 1)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_I_36_01"); //Da ist aber nicht viel bei dir h�ngen geblieben. Oder du taugst nicht als H�ndler. Immer sch�n flei�ig lernen!

		B_GivePlayerXP	(50);
	}
	else if (Mod_Matteo_Fragen == 2)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_I_36_02"); //Das h�rt sich doch schon ganz gut an. Noch nicht ganz fehlerfrei, aber aus dir kann noch was werden!

		B_GivePlayerXP	(100);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_I_36_03"); //Sehr gut, tadellose Leistung!

		B_GivePlayerXP	(200);
	};

	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest4_I_36_04"); //Das war es dann auch schon wieder f�r dieses Mal. Komm doch bald wieder!

	Info_ClearChoices	(Info_Mod_Matteo_LehrlingQuest4);
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_H()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest4_H_15_00"); //Den Verk�uferpreis.

	Info_Mod_Matteo_LehrlingQuest4_I();
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest4_G()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest4_G_15_00"); //Den K�uferpreis.

	Mod_Matteo_Fragen += 1;

	Info_Mod_Matteo_LehrlingQuest4_I();
};

INSTANCE Info_Mod_Matteo_LehrlingQuest5 (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_LehrlingQuest5_Condition;
	information	= Info_Mod_Matteo_LehrlingQuest5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Matteo_LehrlingQuest5_Condition()
{
	if (Mod_LehrlingBei == 3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Moe_Anschlaege))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest5_Info()
{
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest5_36_00"); //Du, sag mal - diese Plakate von dir ...
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest5_15_01"); //... Waren eine Verunglimpfungskampagne.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest5_36_02"); //Na, da bin ich aber erleichtert.
};

INSTANCE Info_Mod_Matteo_LehrlingQuest6 (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_LehrlingQuest6_Condition;
	information	= Info_Mod_Matteo_LehrlingQuest6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier bin ich mal wieder.";
};

FUNC INT Info_Mod_Matteo_LehrlingQuest6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest4))
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest6_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest6_15_00"); //Hier bin ich mal wieder.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_01"); //Und ich bin auch noch hier. (lacht) Hast auf deinen ganzen Wanderungen doch noch mal Zeit f�r den alten Matteo gefunden?
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest6_15_02"); //Ausnahmsweise.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_03"); //Na, da bin ich aber froh! Bist ja schon eine kleine Ber�hmtheit!
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest6_15_04"); //So ist das Leben ...
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_05"); //Klingst fast, als h�ttest du es eilig. Dann will ich dich nicht allzu lange mit dem heutigen Thema bel�stigen.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_06"); //Heute werde ich dir erz�hlen, wie du hier in Khorinis an besondere Ware kommst.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_07"); //Damit meine ich Ware, die andere H�ndler nicht bekommen, Ware, mit der ich so erfolgreich geworden bin.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_08"); //Mein Geheimnis sozusagen.
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest6_15_09"); //Das klingt ja mal spannend.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_10"); //Glaub ich dir! Ein Wort: Geheimnis - damit bekommt man volle Aufmerksamkeit!
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_11"); //Und es ist sogar so geheim, dass es nicht mal die Stadtwache erfahren muss.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_12"); //Der normale Warenaustausch wird von den Paladinen kontrolliert.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_13"); //Durch die zwei Stadttore kommen Nahrungsmittel, Bergbauprodukte und ab und zu Handwerksprodukte.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_14"); //In der Stadt selbst wird haupts�chlich Handwerksbedarf hergestellt, und nat�rlich Waffen.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_15"); //Aus Myrtana kommen �ber den Seeweg selten Lieferungen, und wenn, dann werden sie sofort von Lord Hagen eingesackt.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_16"); //Und dann gibt's da noch die Piraten ...
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest6_15_17"); //Ich verstehe.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_18"); //Nicht wahr? Jharkendar bietet eine F�lle von exotischen Produkten, und der Grog der Piraten ist auch nicht zu verachten!
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_19"); //Der Umschlagplatz ist ein Strand n�rdlich von Khorinis. Dort treffe ich mich w�chentlich mit ihnen und kaufe ihnen ihr Gut ab.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_20"); //Gerade heute m�sste ich mich wieder mit ihnen treffen.
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest6_15_21"); //Arbeit f�r mich.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_22"); //Hehe, du hast es erkannt. An denen kannst du dann gleich dein Handelsgeschick ausprobieren, knallharte Verhandlungspartner sind das.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_23"); //Hier hast du 300 Goldm�nzen f�r zwei Kisten mit Grog. Alles, was du niedriger raushandeln kannst, geh�rt dir.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest6_15_24"); //Dann mache ich mich mal auf den Weg.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest6_36_25"); //Tu das. Viel Erfolg!

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_MATTEO_THREE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_MATTEO_THREE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_MATTEO_THREE, "Ich soll zu den Piraten am Strand n�rdlich von Khorinis und mir zwei Kisten Grog geben lassen. Da ich nur 300 Goldm�nzen von Matteo vorgeschossen bekommen habe, sollte ich versuchen, den Preis zu dr�cken.");

	B_RaiseHandelsgeschick	(5);

	Wld_InsertNpc	(Mod_7585_PIR_PIRAT_NW,	"NW_CITY_PIRATESCAMP_03");
};

INSTANCE Info_Mod_Matteo_LehrlingQuest7 (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_LehrlingQuest7_Condition;
	information	= Info_Mod_Matteo_LehrlingQuest7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bittesch�n, zwei Kisten Grog.";
};

FUNC INT Info_Mod_Matteo_LehrlingQuest7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pirat_Hi))
	&& (Npc_HasItems(hero, ItMi_GrogPaket_Matteo) == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest7_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest7_15_00"); //Bittesch�n, zwei Kisten Grog.

	B_GiveInvItems	(hero, self, ItMi_GrogPaket_Matteo, 2);

	Npc_RemoveInvItems	(self, ItMi_GrogPaket_Matteo, 2);

	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest7_36_01"); //Danke, Mann. Ehrlich gesagt mag ich das Piratengesocks nicht. Aber der Grog verkauft sich gut!
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest7_36_02"); //Damit ist deine Lehrzeit bei mir nun beendet. Ich habe dir alles erz�hlt, was du wissen musst, um als H�ndler bestehen zu k�nnen.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest7_36_03"); //Und du hast mir gut unter die Arme gegriffen. Das will ich nicht ganz unbelohnt lassen.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest7_36_04"); //Du sollst diesen gl�nzenden Ring haben. Er wird deine Verhandlungspartner ganz sch�n beeindrucken!

	B_GiveInvItems	(self, hero, ItRi_Verhandlungsring, 1);

	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest7_15_05"); //Vielen Dank.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest7_36_06"); //Keine Ursache. Und nun mach's gut!

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_MATTEO_THREE, LOG_SUCCESS);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_46);
};

INSTANCE Info_Mod_Matteo_LehrlingQuest8 (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_LehrlingQuest8_Condition;
	information	= Info_Mod_Matteo_LehrlingQuest8_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie l�uft's bei dir?";
};

FUNC INT Info_Mod_Matteo_LehrlingQuest8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest7))
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_LehrlingQuest8_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest8_15_00"); //Wie l�uft's bei dir?
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest8_36_01"); //Dass ich dich noch mal wiedersehe! Gut, gut, alles bestens. Und du bist noch flei�ig auf Reisen?
	AI_Output(hero, self, "Info_Mod_Matteo_LehrlingQuest8_15_02"); //Irgendjemand muss ja mal alles in Ordnung bringen.
	AI_Output(self, hero, "Info_Mod_Matteo_LehrlingQuest8_36_03"); //Na, da hast du dir ja was vorgenommen! (lacht)
};

INSTANCE Info_Mod_Matteo_Einschaetzung (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Einschaetzung_Condition;
	information	= Info_Mod_Matteo_Einschaetzung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Kannst du mein Verhandlungsgeschick einsch�tzen?";
};

FUNC INT Info_Mod_Matteo_Einschaetzung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Einschaetzung_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Einschaetzung_15_00"); //Kannst du mein Verhandlungsgeschick einsch�tzen?
	AI_Output(self, hero, "Info_Mod_Matteo_Einschaetzung_36_01"); //Klar. Also ich w�rde sagen ...

	if (Mod_Verhandlungsgeschick	<	30)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_Einschaetzung_36_02"); //... H�ndler-Lehrling.
	}
	else if (Mod_Verhandlungsgeschick	<	50)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_Einschaetzung_36_03"); //... Kleiner H�ndler.
	}
	else if (Mod_Verhandlungsgeschick	<	75)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_Einschaetzung_36_04"); //... H�ndler.
	}
	else if (Mod_Verhandlungsgeschick	<	100)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_Einschaetzung_36_05"); //... Guter H�ndler.
	}
	else if (Mod_Verhandlungsgeschick	==	100)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_Einschaetzung_36_06"); //... Perfekter H�ndler.
	};
};

INSTANCE Info_Mod_Matteo_Angebot_Kaese (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Angebot_Kaese_Condition;
	information	= Info_Mod_Matteo_Angebot_Kaese_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab was von deinem Angebot gelesen.";
};

FUNC INT Info_Mod_Matteo_Angebot_Kaese_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Hi))
	&& (Mod_AngebotMatteo == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Angebot_Kaese_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Angebot_Kaese_15_00"); //Ich hab was von deinem Angebot gelesen.
	AI_Output(self, hero, "Info_Mod_Matteo_Angebot_Kaese_36_01"); //Du meinst den K�se. Ja, der kostet nur 10 Goldm�nzen und ist bei mir auch nur in den n�chsten Tagen erh�ltlich.

	Mod_MatteosKaeseAngebot	= Wld_GetDay();
};

INSTANCE Info_Mod_Matteo_Angebot_Vorbei (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Angebot_Vorbei_Condition;
	information	= Info_Mod_Matteo_Angebot_Vorbei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Matteo_Angebot_Vorbei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Angebot_Kaese))
	&& ((Wld_GetDay() - Mod_MatteosKaeseAngebot) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Angebot_Vorbei_Info()
{
	AI_Output(self, hero, "Info_Mod_Matteo_Angebot_Vorbei_36_00"); //Das Angebot ist ab jetzt nicht mehr g�ltig.
};

INSTANCE Info_Mod_Matteo_Kaese (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Kaese_Condition;
	information	= Info_Mod_Matteo_Kaese_Info;
	permanent	= 1;
	important	= 0;
	description	= "Gib mir ein St�ck K�se.";
};

FUNC INT Info_Mod_Matteo_Kaese_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Angebot_Kaese))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Angebot_Vorbei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Kaese_Info()
{
	AI_Output(hero, self, "Info_Mod_Matteo_Kaese_15_00"); //Gib mir ein St�ck K�se.

	if (Npc_HasItems(hero, ItMi_Gold) >= 10)
	{
		AI_Output(self, hero, "Info_Mod_Matteo_Kaese_36_01"); //Hier ist dein K�se.

		B_GiveInvItems	(hero, self, ItMi_Gold, 10);

		CreateInvItems	(self, ItFo_Cheese, 1);
		B_GiveInvItems	(self, hero, ItFo_Cheese, 1);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Matteo_Kaese_36_02"); //Komm wieder, wenn du genug Gold hast.
	};
};

INSTANCE Info_Mod_Matteo_Trade (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Trade_Condition;
	information	= Info_Mod_Matteo_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Matteo_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Hi))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Matteo_Aufnahme))
	|| (Mod_LehrlingBei == 3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Matteo_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Matteo_Pickpocket (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_Pickpocket_Condition;
	information	= Info_Mod_Matteo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Matteo_Pickpocket_Condition()
{
	C_Beklauen	(109, ItMi_Gold, 38);
};

FUNC VOID Info_Mod_Matteo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Matteo_Pickpocket);

	Info_AddChoice	(Info_Mod_Matteo_Pickpocket, DIALOG_BACK, Info_Mod_Matteo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Matteo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Matteo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Matteo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Matteo_Pickpocket);
};

FUNC VOID Info_Mod_Matteo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Matteo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Matteo_Pickpocket);

		Info_AddChoice	(Info_Mod_Matteo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Matteo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Matteo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Matteo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Matteo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Matteo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Matteo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Matteo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Matteo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Matteo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Matteo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Matteo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Matteo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Matteo_EXIT (C_INFO)
{
	npc		= Mod_529_NONE_Matteo_NW;
	nr		= 1;
	condition	= Info_Mod_Matteo_EXIT_Condition;
	information	= Info_Mod_Matteo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Matteo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Matteo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};