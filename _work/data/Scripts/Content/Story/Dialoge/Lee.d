INSTANCE Info_Mod_Lee_Hi (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Hi_Condition;
	information	= Info_Mod_Lee_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lee_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Hi_04_00"); //Du wieder? Nach deiner Nummer waren die Wassermagier ganz sch�n sauer. Du hast Gl�ck, dass sie momentan nicht hier im Lager sind.
};

INSTANCE Info_Mod_Lee_AL (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_AL_Condition;
	information	= Info_Mod_Lee_AL_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_AL_Condition()
{
	if (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_AL_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_AL_04_00"); //Nicht zu fassen ... das Alte Lager von Orks �berrannt. Ich wei� nicht, ob ich jetzt lachen oder weinen soll ...
};

INSTANCE Info_Mod_Lee_WieStehts (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_WieStehts_Condition;
	information	= Info_Mod_Lee_WieStehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie sieht es hier im Lager eigentlich aus nach dem Fall der Barriere?";
};

FUNC INT Info_Mod_Lee_WieStehts_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_WieStehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_00"); //Wie sieht es hier im Lager eigentlich aus nach dem Fall der Barriere?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_01"); //Ach, es ist nicht gerade einfacher geworden. Als die Barriere noch stand hatten wir alle ein gemeinsames Ziel: Ihren Fall und unsere Flucht.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_02"); //Jetzt, da sie nicht mehr steht, verhindert nur ein hartes Regiment, dass hier totale Anarchie Ausbricht. Sylvio ist mir da eine gro�e Hilfe, der wei�, wie man mit Strolchen und Tagedieben umgehen muss.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_03"); //Ja, und warum flieht ihr nicht einfach alle aus dem Minental, wie urspr�nglich geplant?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_04"); //Und wohin bitte? Den Paladinen, die sich in Khorinis niedergelassen haben in die Arme und danach der Galgen?
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_05"); //Nun ...
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_06"); //Nein, wenn wir nicht der Gerichtsbarkeit des K�nigs und seiner Paladine zum Opfer fallen wollen m�ssen wir schon etwas planvoller vorgehen.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_07"); //Einige unserer S�ldner haben sich ja bereits �ber den Pass geschlichen und sich in Khorinis auf dem Gro�bauernhof niedergelassen, um die Lage auszukundschaften, wie du schon sicherlich wei�t.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_08"); //Warum bitte geschlichen? Und warum nur so wenige?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_09"); //Sind dir schon mal die schr�gen V�gel am Pass aufgefallen? Die K�nigstreuen nennen sie sich. Der K�nig scheint sie dorthin gesandt zu haben, aber frag mich nicht, was sie da vorhaben.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_10"); //Naja, jedenfalls sind das kampferprobte Kerle, die uns die Tour versauen k�nnten, wenn gleich ein ganzer Pulk von uns �ber den Pass wollte.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_11"); //Und dann, tja, ist da noch der alte Zwist mit dem Alten Lager. Sie haben zwar ihre Einnahmequelle, ihre Mine, verloren, verkehren jetzt aber wie eine Hure mit K�nig und jedem anderen, der Geld und Erz hat.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_12"); //Und man kann nie wissen, was die als n�chstes vorhaben. Daher m�chte ich auf keinen Fall zu viele meiner M�nner aus dem Schutz des Lagers abziehen, sondern erst mal alles gut planen und vorbereiten.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_13"); //Und wie sehen diese ,,Vorbereitungen�� aus?
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_14"); //Wir trainieren unsere Leute und bereiten sie auf den finalen Schlag gegen den K�nig vor. Sonst werden wir nie wirklich in Frieden leben k�nnen.
	AI_Output(hero, self, "Info_Mod_Lee_WieStehts_15_15"); //Gegen den K�nig? Aber der ist doch auf dem Festland.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_16"); //Ja, auf dem Festland und geschw�cht von den Orks. Zu einem g�nstigen Zeitpunkt brechen wir aus dem Minental aus, bem�chtigen uns eines Schiffes und statten dem K�nig einen Besuch ab.
	AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_17"); //Und da es auf dem Festland mittlerweile von Orks nur so wimmeln soll, schulen wir viele unsere M�nner speziell im Kampf gegen Orks, bilden sie zu Orkj�gern aus, damit sie den behaarten Gr�nh�uten zeigen k�nnen, dass mit uns nicht zu spa�en ist.

	if (hero.guild == GIL_MIL) {
		AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_18"); //Wir nehmen aber nur die besten in die Reihen der Orkj�ger auf. Dich w�rde ich auch gerne dabei haben, da du schon fr�her gezeigt hast, dass du �ber Kampfkraft und Verstand verf�gst.
		AI_Output(self, hero, "Info_Mod_Lee_WieStehts_04_19"); //Sylvio f�hrt die Orkj�ger an und entscheidet dar�ber, wer mit machen darf. Schau eben, wo du dich im Lager n�tzlich machen kannst.

		Log_CreateTopic	(TOPIC_MOD_SLD_ORKJAEGER, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_RUNNING);
		B_LogEntry_More	(TOPIC_MOD_SLD_ORKJAEGER, TOPIC_MOD_HAGEN_ASYLANTEN, "Sylvio entscheidet, wer bei den Orkj�gern aufgenommen wird.", "Lee plant, mit seinen Gefolgsleuten aus dem Minental auszubrechen und zum Festland zu gelangen, wo sie den K�nig st�rzen wollen. Der Ausbruch wird bereits vorbereitet.");
	} else {
		B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Lee plant, mit seinen Gefolgsleuten aus dem Minental auszubrechen und zum Festland zu gelangen, wo sie den K�nig st�rzen wollen. Der Ausbruch wird bereits vorbereitet.");
	};
};

INSTANCE Info_Mod_Lee_Aufgabe (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Aufgabe_Condition;
	information	= Info_Mod_Lee_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du eine Aufgabe f�r mich?";
};

FUNC INT Info_Mod_Lee_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Aufgabe_15_00"); //Hast du eine Aufgabe f�r mich?
	AI_Output(self, hero, "Info_Mod_Lee_Aufgabe_04_01"); //Ja, da w�re tats�chlich etwas, was du erledigen k�nntest. Zuletzt hat mir ein Informant n�mlich berichtet, dass sich im Alten Lager was zusammenzubrauen scheint. Geh hin und spioniere etwas.
	AI_Output(self, hero, "Info_Mod_Lee_Aufgabe_04_02"); //Unterhalte dich dazu mit m�glichst vielen Schatten, da man bei denen unter der Hand immer die besten Informationen erhalten kann.
	AI_Output(self, hero, "Info_Mod_Lee_Aufgabe_04_03"); //Mordrag wird dir dazu eine Schattenr�stung geben, die er noch von seinem Aufenthalt im Alten Lager vor dem Fall der Barriere hat. Du findest ihn in der Kneipe.

	Log_CreateTopic	(TOPIC_MOD_SLD_SPY, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Lee gab mir den Auftrag im Alten Lager zu spionieren. Ich soll mir dazu eine Schattenr�stung von Mordrag holen und mich mit m�glichst vielen Schatten unterhalten.");
};

INSTANCE Info_Mod_Lee_GotoSylvio (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_GotoSylvio_Condition;
	information	= Info_Mod_Lee_GotoSylvio_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_GotoSylvio_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_GotoSylvio_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_GotoSylvio_04_00"); //Achja, fast h�tte ich es noch vergessen. Sylvio wollte sich noch mit demjenigen unterhalten, dem ich diesen Auftrag zuwies. Geh also am besten vorher noch zu ihm.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Sylvio wollte mich noch zuvor sprechen.");
};

INSTANCE Info_Mod_Lee_Infos (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Infos_Condition;
	information	= Info_Mod_Lee_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe wichtige Informationen (...)";
};

FUNC INT Info_Mod_Lee_Infos_Condition()
{
	if (Mod_SLD_Spy == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_00"); //Ich habe wichtige Informationen aus meinen Gespr�chen mit einigen Schatten gewonnen. Offenbar ist ein Gardist einem Mord zum Opfer gefallen.
	AI_Output(hero, self, "Info_Mod_Lee_Infos_15_01"); //Ein anderer Gardist will einen von unseren M�nnern als T�ter ausgemacht haben und das Alte Lager plant einen �berfall auf uns im Morgengrauen der n�chsten Tage.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_02"); //(ersch�ttert) Was?! Das Alte Lager kriegt wohl den Hals nicht voll.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_03"); //(nachdenklicher) �ber die Berge k�nnen sie nicht mehr kommen, daf�r haben wir schon gesorgt. Am ehesten werden sie es wohl mit einem frontalen �berfall versuchen, der uns einige Verluste bescheren soll.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_04"); //Ich werde meine M�nner die n�chsten Tage immer im Morgengrauen beim Haupteingang in Position bringen.
	AI_Output(self, hero, "Info_Mod_Lee_Infos_04_05"); //(zum Helden) Wenn du auch dabei w�rest, w�rde es dir einige Pluspunkte bescheren. Obwohl du uns nat�rlich jetzt schon einen gro�en Dienst erwiesen hast.

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Lee will den Angriff der Gardisten im Morgengrauen am Haupteingang abfangen. Wenn ich dabei w�re, k�nnte ich mich als K�mpfer bew�hren.");

	Mod_SLD_Spy = 2;

	Mod_SLD_KampfDay = Wld_GetDay();

	B_GivePlayerXP	(250);

	B_StartOtherRoutine	(self, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1283_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1282_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1281_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1280_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1278_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1279_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1277_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1276_SLD_Soeldner_MT, "GARDISTEN");
	B_StartOtherRoutine	(Mod_1284_SLD_Soeldner_MT, "GARDISTEN");
};

INSTANCE Info_Mod_Lee_SchlachtVerpasst (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SchlachtVerpasst_Condition;
	information	= Info_Mod_Lee_SchlachtVerpasst_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_SchlachtVerpasst_Condition()
{
	if (Mod_SLD_Spy == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SchlachtVerpasst_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtVerpasst_04_00"); //Schade, dass du beim Kampf nicht dabei warst. Den Gardisten haben wir eine ordentliche Abreibung verpasst. Von einem sterbenden Gardisten habe ich noch etwas mehr �ber den Mord erfahren.
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtVerpasst_04_01"); //Zeitpunkt und Erscheinungsbild passen nur auf Sentenza als M�rder. Der kriegt was zu h�ren. Mit denen aus dem Alten Lager Gesch�fte machen, also wirklich ...
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtVerpasst_04_02"); //Hier, dein Sold.

	B_ShowGivenThings	("200 Gold und 8 Erz erhalten");

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItMi_Nugget, 8);

	B_GivePlayerXP	(200);

	Mod_SLD_Spy = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1283_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1282_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1281_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1280_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1278_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1279_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1277_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1276_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1284_SLD_Soeldner_MT, "START");
};

INSTANCE Info_Mod_Lee_SchlachtDa (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SchlachtDa_Condition;
	information	= Info_Mod_Lee_SchlachtDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_SchlachtDa_Condition()
{
	if (Mod_SLD_Spy == 2)
	&& (Wld_GetDay() > Mod_SLD_KampfDay)
	&& (Wld_IsTime(05,00,08,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SchlachtDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDa_04_00"); //Sch�n, dass du da bist. Da kommen sie auch schon.

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7221_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7222_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7223_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7224_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7225_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7226_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7227_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7228_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7229_GRD_Gardist_MT, "OW_PATH_066");
	Wld_InsertNpc	(Mod_7230_GRD_Gardist_MT, "OW_PATH_066");
};

INSTANCE Info_Mod_Lee_SchlachtDabei (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SchlachtDabei_Condition;
	information	= Info_Mod_Lee_SchlachtDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_SchlachtDabei_Condition()
{
	if (Mod_SLD_Spy == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_SchlachtDa))
	&& (NpC_IsDead(Mod_7221_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7222_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7223_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7224_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7225_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7226_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7227_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7228_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7229_GRD_Gardist_MT))
	&& (NpC_IsDead(Mod_7230_GRD_Gardist_MT))
	&& (Mod_NL_SchlachtDa == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SchlachtDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_00"); //Ausgezeichnet. Die h�tten wir alle zerschmettert. Das Alte Lager wird etwas brauchen, bis es sich von dem Verlust erholt hat.
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_01"); //Von einem sterbenden Gardisten habe ich noch etwas mehr �ber den Mord erfahren. Zeitpunkt und Erscheinungsbild passen nur auf Sentenza als M�rder.
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_02"); //Der kriegt was zu h�ren. Mit denen aus dem Alten Lager Gesch�fte machen, also wirklich ...
	AI_Output(self, hero, "Info_Mod_Lee_SchlachtDabei_04_03"); //Achja, hier hast du Gold und Erz als deinen wohlverdienten Sold.

	B_ShowGivenThings	("300 Gold und 10 Erz erhalten");

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Nugget, 10);

	B_GivePlayerXP	(400);

	Mod_SLD_Spy = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1283_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1282_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1281_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1280_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1278_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1279_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1277_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1276_SLD_Soeldner_MT, "START");
	B_StartOtherRoutine	(Mod_1284_SLD_Soeldner_MT, "START");
};

INSTANCE Info_Mod_Lee_Kagan (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Kagan_Condition;
	information	= Info_Mod_Lee_Kagan_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Kagan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kagan_Isidro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Kagan_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Kagan_04_00"); //Ich habe geh�rt, dass durch dein Einwirken die beiden Sumpffritzen das Lager verlassen haben.
	AI_Output(hero, self, "Info_Mod_Lee_Kagan_15_01"); //Nun ...
	AI_Output(self, hero, "Info_Mod_Lee_Kagan_04_02"); //Das hast du wirklich gut gemacht. Nun werden die M�nner im Lager noch seltener zu dem Genuss von Sumpfkraut verf�hrt.
	AI_Output(self, hero, "Info_Mod_Lee_Kagan_04_03"); //Hier hast du etwas Erz und Gold als Entlohnung.

	B_ShowGivenThings	("200 Gold und 6 Erz erhalten");

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItMi_Nugget, 6);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lee_OrkjaegerDabei (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_OrkjaegerDabei_Condition;
	information	= Info_Mod_Lee_OrkjaegerDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_OrkjaegerDabei_Condition()
{
	if (Mod_Gilde == 19)
	&& (Mod_SLD_Orkjaeger == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_OrkjaegerDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerDabei_04_00"); //Gratulation. Habe geh�rt, dass du bei den Orkj�gern dabei bist. H�tte mich auch gewundert, wenn du es nicht geschafft h�ttest.
};

INSTANCE Info_Mod_Lee_OrkjaegerNoway (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_OrkjaegerNoway_Condition;
	information	= Info_Mod_Lee_OrkjaegerNoway_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_OrkjaegerNoway_Condition()
{
	if (Mod_SLD_Orkjaeger == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_OrkjaegerNoway_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerNoway_04_00"); //Wie sieht es eigentlich mit deiner Aufnahme bei den Orkj�gern aus? Geht es voran?
	AI_Output(hero, self, "Info_Mod_Lee_OrkjaegerNoway_15_01"); //Nein. Sylvio hat beschlossen mich nicht aufzunehmen.
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerNoway_04_02"); //Was?! Einen K�mpfer wie dich h�tte ich nur zu gerne in den Reihen der Orkj�ger gesehen. Zu schade. Es sei denn ...
	AI_Output(hero, self, "Info_Mod_Lee_OrkjaegerNoway_15_03"); //Ja, was?
	AI_Output(self, hero, "Info_Mod_Lee_OrkjaegerNoway_04_04"); //Nun, wenn du ihn zum Wettstreit forderst und den Sieg davontr�gst, w�rest du automatisch Anf�hrer der Orkj�ger. So sind die Regeln.
};

INSTANCE Info_Mod_Lee_Wettstreit (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Wettstreit_Condition;
	information	= Info_Mod_Lee_Wettstreit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dann fordere ich ihn zum Wettstreit.";
};

FUNC INT Info_Mod_Lee_Wettstreit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_OrkjaegerNoway))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Wettstreit_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Wettstreit_15_00"); //Dann fordere ich ihn zum Wettstreit.
	AI_Output(self, hero, "Info_Mod_Lee_Wettstreit_04_01"); //Dann geh zu Sylvio und sag ihm bescheid. Ich lasse in der Zwischenzeit alles vorbereiten.
	AI_Output(self, hero, "Info_Mod_Lee_Wettstreit_04_02"); //Komm dann wieder zu mir und ich unterrichte dich dar�ber, was du  zu tun hast.

	B_LogEntry	(TOPIC_MOD_SLD_ORKJAEGER, "Wenn ich Sylvio zum Wettstreit herausfordere und gewinnen, kann ich seine Position �bernehmen und auf diesem Weg doch noch Orkj�ger werden. Danach wird mir Lee erkl�ren, was ich zu tun habe.");
};

INSTANCE Info_Mod_Lee_GiveMap (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_GiveMap_Condition;
	information	= Info_Mod_Lee_GiveMap_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ok, wie sieht der Wettstreit aus?";
};

FUNC INT Info_Mod_Lee_GiveMap_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sylvio_Wettstreit))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_GiveMap_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_GiveMap_15_00"); //Ok, wie sieht der Wettstreit aus?
	AI_Output(self, hero, "Info_Mod_Lee_GiveMap_04_01"); //Hier hast du eine Karte.

	B_GiveInvItems	(self, hero, ItWr_Map_Wettstreit_01, 1);

	AI_Output(self, hero, "Info_Mod_Lee_GiveMap_04_02"); //Das blaue Kreuz zeigt dir den Aufenthaltsort eines Schl�ssels, das rote den einer Truhe, zu welcher der Schl�ssel passt. Es gibt einen 2ten Schl�ssel, den Sylvio sucht.
	AI_Output(self, hero, "Info_Mod_Lee_GiveMap_04_03"); //Wer mit den Inhalt der Truhe zuerst besorgt hat gewonnen. Alles verstanden? Na dann los.

	B_LogEntry	(TOPIC_MOD_SLD_ORKJAEGER, "Lee hat mir eine Karte mit zwei Kreuzen gegeben. Das Blaue Kreuz zeigt mir, wo ich den Schl�ssel f�r die Truhe finde, die durch das rote Kreuz gekennzeichnet ist. Ich soll den Inhalt der Truhe zu Lee bringen. Sylvio wird das gleiche Ziel verfolgen und dazu einen 2ten Schl�ssel finden m�ssen.");

	Mod_SLD_Wettstreit = 1;

	Wld_InsertNpc	(Mod_7231_SLD_Organisator_MT,	"LOCATION_29_04");
	Wld_InsertNpc	(Mod_7232_SLD_Organisator_MT,	"OW_ABYSS_SPAWN_WARAN");

	B_KillNpc	(Mod_7231_SLD_Organisator_MT);
	B_KillNpc	(Mod_7232_SLD_Organisator_MT);
};

INSTANCE Info_Mod_Lee_HabPfeife (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_HabPfeife_Condition;
	information	= Info_Mod_Lee_HabPfeife_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe den Inhalt der Truhe.";
};

FUNC INT Info_Mod_Lee_HabPfeife_Condition()
{
	if (Mod_SLD_Wettstreit == 3)
	&& (Npc_HasItems(hero, ItMi_LeePipe) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_HabPfeife_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_HabPfeife_15_00"); //Ich habe den Inhalt der Truhe.
	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_01"); //Zeig her ...

	B_GiveInvItems	(hero, self, ItMi_LeePipe, 1);

	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_02"); //Tatsache. Damit hast du den Wettstreit gewonnen. Gratuliere!
	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_03"); //(zu sich selbst) Ich frage mich nur, wo die S�ldner bleiben, die f�r die Schl�ssel zust�ndig waren.
	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_04"); //(wieder zum Helden) Naja, egal, wie dem auch sei, damit bist du nun Anf�hrer der Orkj�ger und somit selbst Orkj�ger. Hier ist deine neue R�stung.

	B_ShowGivenThings	("Orkj�gerr�stung erhalten");

	CreateInvItems	(hero, ItAr_Sld_H, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Sld_H);

	AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_05"); //Ein gutes St�ck. Deine Waffe kannst du dir bei Thofeistos abholen. Du wirst deine neuen Position bestimmt alle Ehre machen.

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Orkfriedhof))
	{
		AI_Output(self, hero, "Info_Mod_Lee_HabPfeife_04_06"); //So, jetzt kannst du auch zum Orkfriedhof eilen. Vielleicht kommst du ja noch rechtzeitig.
	};

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(600);

	B_G�ttergefallen(2, 5);

	Mod_Gilde = 19;

	Mod_LeeOJGBoss = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_SLD_ORKJAEGER, LOG_SUCCESS);

	if (!Npc_KnowsInfo(hero, Info_Mod_Tarrok_AtStonehenge))
	{
		B_StartOtherRoutine	(Mod_10000_Orc_Tarrok_MT, "START");
	};
};

INSTANCE Info_Mod_Lee_Orkfriedhof (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Orkfriedhof_Condition;
	information	= Info_Mod_Lee_Orkfriedhof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Orkfriedhof_Condition()
{
	if (Mod_NL_UOS == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Orkfriedhof_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_00"); //Hey, gut dass du vorbeikommst.
	
	B_Say	(hero, self, "$WHATSUP");

	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_02"); //Das Sumpflager hat sich an uns gewandt und um unsere Hilfe gebeten.
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_03"); //Als einige Sumpffritzen k�rzlich den Orkfriedhof nach Sch�tzen und Artefakten absuchten, erhoben sich pl�tzlich die sterblichen �berreste der Orks zu untotem Dasein. Nur einem Novizen ist die Flucht gelungen.
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_04"); //Wir sollen nun unsere F�higkeit im Kampf mit den Gr�nh�uten einsetzen und nach �berlebenden suchen.
	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_05"); //Die Bezahlung ist gut und unsere Jungs k�nnen ein bisschen Extratraining brauchen.
	AI_Output(hero, self, "Info_Mod_Lee_Orkfriedhof_15_06"); //Orkfriedhof?! Untote Orks?! Da muss ich unbedingt hin ...

	Log_CreateTopic	(TOPIC_MOD_SLD_FRIEDHOF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_FRIEDHOF, LOG_RUNNING);

	if (Mod_Gilde == 19)
	{
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_07"); //Hey, mit soviel Begeisterung hatte ich gar nicht gerechnet, auch, wenn ich gehofft hatte, du w�rdest unsere Jungs im Kampf anf�hren.
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_08"); //Sie warten bereits vor dem Orkfriedhof um loszulegen. Beeile dich, damit du nicht den ganzen Spa� vers�umst.

		B_LogEntry	(TOPIC_MOD_SLD_FRIEDHOF, "Orkfriedhof?! Untote Orks?! Da muss der Schamane sein ...");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_09"); //Hey, soviel Begeisterung f�r den Kampf ehrt dich. Du musst jedoch erst Orkj�ger werden, um die Jungs bei ihrer Mission begleiten zu k�nnen.
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_10"); //Aber viel Zeit hast du nicht mehr, bevor es losgeht. (z�gerlich) Es g�be nur noch die M�glichkeit ...
		AI_Output(hero, self, "Info_Mod_Lee_Orkfriedhof_15_11"); //Ja, was?
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_12"); //Du m�sstest Sylvio zum Wettstreit herausfordern und ihn besiegen, um seine Position einzunehmen. Wenn du das willst ...
		AI_Output(hero, self, "Info_Mod_Lee_Orkfriedhof_15_13"); //Ja, ich muss in diesen Friedhof.
		AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_14"); //Ok, dann sag Sylvio bescheid und komm dann wieder zu mir.

		B_LogEntry_More	(TOPIC_MOD_SLD_ORKJAEGER, TOPIC_MOD_SLD_FRIEDHOF, "Wenn ich Sylvio zum Wettstreit herausfordere und gewinnen, kann ich seine Position �bernehmen und auf diesem Weg doch noch Orkj�ger werden. Danach wird mir Lee erkl�ren, was ich zu tun habe.", "Orkfriedhof?! Untote Orks?! Da muss der Schamane sein ... Ich erhalte jedoch erst Einlass in den Friedhof, wenn ich Orkj�ger bin.");
	};

	AI_Output(self, hero, "Info_Mod_Lee_Orkfriedhof_04_15"); //Hier hab ich noch ein paar Teleport-Spruchrollen f�r dich. Haben dir Gurus vor einiger Zeit angefertigt ...

	B_GiveInvItems	(self, hero, ItSc_TeleportOrkfriedhof, 3);
};

INSTANCE Info_Mod_Lee_OrkschamaneTot (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_OrkschamaneTot_Condition;
	information	= Info_Mod_Lee_OrkschamaneTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_OrkschamaneTot_Condition()
{
	if ((Mod_NL_UOS == 8)
	|| (Mod_NL_UOS == 7))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_OrkschamaneTot_Info()
{
	if (Mod_NL_UOS == 7)
	{
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_00"); //Du hast es geschafft. Das Sumpflager war au�erordentlich zufrieden �ber der Rettung seiner Leute und hat uns gro�z�gig daf�r honoriert. Hier ist dein Anteil.

		CreateInvItems	(hero, ItMi_Gold, 400);
		CreateInvItems	(hero, ItMi_Nugget, 4);
		CreateInvItems	(hero, ItPo_Health_03, 5);

		B_GivePlayerXP	(500);

		B_ShowGivenThings	("400 Gold, 4 Erzbrocken und 5 Extrakte der Heilung erhalten");

		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_01"); //Aber nun sprich: Wo bleiben denn unsere Jungs. Machen sie eine wohlverdiente Rast im Sumpflager?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_02"); //�hh, nein. Nun ... die ganzen Untoten und Orks haben ihnen ziemlich zugesetzt. Was soll ich sagen ... alle sind tot (zu sich selbst) oder untot ...
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_03"); //(ersch�ttert) Ich hoffe, das ist ein �bler Scherz.
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_04"); //Tja, ich w�nschte, es w�re so.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_05"); //(resigniert) So viele gute M�nner ... Diese ... diese verfluchten Orks. Das werden sie mir b��en.

		if (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_06"); //(w�tend) Und du hast in deiner Position als Orkanf�hrer kl�glich versagt, wenn sie alle den Tod fanden.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_07"); //(w�tend) Vielleicht habe ich mit Sylvio als Anf�hrer der Orkj�ger auch eine schlechte Wahl getroffen, wenn meine Jungs in so schlechter Form waren.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_08"); //Was?! Du hier? Und was ist mit dem Orkfriedhof?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_09"); //Nun, ich war dort ...
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_10"); //Ja, und weiter? Habt ihr jemanden retten k�nnen?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_11"); //Nein, leider nicht. Sie sind jetzt ... �hh, waren alle tot.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_12"); //(unzufrieden) Verdammt. Das wird die Sumpffritzen nicht freuen ...
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_13"); //Aber wo bleiben die anderen Jungs? Die machen sich doch bestimmt einen sch�nen Lenz im Sumpflager. Die sollen mal machen, dass sie hier herkommen.
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_14"); //Nun, das k�nnte etwas schwierig werden.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_15"); //Was soll das jetzt wieder hei�en?
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_16"); //Tja, dass die alle tot sind (zu sich selbst) oder untot.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_17"); //(baff) Das ist doch wohl ein schlechter Scherz.
		AI_Output(hero, self, "Info_Mod_Lee_OrkschamaneTot_15_18"); //Nun, ich denke nicht. Zombies, Orks und untote Schamanen haben uns ziemlich zugesetzt.
		AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_19"); //(au�er sich) Was?! So viele gute M�nner? Diese ... diese verfluchten Orks, das werden sie mir b��en.

		if (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_20"); //Und du trittst mir hier noch unter die Augen, nachdem du sie hast verrecken lassen?! Ihr Anf�hrer?! Kl�glich versagt hast du.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Lee_OrkschamaneTot_04_21"); //Und Sylvio macht sich w�hrend dessen einen sch�nen Tag?! Vielleicht lag ich doch nicht so gut mit meiner Wahl, wenn die Jungs in so schlechter Form waren. Der kann was erleben.
		};

		B_GivePlayerXP	(200);
	};

	B_SetTopicStatus	(TOPIC_MOD_SLD_FRIEDHOF, LOG_SUCCESS);

	// Orkfriedhof wieder dicht machen

	Wld_SendTrigger	("EVT_ORCGRAVYARD_MOVER_01");
};

INSTANCE Info_Mod_Lee_FreieMine (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_FreieMine_Condition;
	information	= Info_Mod_Lee_FreieMine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_FreieMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_FreieMine_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_00"); //Na endlich bist du da ...
	
	B_Say	(hero, self, "$WHATSUP");

	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_02"); //In der Mine ist die Kacke am Dampfen. St�ndige Minecrawlerattacken, egal, wie viele wir von den Biestern auch erledigen.
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_03"); //Du hast damals die Alte Mine von den Viechern ges�ubert ...
	AI_Output(hero, self, "Info_Mod_Lee_FreieMine_15_04"); //... und da dachtest du an mich, um das Problem zu l�sen.
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_05"); //Ja, du bist die qualifizierteste Ansprechperson, wenn es um diese Minenkrabbler geht.
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_06"); //Geh also zur Mine, und schau, was sich machen l�sst.
	AI_Output(hero, self, "Info_Mod_Lee_FreieMine_15_07"); //Ok, ich wollte aber noch vorher mitteilen, dass auf Khorinis ...
	AI_Output(self, hero, "Info_Mod_Lee_FreieMine_04_08"); //(unterbricht) Das hat sp�ter Zeit. Zuerst die Crawler.

	Log_CreateTopic	(TOPIC_MOD_NL_CRAWLER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_CRAWLER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "Die freie Mine leidet unter einer Minecrawlerplage. Lee hat mir aufgetragen die Sache in Ordnung zu bringen.");
};

INSTANCE Info_Mod_Lee_Gormgniez (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Gormgniez_Condition;
	information	= Info_Mod_Lee_Gormgniez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Gormgniez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Endolf_Gormgniez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Gormgniez_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_00"); //Ist es dir gelungen das Crawlerproblem in der Mine zu l�sen?
	AI_Output(hero, self, "Info_Mod_Lee_Gormgniez_15_01"); //Ja, dort herrscht wieder Ruhe.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_02"); //Sehr gut, ich habe auch nichts anderes erwartet. Hier dein Sold.

	B_ShowGivenThings	("400 Gold und 10 Erz erhalten");

	CreateInvItems	(hero, ItMi_Gold, 400);
	CreateInvItems	(hero, ItMi_Nugget, 10);

	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_03"); //Gibt es sonst Neuigkeiten aus der Welt, nennenswertes, wissenswertes?
	AI_Output(hero, self, "Info_Mod_Lee_Gormgniez_15_04"); //Nunja, zum Beispiel wurde Khorinis von Drachen heimgesucht.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_05"); //Drachen? Du nimmst mich doch auf den Arm, oder? Aber wenn es wahr sein sollte ...
	AI_Output(hero, self, "Info_Mod_Lee_Gormgniez_15_06"); //Es ist wahr.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_07"); //(wie besessen) Ja, ich wusste es. Alle haben mich f�r verr�ckt gehalten, als ich die teuren Drachenj�gerr�stungen gekauft habe. Aber jetzt, ja, jetzt kommen sie zum Einsatz.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_08"); //Ich schicke gleich meine Elite zur Unterst�tzung nach Khorinis.
	AI_Output(self, hero, "Info_Mod_Lee_Gormgniez_04_09"); //Geh zu Thofeistos, er soll dir Erz zur Belohnung geben.

	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "Ich soll mir bei Thofeistos einige Erzbrocken als Belohnung abholen.");

	B_RemoveNpc	(Mod_1288_SLD_Butch_MT);
	B_RemoveNpc	(Mod_1306_SLD_Organisator_MT);
	B_RemoveNpc	(Mod_1314_SLD_Organisator_MT);
};

INSTANCE Info_Mod_Lee_Plage (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Plage_Condition;
	information	= Info_Mod_Lee_Plage_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_Plage_Condition()
{
	if (Mod_NL_JeremiahHasEier == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Plage_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_00"); //(aufgebracht) Verdammter Dreck, das hatte wirklich noch zu allem �berfluss gefehlt.
	AI_Output(hero, self, "Info_Mod_Lee_Plage_15_01"); //Was ist es diesmal? Untote, Orks, oder gar schlimmeres?
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_02"); //Ich meine dieses dreckige Ungeziefer, dass aus dem See gekrochen kommt, diese W�rmer und Krabben.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_03"); //�berall krabbeln diese Viecher hin, besudeln alles Essbare, was man offen stehen l�sst, man kann kein Auge zumachen, ohne, dass diese Parasiten gleich an einem kleben und der See stinkt auch langsam von denen.
	AI_Output(hero, self, "Info_Mod_Lee_Plage_15_04"); //Tja, was l�sst sich da machen.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_05"); //(genervt) Was sich da machen l�sst? Das will ich dir sagen.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_06"); //Auf Khorinis laufen doch diese J�ger und Waldl�ufer umher. Die kennen sich doch mit so einem Mist aus.
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_07"); //Da du dich sowieso die ganze Zeit auf der ganzen Insel herumtreibst, kannst du doch gleich zu einem hingehen und ihn um Rat fragen.
	AI_Output(hero, self, "Info_Mod_Lee_Plage_15_08"); //Ok, dann mach ich mich mal auf den Weg ...
	AI_Output(self, hero, "Info_Mod_Lee_Plage_04_09"); //(dr�ngend) Ja, mach mal ein bisschen hin, bevor die ganze Gegend von diesem Dreck verseucht ist und wir das Lager noch zuletzt r�umen m�ssen.

	Log_CreateTopic	(TOPIC_MOD_NL_PLAGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_PLAGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_PLAGE, "Im Neuen Lager entsteigt l�stiges Ungeziefer dem See. Lee will, dass ich bei den Waldl�ufern nachfrage, wie man dieser Plage Herr werden kann.");
};

INSTANCE Info_Mod_Lee_PlageFertig (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_PlageFertig_Condition;
	information	= Info_Mod_Lee_PlageFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_PlageFertig_Condition()
{
	if (Mod_NL_JeremiahHasEier == 6)
	&& (Wld_GetDay()-3 >= Mod_NL_JeremiahHasEier_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_PlageFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_00"); //Die Parasiten sind schon deutlich weniger geworden. War das dein Werk?
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_01"); //Ja, ich hatte durchaus meinen Anteil daran. Nicht mehr lange und die Plage d�rfte endg�ltig Geschichte sein.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_02"); //Tats�chlich, keine Mistviecher mehr am See?
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_03"); //�hh, nun, au�er den Lurkern, die ich wieder angesiedelt habe.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_04"); //Was, wie, willst du mich auf den Arm nehmen?
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_05"); //Nein, die Lurker sind die nat�rlichen Feinde dieses Krabbelgetiers.
	AI_Output(hero, self, "Info_Mod_Lee_PlageFertig_15_06"); //Es ist wichtig, dass zumindest eine kleine Population von ihnen am See bestehen bleibt.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_07"); //Na, meinetwegen. Auf jeden Fall hast du echt gute Arbeit geleistet und dem Lager einen riesen Dienst erwiesen.
	AI_Output(self, hero, "Info_Mod_Lee_PlageFertig_04_08"); //Hier, die Belohnung hast du dir mehr als verdient.

	B_ShowGivenThings	("400 Gold, 20 Erz, 5 reine Lebensenergien und Elixier des Lebens erhalten");

	CreateInvItems	(hero, ItMi_Gold, 400);
	CreateInvItems	(hero, ItMi_Nugget, 20);
	CreateInvItems	(hero, ItPo_Health_Addon_04, 5);
	CreateInvItems	(hero, ItPo_Perm_Health, 1);

	B_SetTopicStatus	(TOPIC_MOD_NL_PLAGE, LOG_SUCCESS);

	CurrentNQ += 1;

	B_GivePlayerXP	(600);
};

INSTANCE Info_Mod_Lee_ZugangKneipe (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_ZugangKneipe_Condition;
	information	= Info_Mod_Lee_ZugangKneipe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich w�rde gerne in die Kneipe und brauche deine Genehmigung.";
};

FUNC INT Info_Mod_Lee_ZugangKneipe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Khaled_KenneLee))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_ZugangKneipe_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe_15_00"); //Ich w�rde gerne in die Kneipe und brauche deine Genehmigung.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_01"); //In die Kneipe? Nun, die Regeln besagen, dass man S�ldner oder Sch�rfer sein muss.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_02"); //Und wenn ich dir einfach so die Erlaubnis erteile, dann trage ich damit zu einem Regelversto� bei. Und das w�re schlecht f�r die Moral im Lager.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_03"); //Also musst du entweder S�ldner werden und dazu die Jungs in Khorinis unterst�tzen oder ...
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe_15_04"); //... ich w�hle den Weg des Sch�rfers?
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_05"); //Ja, genau, dass w�re die andere M�glichkeit.
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe_15_06"); //Und was muss ich dazu tun?
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_07"); //Lass mich mal �berlegen.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_08"); //Um ein vollwertiger Sch�rfer zu sein, muss man nat�rlich Erz gesch�rft haben und dem Lager seinen Anteil entrichten.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_09"); //Bring mir also � sagen wir mal - zehn Brocken Erz.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe_04_10"); //Diese symbolische Menge soll mir gen�gen.

	B_LogEntry	(TOPIC_MOD_NLINKNEIPE, "Ich soll Lee 10 Brocken Erz bringen, als Nachweis meiner T�tigkeit als Sch�rfer. Dann darf ich in die Kneipe.");
};

INSTANCE Info_Mod_Lee_ZugangKneipe2 (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_ZugangKneipe2_Condition;
	information	= Info_Mod_Lee_ZugangKneipe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier sind zehn Brocken Erz.";
};

FUNC INT Info_Mod_Lee_ZugangKneipe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_ZugangKneipe))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_ZugangKneipe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_ZugangKneipe2_15_00"); //Hier sind zehn Brocken Erz.

	B_GiveInvItems	(hero, self, ItMi_Nugget, 10);

	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe2_04_01"); //Gut, dass zu schaffen war sicher kein Kunstst�ck, aber nur f�r den Zugang zur Kneipe soll sich ja auch niemand ein Bein ausrei�en.
	AI_Output(self, hero, "Info_Mod_Lee_ZugangKneipe2_04_02"); //Hier, meine schriftliche Erlaubnis. Trink einen auf mein Wohl.

	B_GiveInvItems	(self, hero, ItWr_LeeInKneipe, 1);

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_NLINKNEIPE, "Gut, ich habe Lees schriftliche Genehmigung.");
};

INSTANCE Info_Mod_Lee_KesselProblem (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_KesselProblem_Condition;
	information	= Info_Mod_Lee_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_KesselProblem_Condition()
{
	if (Kapitel >= 3)
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_KesselProblem_Info()
{
	B_USEFAKESCROLL();

	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_00"); //Verdammt! Schon wieder.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem_15_01"); //Was ist?
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_02"); //Zurzeit machen wilde Tiere in den Bergen die Arbeiten im Talkessel unsicher. Sogar ein Sch�rfer wurde von Ihnen gefressen.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_03"); //Jemand sollte dort nach dem Rechten sehen, was vor sich geht, ehe hier bald gar kein Erz mehr ankommt.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_04"); //(�berlegt) Hmm, auf meine M�nner dort offensichtlich kein Verlass mehr.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_05"); //Kesselchef Bullco scheint auch mehr Zeit bei der Taverne zu verbringen, als vor der Mine.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_06"); //K�nntest du dich vielleicht im Talkessel umschauen und umh�ren, wie es wirklich um die Situation steht?
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem_04_07"); //Gib mir Bescheid, wenn es dort Probleme gibt ...

	Log_CreateTopic	(TOPIC_MOD_NL_TALKESSELPROB, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_TALKESSELPROB, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Lee fluchte �ber die Probleme im Talkessel. Wilde Tiere aus den Bergen treiben dort ihr Unwesen und haben sogar schon einen Sch�rfer get�tet. Die Erzlieferungen k�nnten zunehmend darunter leiden. Lee bat mich darum, mich dort mal umzuh�ren und umzusehen und ihm zu melden, wenn es ernsthafte Probleme gibt.");
};

INSTANCE Info_Mod_Lee_KesselProblem2 (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_KesselProblem2_Condition;
	information	= Info_Mod_Lee_KesselProblem2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lee_KesselProblem2_Condition()
{
	if (Mod_NL_TalkesselProblem == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_KesselProblem2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_00"); //(w�tend) Halt! Ich habe geh�rt, dass Bruce das Zeitliche gesegnet hat ... und du sollst darin verwickelt gewesen sein.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_01"); //Was zum Teufel ist beim Kessel vorgefallen?!
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_02"); //Ich hatte  keine Wahl. Er hat versucht mich umzubringen.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_03"); //(Verwundert) Aber ... wieso? Was ist da vorgefallen?
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_04"); //Nun, ich bin ihm auf die Schliche gekommen.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_05"); //Er hat einen Teil von dem Erz aus dem Kessel f�r eigene Gesch�fte benutzt.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_06"); //Die ganze Geschichte mit den wilden Tieren war erfunden. Zur T�uschung hat er sich sogar ein Schattenl�uferfell von Fester besorgt.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_15_07"); //Hier seine Liste.

	B_GiveInvItems	(hero, self, ItWr_KesselProblem, 1);

	B_USEFAKESCROLL();

	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_08"); //(entgeistert) Tats�chlich. Scheffelweise hat er das Erz ausgegeben.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_09"); //Und dann noch so eine hinterlistige T�uschung. Vermutlich hat er gar den Sch�rfer selbst umgebracht, als Ablenkungsman�ver.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_10"); //(w�tend) Unterschlagung von Erz f�r dubiose Gesch�fte ... und sogar Mord.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_11"); //Und Bullco sitzt vor der Kneipe und s�uft. Er ist die l�ngste Zeit Chef des Talkessels gewesen ...
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_04_12"); //Hmm ...  und was ist mit Fester. Was sind das f�r andere Sachen, die er Bruce verkauft hat?

	B_SetTopicStatus	(TOPIC_MOD_NL_TALKESSELPROB, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_1288_SLD_Butch_MT, "BOSS");

	Info_ClearChoices	(Info_Mod_Lee_KesselProblem2);

	Info_AddChoice	(Info_Mod_Lee_KesselProblem2, "Waren von Au�erhalb. Wein, Schinken ...", Info_Mod_Lee_KesselProblem2_B);
	Info_AddChoice	(Info_Mod_Lee_KesselProblem2, "Er hat ihm Sumpfkraut verkauft.", Info_Mod_Lee_KesselProblem2_A);
};

FUNC VOID Info_Mod_Lee_KesselProblem2_B()
{
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_B_15_00"); //Waren von Au�erhalb. Wein, Schinken ...
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_01"); //(wieder ruhiger) So? Na gut. Ich werde mal einige Worte mit ihm wechseln und ihm auf den Zahn f�hlen.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_02"); //Vielleicht hat er ja gar nichts von Bruce Machenschaften gewusst.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_B_15_03"); //Nun ...
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_04"); //Achso, richtig. Du hast deine Arbeit sehr gut gemacht.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_B_04_05"); //Dank dir wird es von nun an besser im Lager laufen. Hier, das Erz und Gold steht dir auf jeden Fall zu.

	CreateInvItems	(hero, ItMi_Nugget, 20);
	CreateInvItems	(hero, ItMi_Gold, 200);

	B_GivePlayerXP	(500);

	B_ShowGivenThings	("20 Erz und 200 Gold erhalten");

	Mod_NL_TalkesselProblem = 5;

	Info_ClearChoices	(Info_Mod_Lee_KesselProblem2);
};

FUNC VOID Info_Mod_Lee_KesselProblem2_A()
{
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_A_15_00"); //Er hat ihm Sumpfkraut verkauft.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_01"); //(au�er sich) Was?! Verkauft Kraut in meinem Lager?! Der kann was erleben.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_02"); //Ab jetzt 6 Uhr aufstehen, Leibes�bungen ... ich werde schon noch daf�r sorgen, dass er nicht mehr auf dumme Gedanken kommt.
	AI_Output(hero, self, "Info_Mod_Lee_KesselProblem2_A_15_03"); //Also ...
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_04"); //(zum Helden) Hmm, was? Achso, richtig. Du hast deine Arbeit wirklich gut gemacht.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_05"); //Die ganzen Schmarotzer und Taugenichtse bekommen, was ihnen zusteht.
	AI_Output(self, hero, "Info_Mod_Lee_KesselProblem2_A_04_06"); //Hier, das Erz und Gold hast du dir wirklich verdient.

	CreateInvItems	(hero, ItMi_Nugget, 27);
	CreateInvItems	(hero, ItMi_Gold, 260);

	B_GivePlayerXP	(500);

	B_ShowGivenThings	("27 Erz und 260 Gold erhalten");

	Mod_NL_TalkesselProblem = 6;

	B_StartOtherRoutine	(Mod_784_SLD_Fester_MT, "STRAFE");

	Info_ClearChoices	(Info_Mod_Lee_KesselProblem2);
};

INSTANCE Info_Mod_Lee_SentenzaSchwert (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_SentenzaSchwert_Condition;
	information	= Info_Mod_Lee_SentenzaSchwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ihr wart also auf dem Laufenden?";
};

FUNC INT Info_Mod_Lee_SentenzaSchwert_Condition()
{
	if (Mod_NL_BruceTot == 3)
	&& (Npc_IsDead(Mod_796_SLD_Sentenza_MT))
	&& (Npc_IsDead(Mod_779_SLD_Bullco_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_SentenzaSchwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_SentenzaSchwert_15_00"); //Ihr wart also auf dem Laufenden?
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_01"); //Nun, ich hatte einen starken Verdacht. Letztendlich hat sich Bruce nie weit genug vom Talkessel entfernt, um andere H�ndler aufzusuchen.
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_02"); //Er musste also noch Hinterm�nner im Lager gehabt haben.
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_03"); //Roscoe hat f�r mich dann seine Augen und Ohren offen gehalten ... und genug mitbekommen, um die Bastarde hier zu stellen.
	AI_Output(hero, self, "Info_Mod_Lee_SentenzaSchwert_15_04"); //Ja, das war gutes Timing.
	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_05"); //Nun, jedenfalls ist unser Lager Dank deiner Mithilfe wieder um zwei Halunken �rmer. Hier etwas Erz.

	B_GiveInvItems	(self, hero, ItMi_Nugget, 5);

	AI_Output(self, hero, "Info_Mod_Lee_SentenzaSchwert_04_06"); //In den Taschen der beiden wirst du sicher auch noch genug finden. Und den Rest sollen sich die wilden Tiere holen.

	B_GivePlayerXP	(300);

	B_SetTopicStatus	(TOPIC_MOD_NL_SENTENZAKLINGE, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Lee_Mitmachen (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Mitmachen_Condition;
	information	= Info_Mod_Lee_Mitmachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kann ich bei euch wieder mitmachen?";
};

FUNC INT Info_Mod_Lee_Mitmachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lee_Mitmachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lee_Mitmachen_15_00"); //Kann ich bei euch wieder mitmachen?
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_01"); //Bei uns mitmachen? Nun, gute M�nner k�nnen wir immer gebrauchen und du hast damals gezeigt, dass du kein Taugenichts bist.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_02"); //Trotzdem w�re es mir lieber, wenn du dich erst einmal bew�hrst, damit die S�ldner deine Aufnahme auch respektieren.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_03"); //Viele neue Jungs sind im Lager und von den anderen kann sich wohl auch nicht mehr jeder an dich erinnern.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_04"); //Du warst ja immer unterwegs.
	AI_Output(hero, self, "Info_Mod_Lee_Mitmachen_15_05"); //Ok, was soll ich tun.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_06"); //Nun, wie ich dich kenne, warst du bestimmt schon auf halb Khorinis und kennst dich in der Umgebung aus.
	AI_Output(hero, self, "Info_Mod_Lee_Mitmachen_15_07"); //Ja, hier und da war ich schon.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_08"); //Gut, dann will ich, dass du die Jungs auf dem Gro�bauernhof in Khorinis unterst�tzt.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_09"); //Dort Fu� zu fassen hat jetzt erst einmal Priorit�t.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_10"); //Wenn du dich einigerma�en geschickt anstellst, bin ich mir sicher, dass ich dich bald in der S�ldnerr�stung wieder sehe.
	AI_Output(self, hero, "Info_Mod_Lee_Mitmachen_04_11"); //Es sei denn nat�rlich, du geh�rst schon einem anderen gro�en Lager an, oder gar dem Alten Lager. Alles klar? Gut.
};

var int Lee_LastPetzCounter;
var int Lee_LastPetzCrime;

INSTANCE Info_Mod_Lee_PMSchulden (C_INFO)
{
	npc         	= Mod_525_SLD_Lee_MT;
	nr          	= 1;
	condition   	= Info_Mod_Lee_PMSchulden_Condition;
	information 	= Info_Mod_Lee_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Lee_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Lee_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Lee_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lee_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_00"); //Bist du gekommen, um deine Strafe zu zahlen?

	if (B_GetTotalPetzCounter(self) > Lee_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_01"); //Ich hatte mich schon gefragt, ob du es �berhaupt noch wagst, hierher zu kommen!
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_02"); //Anscheinend ist es nicht bei den letzten Anschuldigungen geblieben!

		if (Lee_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_03"); //Ich hatte dich gewarnt! Die Strafe, die du jetzt zahlen musst, ist h�her!
			AI_Output (hero, self, "Info_Mod_Lee_PMAdd_15_00"); //Wieviel?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Lee_LastPetzCounter);
		
			if (diff > 0)
			{
				Lee_Schulden = Lee_Schulden + (diff * 50);
			};
		
			if (Lee_Schulden > 1000)	{	Lee_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Lee_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_04"); //Du hast mich schwer entt�uscht!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Lee_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_05"); //Es haben sich einige neue Dinge ergeben.
		
		if (Lee_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_06"); //Pl�tzlich gibt es niemanden mehr, der dich des Mordes bezichtigt.
		};
		
		if (Lee_LastPetzCrime == CRIME_THEFT)
		|| ( (Lee_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_07"); //Niemand erinnert sich mehr, dich bei einem Diebstahl gesehen zu haben.
		};
		
		if (Lee_LastPetzCrime == CRIME_ATTACK)
		|| ( (Lee_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_08"); //Es gibt keine Zeugen mehr daf�r, dass du jemals in eine Schl�gerei verwickelt warst.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_09"); //Anscheinend haben sich alle Anklagen gegen dich in Wohlgefallen aufgel�st.
		};
		
		AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_10"); //Ich wei� nicht, was da gelaufen ist, aber ich warne dich: Spiel keine Spielchen mit mir.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_11"); //Ich habe mich jedenfalls entschieden, dir deine Schulden zu erlassen.
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_12"); //Sieh zu, dass du nicht wieder in Schwierigkeiten kommst.
	
			Lee_Schulden			= 0;
			Lee_LastPetzCounter 	= 0;
			Lee_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_13"); //Damit eins klar ist: Deine Strafe musst du trotzdem in voller H�he zahlen.
			B_Say_Gold (self, hero, Lee_Schulden);
			AI_Output (self, hero, "Info_Mod_Lee_PMSchulden_04_14"); //Also, was ist?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
		Info_AddChoice		(Info_Mod_Lee_PMSchulden,"Ich habe nicht genug Gold!",Info_Mod_Lee_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Lee_PMSchulden,"Wieviel war es nochmal?",Info_Mod_Lee_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Lee_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Lee_PMSchulden,"Ich will die Strafe zahlen.",Info_Mod_Lee_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Lee_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Lee_PMSchulden_HowMuchAgain_15_00"); //Wie viel war es noch mal?
	B_Say_Gold (self, hero, Lee_Schulden);

	Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lee_PMSchulden,"Ich habe nicht genug Gold!",Info_Mod_Lee_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Lee_PMSchulden,"Wieviel war es nochmal?",Info_Mod_Lee_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Lee_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lee_PMSchulden,"Ich will die Strafe zahlen.",Info_Mod_Lee_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Lee_PETZMASTER   (C_INFO)
{
	npc         	= Mod_525_SLD_Lee_MT;
	nr          	= 1;
	condition   	= Info_Mod_Lee_PETZMASTER_Condition;
	information 	= Info_Mod_Lee_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Lee_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Lee_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lee_PETZMASTER_Info()
{
	Lee_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime h�her ist...
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_01"); //Gut, dass du zu mir kommst, bevor alles noch schlimmer f�r dich wird.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_02"); //Mord ist ein schweres Vergehen!

		Lee_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Lee_Schulden = Lee_Schulden + 500;						//PLUS M�rder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_03"); //Ganz zu schweigen von den anderen Sachen, die du angerichtet hast.
		};

		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_06"); //Ich habe kein Interesse daran, dich an den Galgen zu bringen. Wir sind im Krieg und wir brauchen jeden Mann.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_07"); //Aber es wird nicht leicht sein, die Leute wieder gn�dig zu stimmen.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_08"); //Du k�nntest deine Reue zeigen, indem du eine Strafe zahlst - nat�rlich muss die Strafe angemessen hoch sein.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_09"); //Gut, dass du kommst! Du wirst des Diebstahls bezichtigt! Es gibt Zeugen!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_10"); //Von den anderen Dingen, die mir zu Ohren gekommen sind, will ich gar nicht erst reden.
		};

		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_11"); //Ich werde so ein Verhalten bei uns nicht dulden!
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_12"); //Du wirst eine Strafe zahlen m�ssen, um dein Verbrechen wieder gutzumachen!
		
		Lee_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_13"); //Wenn du dich mit dem Gesindel in der Stadt herumpr�gelst, ist das eine Sache ...
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_14"); //Aber wenn du die Bauern oder andere S�ldner angreifst, muss ich dich zur Rechenschaft ziehen.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_15"); //Und die Sache mit den Schafen musste wohl auch nicht sein.
		};

		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_16"); //Wenn ich dir das durchgehen lasse, macht hier bald jeder, was er will.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_17"); //Also wirst du eine angemessene Strafe zahlen - und die Sache ist vergessen.
		
		Lee_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf get�tet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_18"); //Mir ist zu Ohren gekommen, du h�ttest dich an unseren Schafen vergriffen.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_19"); //Dir ist klar, dass ich das nicht durchgehen lassen kann.
		AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_04_20"); //Du wirst eine Entsch�digung zahlen m�ssen!
		
		Lee_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Lee_PETZMASTER_15_21"); //Wie viel?
	
	if (Lee_Schulden > 1000)	{	Lee_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Lee_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
	Info_AddChoice		(Info_Mod_Lee_PETZMASTER,"Ich habe nicht genug Gold!",Info_Mod_Lee_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Lee_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Lee_PETZMASTER,"Ich will die Strafe zahlen.",Info_Mod_Lee_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Lee_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Lee_PETZMASTER_PayNow_15_00"); //Ich will die Strafe zahlen!
	B_GiveInvItems (hero, self, itmi_gold, Lee_Schulden);
	AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_PayNow_04_01"); //Gut! Ich werde daf�r sorgen, dass es jeder Bauer und S�ldner erf�hrt - damit w�re dein Ruf einigerma�en wiederhergestellt.

	B_GrantAbsolution (LOC_FARM);
	
	Lee_Schulden			= 0;
	Lee_LastPetzCounter 	= 0;
	Lee_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Lee_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Lee_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Lee_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Lee_PETZMASTER_PayLater_15_00"); //Ich habe nicht genug Gold!
	AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_PayLater_04_01"); //Dann sieh zu, dass du das Gold so schnell wie m�glich beschaffst.
	AI_Output (self, hero, "Info_Mod_Lee_PETZMASTER_PayLater_04_02"); //Und ich warne dich: Wenn du dir noch was zu schulden kommen l�sst, wird die Sache noch schlimmer f�r dich!
	
	Lee_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Lee_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Lee_Pickpocket (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 1;
	condition	= Info_Mod_Lee_Pickpocket_Condition;
	information	= Info_Mod_Lee_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Lee_Pickpocket_Condition()
{
	C_Beklauen	(158, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Lee_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

	Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_BACK, Info_Mod_Lee_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lee_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lee_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lee_Pickpocket);
};

FUNC VOID Info_Mod_Lee_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

		Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lee_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lee_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lee_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lee_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lee_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lee_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lee_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lee_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lee_EXIT (C_INFO)
{
	npc		= Mod_525_SLD_Lee_MT;
	nr		= 999;
	condition	= Info_Mod_Lee_EXIT_Condition;
	information	= Info_Mod_Lee_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lee_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lee_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};