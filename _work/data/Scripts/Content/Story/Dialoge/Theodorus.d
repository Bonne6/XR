INSTANCE Info_Mod_Theodorus_Hi (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Hi_Condition;
	information	= Info_Mod_Theodorus_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Theodorus_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_09_00"); //Halt ein!
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_15_01"); //Was willst du?
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_09_02"); //Ich m�chte dich warnen. Hinter diesem Gang lauern Gefahren.

	Info_ClearChoices	(Info_Mod_Theodorus_Hi);

	Info_AddChoice	(Info_Mod_Theodorus_Hi, "Davon werde ich mir schon selbst ein Bild machen.", Info_Mod_Theodorus_Hi_B);
	Info_AddChoice	(Info_Mod_Theodorus_Hi, "Gefahren welcher Art?", Info_Mod_Theodorus_Hi_A);
};

FUNC VOID Info_Mod_Theodorus_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_B_15_00"); //Davon werde ich mir schon selbst ein Bild machen.
	
	Info_ClearChoices	(Info_Mod_Theodorus_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Theodorus_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_A_15_00"); //Gefahren welcher Art?
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_01"); //DAS wirst du schon sehr genau wissen! Oder warum willst du dort hin? Nat�rlich wei�t du von Freudenspender!
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_A_15_02"); //Was ist daran so gef�hrlich?
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_03"); //(nach�ffend) Was ist daran so gef�hrlich? Es macht aus starken M�nnern sabbernde Spirituelle. DAS ist daran gef�hrlich.
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_04"); //Ich habe von einer monotheistischen Religion geh�rt, die sich allein auf die Einnahme dieser Droge gr�ndet.
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_05"); //Willst du auch auf diese Weise die G�tter beleidigen? (Pause) Ich k�nnte dir viel erz�hlen, was anst�ndige M�nner unter Wirkung von Freudenspender getrieben haben ...
	
	Mod_Theodorus_FreudenspenderWarnung = 1;

	Info_ClearChoices	(Info_Mod_Theodorus_Hi);
};

INSTANCE Info_Mod_Theodorus_FreudenspenderWarnung (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_FreudenspenderWarnung_Condition;
	information	= Info_Mod_Theodorus_FreudenspenderWarnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Erz�hl mir von den M�nnern unter Freudenspender-Einfluss.";
};

FUNC INT Info_Mod_Theodorus_FreudenspenderWarnung_Condition()
{
	if (Mod_Theodorus_FreudenspenderWarnung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_FreudenspenderWarnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_FreudenspenderWarnung_15_00"); //Erz�hl mir von den M�nnern unter Freudenspender-Einfluss.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_01"); //Unser letzter Stadthalter, Valens - er war es �brigens, der den beknackten Rang des Stadthalters erfunden hat -, hatte die verr�cktesten Halluzinationen in seinen umnachteten Phasen.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_02"); //Er litt unter Verfolgungswahn. Einmal tr�umte er, andere Machttr�ger h�tten Zauberei angewandt, um herauszufinden, wer sein Nachfolger werden w�rde.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_03"); //Er streifte daraufhin durch die Gassen Khoratas und lie� jeden Auff�lligen auf der Stelle exekutieren, auch wenn der nur sein Horoskop gelesen hatte.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_04"); //Andererseits verschonte er seine Gefolgsleute auch bei schwersten Verbrechen; sie konnten morden und pl�ndern, das drang gar nicht zu ihm vor.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_05"); //Er starb dann, als er im Rausch in ein Wasserauffangbecken in Khorata sprang, um dort zu baden - die Becken haben keine Leitern, die hinausf�hren, und so ersoff er wie eine Fliege in einem Eimer Wasser.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_06"); //Auch Vincent, der J�ger, ist einer von den heiklen Kandidaten.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_07"); //Wir mussten ihn letztens davon abhalten, mit Pfeil und Bogen Jagd auf seine Gro�mutter zu machen, weil er sie f�r ein Molerat hielt.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_08"); //DAS sind nur zwei Beispiele f�r den verheerenden Zustand der Leute hier.
	
	Mod_Theodorus_FreudenspenderWarnung = 2;
};

INSTANCE Info_Mod_Theodorus_FreudenspenderWarnung2 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_FreudenspenderWarnung2_Condition;
	information	= Info_Mod_Theodorus_FreudenspenderWarnung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wieso verbietet ihr Freudenspender nicht?";
};

FUNC INT Info_Mod_Theodorus_FreudenspenderWarnung2_Condition()
{
	if (Mod_Theodorus_FreudenspenderWarnung == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_FreudenspenderWarnung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_FreudenspenderWarnung2_15_00"); //Wieso verbietet ihr Freudenspender nicht?
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_01"); //DAS h�tte ich ja gern, aber die H�ndler weigern sich, diesen Schritt zu gehen.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_02"); //Du kannst dir nicht vorstellen, wie viel Geld einige mit dem Zeug machen.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_03"); //(sarkastisch) Au�erdem h�lt es die Leute dumm - was will man mehr?
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_04"); //(sinniert) Irgendwann wird es Zeit f�r eine kleine Revolution ...
};

INSTANCE Info_Mod_Theodorus_Unruhen (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen_Condition;
	information	= Info_Mod_Theodorus_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Wei�t du �ber die neuesten Geschehnisse in Khorata Bescheid?";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen_15_00"); //Wei�t du �ber die neuesten Geschehnisse in Khorata Bescheid?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen_09_01"); //Nat�rlich, und wei�t du was? Ich finde es absolut verst�ndlich und begr��enswert!
};

INSTANCE Info_Mod_Theodorus_Unruhen2 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen2_Condition;
	information	= Info_Mod_Theodorus_Unruhen2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "W�rdest du Stadthalter von Khorata werden wollen?";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen2_15_00"); //W�rdest du Stadthalter von Khorata werden wollen?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen2_09_01"); //Haha, das meinst du hoffentlich nicht ernst.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen2_15_02"); //Doch, durchaus.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen2_09_03"); //(�berlegt) Vielleicht w�re es sogar eine �berlegung wert. Dann g�be es endlich eine M�glichkeit, Khorata zu �ndern.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen2_09_04"); //Also, wenn du mich als Stadthalter sehen willst - ich bin dein Mann!
};

INSTANCE Info_Mod_Theodorus_Unruhen3 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen3_Condition;
	information	= Info_Mod_Theodorus_Unruhen3_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Wie sollte deiner Meinung nach der Konflikt mit den Bergleuten gel�st werden?";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen3_15_00"); //Wie sollte deiner Meinung nach der Konflikt mit den Bergleuten gel�st werden?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen3_09_01"); //Was die Buddler fordern, ist ihr gutes Recht. Wieso sollten wir es ihnen absprechen?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen3_09_02"); //Die St�dter m�ssen in ihre Schranken verwiesen werden.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Theodorus spricht sich daf�r aus, die Buddler zu unterst�tzen.");
};

INSTANCE Info_Mod_Theodorus_Unruhen4 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen4_Condition;
	information	= Info_Mod_Theodorus_Unruhen4_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Du bist nun der Stadthalter Khoratas.";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen4_Condition()
{
	if (Mod_REL_Kandidat == 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen4_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen4_15_00"); //Du bist nun der Stadthalter Khoratas.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen4_09_01"); //Ist nicht wahr! Du ver�ppelst mich, richtig?
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen4_15_02"); //Komm mit, ich zeig dir deine neue Wirkungsst�tte.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen4_09_03"); //Ganz ehrlich, ihr �berrascht mich. H�tte nicht gedacht, dass ihr so eine riskante Entscheidung trefft. Ich bin sogar fast ein wenig ger�hrt.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen4_15_04"); //Heulen kannst du sp�ter.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen4_09_05"); //In Ordnung. Lass uns gehen!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWINCITY");
};

INSTANCE Info_Mod_Theodorus_Unruhen5 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen5_Condition;
	information	= Info_Mod_Theodorus_Unruhen5_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Theodorus_Unruhen5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen4))
	&& (Npc_GetDistToWP(hero, "RATHAUSUNTEN_01") < 500)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen5_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen5_15_00"); //Da w�ren wir.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen5_09_01"); //Danke. Ich seh mich mal um. Komm morgen wieder, dann k�mmern wir uns um die ernsten Angelegenheiten.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Theodorus braucht einen Tag, um sich einzufinden. Dann werden wir uns um die offenen Fragen k�mmern.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "STADTHALTER");

	Mod_REL_Stadthalter = 1;

	Mod_REL_Stadthalter_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Theodorus_Unruhen6 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen6_Condition;
	information	= Info_Mod_Theodorus_Unruhen6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lass uns loslegen.";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen5))
	&& (Mod_REL_Stadthalter_Day < Wld_GetDay())
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen6_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen6_15_00"); //Lass uns loslegen.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_01"); //Ganz oben auf meiner Liste steht das Problem der Bergleute.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_02"); //Die St�dter m�ssen ihre Anspr�che zur�ckschrauben.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen6_15_03"); //Was gedenkst du zu tun?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_04"); //Ich gebe dir diese Botschaft.

	B_GiveInvItems	(self, hero, ItWr_TheodorusBotschaft, 1);

	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_05"); //Auf dem Marktplatz steht dieses eigenartige Ger�st. Von dort verliest du es f�r alle h�rbar.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_06"); //In der Zeit hole ich die Buddler ab und f�hre sie zur�ck in die Stadt.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_07"); //Der Bergbau wird vorerst auf Eis gelegt, bis die Stadtbewohner zur Vernunft kommen.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen6_15_08"); //H�ltst du das nicht f�r zu provokant?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_09"); //Man muss auch mal einstecken lernen. Man sieht sich.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Theodorus gab mir den Auftrag, der Bev�lkerung Khoratas vom Ger�st auf dem Marktplatz eine Botschaft zu verlesen.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATMINE");
};

INSTANCE Info_Mod_Theodorus_Unruhen7 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen7_Condition;
	information	= Info_Mod_Theodorus_Unruhen7_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Theodorus_Unruhen7_Condition()
{
	if (Mod_REL_TheodorusS == 4)
	&& (Npc_IsDead(Mod_7620_OUT_Wache_REL))
	&& (Npc_IsDead(Mod_7621_OUT_Wache_REL))
	&& (Npc_IsDead(Mod_7374_OUT_Gerichtswache_01))
	&& (Npc_IsDead(Mod_7375_OUT_Gerichtswache_02))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen7_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen7_09_00"); //Es war zu erwarten, dass meine Ernennung Unmut hervorrufen w�rde. Aber dieses Ausma� an Gewalt h�tte ich mir nicht vorgestellt.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen7_09_01"); //Trotzdem danke ich f�r f�r deine Hilfe. Du hast dazu beigetragen, Khorata aus einer seiner schlimmsten Krisen zu erretten.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen7_09_02"); //Auch ich selbst verdanke dir viel.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Die Situation scheint vorl�ufig bereinigt zu sein. Die Bewohner Khoratas m�ssen sich jetzt erst mal mit ihrem neuen Stadthalter arrangieren.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	CurrentNQ += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "STADTHALTER");
	B_StartOtherRoutine	(Mod_7385_OUT_August_REL, "START");
	B_StartOtherRoutine	(Mod_7618_OUT_Norman_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7617_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7614_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7616_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7613_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7615_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7492_OUT_Roman_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7619_OUT_Frazer_REL, "INCITY");
};

INSTANCE Info_Mod_Theodorus_Plagenquest (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mir scheint, ihr braucht einen Kammerj�ger.";
};

FUNC INT Info_Mod_Theodorus_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Plagenquest))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST01");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_01"); //Ja, wir hatten schon einen ganzen Trupp Hammerj�ger durch die Stadt geschickt.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_02"); //Aber auch mit ihren H�mmern konnten sie dem Ungeziefer keinen Einhalt gebieten.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_03"); //Egal wie oft man drauf schl�gt, sie kommen wieder und in Gesellschaft vieler ihrer Artgenossen.
	B_Say	(hero, self, "$PLAGENQUEST02");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_05"); //In der Tat, ich forsche gerade in den Chroniken der Stadt nach und bin da tats�chlich auf etwas gesto�en ...
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_06"); //Es wird aber noch ein Weilchen dauern, bis ich mir den Text vollst�ndig erschlossen habe.
	B_Say	(hero, self, "$PLAGENQUEST03");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_08"); //Ja, du kannst mal dein Gl�ck als Hammerj�ger im Gerichtsgeb�ude versuchen, wo sich im Moment besonders viele Drecksviecher tummeln.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_09"); //Vielleicht hast du ja mehr Erfolg.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Theodorus scheint in den Chroniken der Stadt auf Anhaltspunkte gesto�en zu sein. Bis er sie vollst�ndig ergr�ndet hat, soll ich mich im Gerichtsgeb�ude im Insektenjagen erproben.");

	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
};

INSTANCE Info_Mod_Theodorus_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_02_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Plagenquest))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_00"); //Ahh, gut, dass du vorbeikommst, ich habe etwas wichtiges entdeckt.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_01"); //Die Plage, die zurzeit die Stadt heimsucht, hatte es bereits vor vielen Jahrhunderten gegeben � nicht lange, nach der Stadtgr�ndung.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_02"); //Um der Stadt und ihrer Umgebung den Segen der G�tter zu sichern, wurde damals den G�ttern mit Tieropfern gehuldigt.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_03"); //Jeder hatte die Pflicht eine bestimmte Anzahl an Tieren zu opfern.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_04"); //Einer ihrer Gr�nderv�ter war jedoch so geizig, dass er nicht Schafe oder Molerat, sondern Insekten opferte.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_05"); //Die G�tter waren dar�ber so erz�rnt, dass sie den Wunsch der Menschen nach reicher Tierpopulation vor allem auf die Insekten der Umgebung �bertrugen.
	B_Say	(hero, self, "$PLAGENQUEST04");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_07"); //Nun, mit der chemischen Keule.
	B_Say	(hero, self, "$PLAGENQUEST05");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_09"); //Ja, lange Zeit war man v�llig ratlos und es schien so, als m�sse man die Stadt aufgeben.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_10"); //Doch dann wurde einem rechtschaffenden und ehrbaren B�rger namens Chemos ein Traum gesandt.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_11"); //Er erhielt die Anleitung zum Bau einer Waffe, welche die Plagegeister bannen konnte.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_12"); //Daher muss auch unser Brauch mit den Stadth�mmern zum Kampf gegen die Insekten kommen.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_13"); //Damals unterschieden sich H�mmer und Keulen n�mlich noch nicht grundlegend.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_14"); //Unser Gesetz dazu stammt erst aus etwas sp�terer Zeit, als die H�mmer ihre charakteristische Form erhielten und die Keulen aus praktischen Gr�nden abl�sten.
	B_Say	(hero, self, "$PLAGENQUEST06");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_16"); //Nein, leider nicht mehr. Und die Anfertigung einer solchen Waffe ist nicht ganz unkompliziert. Ich habe die Anleitung gefunden ...
	B_Say	(hero, self, "$PLAGENQUEST07");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_18"); //Hier hast du eine Abschrift davon.

	B_GiveInvItems	(self, hero, ItWr_Bauplan_ChemischeKeule, 1);

	B_Say	(hero, self, "$PLAGENQUEST08");

	B_HeroFakeScroll ();

	B_Say	(hero, self, "$PLAGENQUEST09");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_21"); //(erfreut) Wirklich? Du w�rdest uns allen einen gro�en Dienst damit erweisen.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_22"); //Sobald du alles zusammen hast, begib dich wieder hier her und h�ndige die Materialien unserem Schmied aus.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_23"); //Und eine Keule werden wir schon irgendwo in der Stadt auftreiben. Ich danke dir.

	B_LogEntry_More	(TOPIC_MOD_ADANOS_PLAGE, TOPIC_MOD_ADANOS_DRECKSVIECHER, "Aha, die Insektenplage beruht also auf einer Strafe der G�tter f�r einen Frevel, der begangen wurde.", "Ok, ich darf mich jetzt auf die Suche nach dem Material f�r die chemische Keule begeben, welche die Mistviecher bannen kann. Eine Keule m�ssten sie in Khorata schon selbst auftreiben k�nnen ...");

	B_GivePlayerXP	(200);

	Mod_WM_Plage_PartInsekt = 1;
};

INSTANCE Info_Mod_Theodorus_Plagenquest_03 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_03_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Plagenquest_03_Condition()
{
	if (Npc_HasItems(hero, ItMw_Chemo) == 1)
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_03_09_00"); //Ich habe geh�rt, du hast die Keule. Jetzt ist es an der Zeit die Plagegeister aus der Stadt zu verjagen.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_03_09_01"); //Am Marktplatz haben sich besonders viele von den Viechern gesammelt. Nimm die chemische Keule und vernichte sie.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Jetzt ist es an der Zeit zu testen, ob die chemische Keule etwas taugt. Ich soll die ganzen Drecksplagen erledigen, die sich am Marktplatz gesammelt haben.");

	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
};

INSTANCE Info_Mod_Theodorus_Plagenquest_04 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_04_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Keule konnte den Insekten Einhalt gebieten. Ich habe sie alle bezwungen.";
};

FUNC INT Info_Mod_Theodorus_Plagenquest_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest_03))
	&& (Npc_IsDead(Insekt_04))
	&& (Npc_IsDead(Insekt_05))
	&& (Npc_IsDead(Insekt_06))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_04_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST10");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_01"); //Das ist gro�artig und der erste Schritt um das �bel endg�ltig zu bannen.
	B_Say	(hero, self, "$PLAGENQUEST11");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_03"); //Ja, leider mussten wir feststellen, dass weiterhin neue Parasiten aus den umliegenden W�ldern kommen.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_04"); //Irgendwo dort muss die Wurzel des �bels sein ... der omin�se Riesenbug, von dem die Quellen sprachen.
	B_Say	(hero, self, "$PLAGENQUEST12");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_06"); //Es gibt da aber etwas, besser gesagt jemanden, der dir dabei helfen k�nnte.
	B_Say	(hero, self, "$PLAGENQUEST13");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_08"); //Ein B�rger unserer Stadt. Sein Name ist Axon und er tr�gt das chemische Blut in sich, wie ich vor ein paar Stunden herausgefunden habe.
	B_Say	(hero, self, "$PLAGENQUEST14");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_10"); //Nun, zum einen geben die Stammb�ume klare Hinweise darauf und dann ... nun ...
	B_Say	(hero, self, "$PLAGENQUEST15");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_12"); //... dann haben wir noch die chemische Keule bei ihm gefunden. Sie hing die ganze Zeit im Wohnzimmer seines Hauses.
	B_Say	(hero, self, "$PLAGENQUEST16");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_14"); //Jedenfalls sollte er dir dabei helfen k�nnen das K�fergetier zu ersp�ren, den Riesenbug zu entdecken und zu vernichten. Er wartet bereits vor der Stadt auf dich.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Grmpf, das wird ja immer besser. Die ganze Zeit hing die chemische Keule bei Axon, einem Nachfahren des Chemos ... Nun denn, jetzt darf ich also mit ihm den Riesenbug im Wald erlegen. Axon erwartet mich vor der Stadt.");

	B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "VORSTADT");
	AI_Teleport	(Mod_7415_OUT_Axon_REL, "REL_CITY_001");
};

INSTANCE Info_Mod_Theodorus_Plagenquest_05 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_05_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Es ist vollbracht. Der Riesenbug ist bezwungen.";
};

FUNC INT Info_Mod_Theodorus_Plagenquest_05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest_02))
	&& (Npc_IsDead(Riesenbug))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_05_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST17");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_05_09_01"); //Das ist gro�artig. Du hast unserer Stadt einen Dienst von unsch�tzbarem Wert erwiesen und das �bel gebannt.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_05_09_02"); //Nimm, dieses Gold und den Stadthammer zum Dank. Der Segen der G�tter m�ge dich begleiten.

	B_ShowGivenThings	("1000 Gold und Stadthammer erhalten");

	CreateInvItems	(hero, ItMw_Stadthammer, 1);
	CreateInvItems	(hero, ItMi_Gold, 1000);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	if (!Npc_IsDead(Mod_7415_OUT_Axon_REL))
	{
		B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "START");
	};

	B_G�ttergefallen (2, 1);
};

INSTANCE Info_Mod_Theodorus_Andre (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Andre_Condition;
	information	= Info_Mod_Theodorus_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Andre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Herold))
	&& (Mod_PAL_HeroBot == 17)
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_00"); //Guten Morgen, Soldat. Oder sollte ich dich lieber Hauptmann nennen?
	B_Say	(hero, self, "$HEROBOTQUEST01");
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_02"); //Lord Andre's Plan hat funktioniert, allerdings gab es keine M�glichkeit einen Ausgang in den Hochofen zu implementieren, deshalb hat er dich �berw�ltigt, selbst das Kost�m angezogen und den Roboter in den Hochofen gelockt.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_03"); //Wir haben einen versiegelten Umschlag neben dir gefunden. Darin erkl�rte Andre die ganze Angelegenheit und hat dich zu seinem Nachfolger ernannt.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_04"); //Aber hier ... die Details kannst du selbst nachlesen.

	B_GiveInvItems	(self, hero, ItWr_AndreAbschied, 1);

	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_05"); //Und diesen Schl�ssel soll ich dir geben. Vermutlich zu seiner Kiste im Hauptmannzimmer.

	B_GiveInvItems	(self, hero, ItKe_Andre, 1);

	B_Say	(hero, self, "$HEROBOTQUEST02");
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_06"); //Genau. Die Trauerfeier hast du verpasst, du haben geschlagene 32 Stunden durchgeschlafen. Der alte Haudegen scheint in ganz guter Form gewesen zu sein.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_07"); //Wenn du dich verabschieden willst, Andre liegt mittlerweile am Friedhof. Zumindest seine Asche. Aber ruh' dich zuerst aus, er l�uft dir schon nicht weg.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_08"); //Ach ja, bevor ich's vergesse: Der Betreiber des Hochofens hat nach dir gefragt, schau mal bei ihm vorbei.

	B_G�ttergefallen(1, 5);

	B_GivePlayerXP	(1000);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_PAL_BOT, TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Der Roboter ist besiegt, jedoch musste sich Lord Andre opfern, um dies zu erreichen. Nun hat er mich zu seinem Nachfolger ernannt.", "Andre hat sich tats�chlich geopfert um den Roboter zu vernichten. In einem Schreiben hat er mich zu seinem Nachfolger ernannt und mir einen Schl�ssel hinterlegt, der wahrscheinlich zu seiner Truhe in der Kaserne f�hrt.");
	B_SetTopicStatus	(TOPIC_MOD_PAL_BOT, LOG_SUCCESS);

	B_LogEntry_NS	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Der Betreiber des Hochofens Robert will mich sprechen. Ich sollte dort mal vorbeischauen und fragen, worum es geht.");
};

INSTANCE Info_Mod_Theodorus_Freudenspender (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Freudenspender_Condition;
	information	= Info_Mod_Theodorus_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Du siehst aus, als wolltest du Freudenspender.";
};                       

FUNC INT Info_Mod_Theodorus_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Freudenspender_15_00"); //Du siehst aus, als wolltest du Freudenspender.
	AI_Output(self, hero, "Info_Mod_Theodorus_Freudenspender_09_01"); //(aufgebracht) WAS???
	AI_Output(hero, self, "Info_Mod_Theodorus_Freudenspender_15_02"); //War nur 'n Witz ...
};

INSTANCE Info_Mod_Theodorus_Pickpocket (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Pickpocket_Condition;
	information	= Info_Mod_Theodorus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Theodorus_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 250);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

	Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_BACK, Info_Mod_Theodorus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Theodorus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

		Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Theodorus_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Theodorus_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Theodorus_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Theodorus_EXIT (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_EXIT_Condition;
	information	= Info_Mod_Theodorus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Theodorus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Theodorus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};