INSTANCE Info_Mod_Telbor_Hi (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Hi_Condition;
	information	= Info_Mod_Telbor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Hi_Condition()
{
	if (Kapitel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_00"); //(resigniert) Hallo Fremder. Was treibt dich in dieser schweren Zeit hierher?
	AI_Output(hero, self, "Info_Mod_Telbor_Hi_15_01"); //Du wirkst recht betr�bt. Was ist geschehen?
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_02"); //Ich wei� gar nicht, wo ich beginnen soll. Alles fing mit diesem dunklen Pilger an ...
	AI_Output(hero, self, "Info_Mod_Telbor_Hi_15_03"); //Der dunkle Pilger?
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_04"); //Ja, er kam hier gestern Abend die Stufen hinauf und ist zun�chst im Wald verschwunden.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_05"); //Einige Stunden sp�ter kam er zur�ck und ersuchte Akil um eine Bleibe f�r die Nacht. Akil ist ein gl�ubiger Mann und wollte nicht das Gastrecht verletzten, auch wenn ihm der Pilger in dunklem Gewand nicht ganz Geheuer war.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_06"); //Er blieb jedenfalls die Nacht �ber, sprach w�hrend dieser Zeit kein Wort und verschwand am n�chsten morgen Richtung Orlans Taverne.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_07"); //Und seitdem hat das Unheil seinen Lauf genommen.
	AI_Output(hero, self, "Info_Mod_Telbor_Hi_15_08"); //Was ist danach vorgefallen?
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_09"); //Es fing zun�chst ganz unscheinbar an. Von dem Friedhof aus dem Wald drangen seit dem immer wieder seltsame Ger�usche, ein St�hnen und �chzen.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_10"); //Mein Kumpel Tonak ist losgezogen, um nachzusehen, was vor sich geht und nicht wiedergekommen. Etwas Schlimmes muss ihm zugesto�en sein.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_11"); //Aber das ist erst der Anfang. Ehnim und Egill hatten zwar immer wieder kleinere Auseinandersetzungen, aber an diesem Tag waren sie wie wildgewordene W�lfe.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_12"); //Es begann zun�chst mit einem kleinen Wortwechsel, der sich rasch zum heftigen Streit auflud.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_13"); //Zuletzt waren beide so au�er sich, dass sie aufeinander losgingen und Egill seinen Bruder so ungl�cklich mit der Sichel am Hals traf, dass dieser schwer verletzt zu Boden ging.
	AI_Output(self, hero, "Info_Mod_Telbor_Hi_12_14"); //Erschrocken �ber seine eigene Tat rannte Egill Richtung Orlan davon und ist ebenfalls seitdem verschwunden.

	Log_CreateTopic	(TOPIC_MOD_AKILSHOF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AKILSHOF, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_DUNKLERPILGER, TOPIC_MOD_AKILSHOF, "Es wird immer mysteri�ser. Seitdem der dunkle Pilger auf Akil�s Hof war, sind dort verheerende Dinge vorgefallen. Er ist anschlie�end Richtung Taverne entschwunden.", "Seit dem Besuch des Pilgers sind beunruhigende Dinge auf dem Hof vorgefallen. Von dem Friedhof im Wald kamen seltsame Ger�usche. Tonak ist nicht zur�ckgekommen, nachdem er dort nach dem Rechten sehen wollte. Egill und Ehnim sind wie besessen aufeinander losgegangen. Ehnim wurde dabei schwer verwundet und Egill ist Richtung Taverne davon gelaufen.");

	B_GivePlayerXP	(200);

	Wld_InsertNpc	(Zombie_Tonak, "WP_GAMPLE_TONAK_ZOMBIE");

	Mod_AkilsHof_WaitingForDeath = Wld_GetDay();
};

INSTANCE Info_Mod_Telbor_WhatHappenedNext (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhatHappenedNext_Condition;
	information	= Info_Mod_Telbor_WhatHappenedNext_Info;
	permanent	= 0;
	important	= 0;
	description	= "Und was ist mit den anderen auf dem Hof?";
};

FUNC INT Info_Mod_Telbor_WhatHappenedNext_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhatHappenedNext_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhatHappenedNext_15_00"); //Und was ist mit den anderen auf dem Hof? Warum seid ihr nicht zusammen alle auf die Suche gegangen?
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext_12_01"); //Wenn die anderen doch nur dazu in der Lage w�ren. Seit dieser Nacht sind sie alle schwer erkrankt und haben sich in das Haus zur�ckgezogen.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext_12_02"); //Es ist besser, wenn du ihnen nicht zu nahe kommst, du k�nntest ebenfalls erkranken.

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Alle anderen sind schwer erkrankt und haben sich in das Haus zur�ckgezogen.");
};

INSTANCE Info_Mod_Telbor_WhatHappenedNext2 (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhatHappenedNext2_Condition;
	information	= Info_Mod_Telbor_WhatHappenedNext2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was ist mit dir? F�hlst du dich wohl?";
};

FUNC INT Info_Mod_Telbor_WhatHappenedNext2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WhatHappenedNext))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhatHappenedNext2_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhatHappenedNext2_15_00"); //Was ist mit dir? F�hlst du dich wohl?
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_01"); //Stimmt, das hatte ich noch gar nicht erw�hnt.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_02"); //Ich war an diesem Abend in der Stadt um unsere Waren zu liefern und sonstige Erledigungen zu machen und als es schon zu dunkel f�r den R�ckweg war, blieb ich die Nacht �ber in der Herberge.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_03"); //Ich kam erst fr�h am n�chsten morgen zur�ck und sah gerade noch den Pilger Richtung Orlan verschwinden.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext2_12_04"); //Dieser verfluchte Unhold, diese Ausgeburt des B�sen . Er muss f�r all das verantwortlich sein.
};

INSTANCE Info_Mod_Telbor_WhatHappenedNext3 (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhatHappenedNext3_Condition;
	information	= Info_Mod_Telbor_WhatHappenedNext3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was willst du jetzt weiter machen?";
};

FUNC INT Info_Mod_Telbor_WhatHappenedNext3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WhatHappenedNext2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhatHappenedNext3_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhatHappenedNext3_15_00"); //Was willst du jetzt weiter machen?
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_01"); //Ich wei� es nicht. Hier weg kann ich sowieso nicht.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_02"); //Ich muss da bleiben, um vorbeikommende Wanderer davor zu warnen, sich dem Haus zu n�hern.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_03"); //Au�erdem k�nnten wilde Tiere aus dem Wald �ber den verletzten Ehnim und die Erkrankten herfallen.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_04"); //Aber andererseits brauchen sie unbedingt Medizin und Ehnim Heilung, sonst �berstehen sie die n�chsten Tage vielleicht nicht.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_05"); //Wenn du die Zeit und die Mittel daf�r findest, so w�rde ich dich bitten zu versuchen, irgendwo Hilfe f�r uns zu finden.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_06"); //Vielleicht im Kloster, oder in der Stadt, wo es einen heilkundigen Wassermagier gibt, ... oder auch die Kr�uterhexe in der N�he des Gro�bauernhofs.
	AI_Output(self, hero, "Info_Mod_Telbor_WhatHappenedNext3_12_07"); //Aber beeile dich bitte, sonst ist es schlecht um uns alle bestellt.

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Telbor hat mich darum gebeten Heilung f�r Ehnim und Medizin f�r die Erkrankten zu beschaffen, um ihrem Siechtum Einhalt zu gebieten. Er meinte, ich k�nnte vielleicht im Kloster, in der Stadt bei einem Wassermagier, oder bei einer Kr�uterhexe in der N�he des Gro�bauernhofes Unterst�tzung erfahren.");
};

INSTANCE Info_Mod_Telbor_TonakZombie (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_TonakZombie_Condition;
	information	= Info_Mod_Telbor_TonakZombie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe deinen Freund Tonak gefunden.";
};

FUNC INT Info_Mod_Telbor_TonakZombie_Condition()
{
	if (Mod_KnowsTonakZombie == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_TonakZombie_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_00"); //Ich habe deinen Freund Tonak gefunden.
	AI_Output(self, hero, "Info_Mod_Telbor_TonakZombie_12_01"); //(erfreut) Ja, wo ist er?
	AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_02"); //�hhm, ...
	AI_Output(self, hero, "Info_Mod_Telbor_TonakZombie_12_03"); //(besorgt) Warum ist er nicht mitgekommen? Es ist ihm doch nicht etwa etwas zugesto�en? (h�lt kurz inne) Er ist doch nicht etwa ... tot?

	if (Npc_IsDead(Zombie_Tonak))
	{
		AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_04"); //Nun, also ... ach was soll�s. Er verrottet mit Zombies und anderem Untoten Pack auf dem Friedhof.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Telbor_TonakZombie_15_05"); //Nun, also ... ach was soll�s. Er wandelt mit Zombies und anderem Untoten Pack auf dem Friedhof umher.
	};

	AI_Output(self, hero, "Info_Mod_Telbor_TonakZombie_12_06"); //(kurze Pause) Das muss ich erst mal verdauen.
	
	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Telbor_Gerettet (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Gerettet_Condition;
	information	= Info_Mod_Telbor_Gerettet_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Gerettet_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Gerettet_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Gerettet_12_00"); //Du hast es tats�chlich geschafft. Sei dir meines ewigen Dankes gewiss. Ohne dich w�ren wir alle verloren gewesen.
	
	B_GivePlayerXP	(150);

	B_StartOtherRoutine	(Mod_900_BAU_Akil_NW, "START");
	B_StartOtherRoutine	(Mod_906_BAU_Randolph_NW, "FOLLOWPLAYER");
	B_StartOtherRoutine	(Mod_905_BAU_Kati_NW, "START");
	B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");

	B_SetTopicStatus	(TOPIC_MOD_AKILSHOF, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Telbor_AllDead (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_AllDead_Condition;
	information	= Info_Mod_Telbor_AllDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_AllDead_Condition()
{
	if (Mod_AkilsHofAusgestorben == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_AllDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_AllDead_12_00"); //(resigniert) Zu sp�t. Im Haus sind alle verschieden. Ich werde mich bald daran machen sie zu bestatten.
	
	B_GivePlayerXP	(50);

	Mod_AkilsHof_WaitingForDeath = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Da habe ich mir wohl zu viel Zeit gelassen. Die Erkrankten weilen nicht mehr unter uns.");
	B_SetTopicStatus	(TOPIC_MOD_AKILSHOF, LOG_SUCCESS);
};

INSTANCE Info_Mod_Telbor_AllZombies (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_AllZombies_Condition;
	information	= Info_Mod_Telbor_AllZombies_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_AllZombies_Condition()
{
	if (Mod_AkilsHofAusgestorben == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_AllZombies_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_00"); //Kennt Innos denn gar keine Gnade? Wie kann er nur so was Abscheuliches zulassen?
	AI_Output(hero, self, "Info_Mod_Telbor_AllZombies_15_01"); //Ja, es ist sicher hart, aber der Tod geh�rt zum Leben dazu.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_02"); //(aufgebracht) Leben?! Tod?! Wenn es nur das w�re ... Als ich gestern daran gehen wollte die Armen zu bestatten, begannen sie sich pl�tzlich zu r�hren.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_03"); //Verbl�fft und regungslos blieb ich stehen und sah dabei zu, wie sie sich erhoben. Es war schon Nacht und dunkel im Haus, sodass ich ihre Gesichter nicht erkennen konnte.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_04"); //Als sie jedenfalls vor mir standen glaubte ich an ein Wunder.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_05"); //Nachdem ich ihnen jedoch zu nahe kam begannen sie pl�tzlich nach mir zu schlagen und abscheuliche, gequ�lte Laute von sich zu geben.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_06"); //Ich st�rzte nach hinten und sah jetzt das Gesicht Akil�s, als der Mondenschein darauf viel. Es war grausam verzerrt mit toten, ausdruckslosen Augen.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_07"); //Sie waren alle zu widerlichen Zombies geworden. Im letzten Moment konnte ich noch aus dem Haus st�rzen, sonst w�re ich als das Mahl dieser Untoten geendet.
	AI_Output(hero, self, "Info_Mod_Telbor_AllZombies_15_08"); //Hmm, ja, das ist nat�rlich �bel.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_09"); //Ich will auf jedem Fall keinen Augenblick l�nger an diesem verfluchten Ort verweilen.
	AI_Output(self, hero, "Info_Mod_Telbor_AllZombies_12_10"); //Wir gehen in die Stadt und hoffen, dass uns dort ein besseres Schicksal erwartet. Hier gibt es nur Elend, Tod ... und noch Schlimmeres ...

	B_GivePlayerXP	(100);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CITY");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "CITY");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "CITY");
	};
};

INSTANCE Info_Mod_Telbor_WantingToHof (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WantingToHof_Condition;
	information	= Info_Mod_Telbor_WantingToHof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_WantingToHof_Condition()
{
	if (Kapitel >= 3)
	&& (Mod_Telbor_GoingToHof == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Telbor_AllZombies))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WantingToHof_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_00"); //Hallo, gibt es irgendwelche Neuigkeiten aus der Welt da drau�en?
	AI_Output(hero, self, "Info_Mod_Telbor_WantingToHof_15_01"); //Nun, zurzeit herrscht einiges Ungemach zwischen G�ttern, D�monen und Magiern. Schwere Zeiten eben.
	AI_Output(hero, self, "Info_Mod_Telbor_WantingToHof_15_02"); //Und was hast du so zu berichten? Wie ist das Leben in der Stadt?
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_03"); //Ach, es ist ein unw�rdiges Dasein. Irgendwie schl�gt man sich als Tagel�hner durch, oder f�hrt die Schafe auf die Wiese.
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_04"); //Damals auf Akil�s Hof war es zwar nicht immer einfach, aber es war richtige Arbeit, f�r die man auch mit einer guten Ernte entlohnt wurde und mit Anerkennung.
	AI_Output(self, hero, "Info_Mod_Telbor_WantingToHof_12_05"); //Hier bin ich nichts weiter als ein Tagedieb und Nichtsnutz.
};

INSTANCE Info_Mod_Telbor_WhyNotHof (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_WhyNotHof_Condition;
	information	= Info_Mod_Telbor_WhyNotHof_Info;
	permanent	= 0;
	important	= 0;
	description	= "Warum f�ngst du nicht wieder an und nimmst Akils Hof in Betrieb?";
};

FUNC INT Info_Mod_Telbor_WhyNotHof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WantingToHof))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_WhyNotHof_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_WhyNotHof_15_00"); //Warum f�ngst du nicht wieder an und nimmst Akils Hof in Betrieb?
	AI_Output(self, hero, "Info_Mod_Telbor_WhyNotHof_12_01"); //Ein sch�ner Traum, aber solange dort die Untoten ihr Unwesen treiben, setze ich ganz bestimmt keinen Fu� dort hin.
	AI_Output(self, hero, "Info_Mod_Telbor_WhyNotHof_12_02"); //Naja, was soll ich weiter viel reden. Die Schafe m�ssen gemolken werden. Hab dank f�r das Gespr�ch.

	Log_CreateTopic	(TOPIC_MOD_TELBOR_WEHMUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_WEHMUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TELBOR_WEHMUT, "Telbor hat sich �ber das Leben in der Stadt beklagt. Er w�rde gerne wieder Akils Hof bewirtschaften, f�rchtet sich jedoch vor den Untoten im Haus.");
};

INSTANCE Info_Mod_Telbor_ZombiesWeg (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_ZombiesWeg_Condition;
	information	= Info_Mod_Telbor_ZombiesWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Untoten im Haus sind nicht mehr.";
};

FUNC INT Info_Mod_Telbor_ZombiesWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_WhyNotHof))
	&& (Npc_IsDead(Zombie_Akil))
	&& (Npc_IsDead(Zombie_Randolph))
	&& (Npc_IsDead(Zombie_Kati))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_ZombiesWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_ZombiesWeg_15_00"); //Die Untoten im Haus sind nicht mehr.
	AI_Output(self, hero, "Info_Mod_Telbor_ZombiesWeg_12_01"); //Was, wirklich? Hab Dank f�r die Mittelung. Ja, eigentlich k�nnte ich jetzt wieder hin, nur ...
	AI_Output(hero, self, "Info_Mod_Telbor_ZombiesWeg_15_02"); //Ja, was ist noch?
	AI_Output(self, hero, "Info_Mod_Telbor_ZombiesWeg_12_03"); //Ich warte lieber noch mal etwas ab, ob der dunkle Pilger nicht vielleicht wieder sein Unwesen treibt.
	AI_Output(self, hero, "Info_Mod_Telbor_ZombiesWeg_12_04"); //Ach, wenn ich mir doch nur sicher sein k�nnte, dass er sich nie wieder Unheil anrichtet ...

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_TELBOR_WEHMUT, "Tja, der dunkle Pilger bzw. Urnol bereitet ihm noch sorgen. Ehe Telbor nicht sicher sein kann von ihm unbehelligt zu bleiben, will er noch mit der R�ckkehr auf den Hof warten.");
};

INSTANCE Info_Mod_Telbor_PilgerTot (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_PilgerTot_Condition;
	information	= Info_Mod_Telbor_PilgerTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Der abscheuliche Pilger wird nie wieder jemandem Schaden zuf�gen k�nnen.";
};

FUNC INT Info_Mod_Telbor_PilgerTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_ZombiesWeg))
	&& (Mod_IstUrnolTot == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_PilgerTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_00"); //Der abscheuliche Pilger wird nie wieder jemandem Schaden zuf�gen k�nnen.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_01"); //Was, bist du auch wirklich sicher?
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_02"); //Ja, ich habe gesehen, wie er zu Grunde ging.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_03"); //Welch erfreuliche Mitteilung. Hat dieser widerliche Unhold seine gerechte Strafe doch noch erhalten.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_04"); //M�ge er bei Beliar bis in alle Ewigkeit schmoren.
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_05"); //Dann wirst du jetzt die Arbeit auf dem Hof wieder aufnehmen?
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_06"); //Ja, jetzt scheint dem kaum noch etwas im Wege zu stehen. Es ist nur ...
	AI_Output(hero, self, "Info_Mod_Telbor_PilgerTot_15_07"); //Was jetzt noch?
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_08"); //Nun, ohne zus�tzliche Arbeiter wird man den Hof schwerlich bewirtschaften k�nnen.
	AI_Output(self, hero, "Info_Mod_Telbor_PilgerTot_12_09"); //Zwei weitere Landarbeiter und eine Magd m�ssten es schon sein. Aber wo ich die jetzt auf die schnelle finden soll ...

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_TELBOR_WEHMUT, "Diesmal sind es zwei Arbeiter und eine Magd die fehlen, damit die Arbeit auf dem Hof wieder aufgenommen werden kann.");
};

INSTANCE Info_Mod_Telbor_FarmWorking (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_FarmWorking_Condition;
	information	= Info_Mod_Telbor_FarmWorking_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du kannst nun auf den Hof zur�ckkehren.";
};

FUNC INT Info_Mod_Telbor_FarmWorking_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_PilgerTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Onar_BauernFuerAkil))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_FarmWorking_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_FarmWorking_15_00"); //Du kannst nun auf den Hof zur�ckkehren.
	AI_Output(hero, self, "Info_Mod_Telbor_FarmWorking_15_01"); //Es haben sich tats�chlich zwei Landarbeiter und eine Magd gefunden, die dabei helfen werden, den Hof wieder zu bewirtschaften.
	AI_Output(self, hero, "Info_Mod_Telbor_FarmWorking_12_02"); //(erfreut) Tats�chlich? Dann hat uns Innos vielleicht doch noch nicht vergessen, wenn er uns einen selbstlosen Helfer wie dich schickt.
	AI_Output(self, hero, "Info_Mod_Telbor_FarmWorking_12_03"); //Ich wei� nicht, wie ich dir danken soll. M�ge der Segen Innos auf ewig mit dir sein.
	
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_WEHMUT, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ATAKIL");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "START");
	};

	Mod_Telbor_HofBesetzt = Wld_GetDay();

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Telbor_Hausbesetzer (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Hausbesetzer_Condition;
	information	= Info_Mod_Telbor_Hausbesetzer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Hausbesetzer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_FarmWorking))
	&& (Mod_Telbor_GoingToHof == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Hausbesetzer_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Hausbesetzer_12_00"); //(ersch�pft) Nimmt es denn gar kein Ende?!
	AI_Output(hero, self, "Info_Mod_Telbor_Hausbesetzer_15_01"); //Was ist passiert?
	AI_Output(self, hero, "Info_Mod_Telbor_Hausbesetzer_12_02"); //Einige ganz obskure Gestalten haben unser Haus besetzt.
	AI_Output(self, hero, "Info_Mod_Telbor_Hausbesetzer_12_03"); //Dort setzen wir ganz bestimmt keinen Fu� mehr hinein, ehe sie nicht verschwunden sind.

	Log_CreateTopic	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Telbor beklagt sich, nicht mehr in das Haus zu k�nnen, da sich dort finstere Gestalten niedergelassen h�tten.");
};

INSTANCE Info_Mod_Telbor_Uriela (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Uriela_Condition;
	information	= Info_Mod_Telbor_Uriela_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_Uriela_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_LiveTogether))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_Uriela_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_Uriela_12_00"); //Und, hast du sie endlich aus dem Haus gejagt?
	AI_Output(hero, self, "Info_Mod_Telbor_Uriela_15_01"); //Nein. Es sind Fl�chtlinge, die wie ihr, unter dem Meister des dunklen Pilgers gelitten haben.
	AI_Output(hero, self, "Info_Mod_Telbor_Uriela_15_02"); //K�nntest du dir nicht vorstellen f�r einige zeit mit ihnen zusammenzuleben?
	AI_Output(self, hero, "Info_Mod_Telbor_Uriela_12_03"); //Was?! Mit diesem Unrat Beliars?! Nie und nimmer!
};

INSTANCE Info_Mod_Telbor_TalkAgain (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_TalkAgain_Condition;
	information	= Info_Mod_Telbor_TalkAgain_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ok, dann rede ich noch mal mit ihnen.";
};

FUNC INT Info_Mod_Telbor_TalkAgain_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Uriela))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_GoBackToCity))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_TalkAgain_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_TalkAgain_15_00"); //Ok, dann rede ich noch mal mit ihnen.

	B_LogEntry	(TOPIC_MOD_TELBOR_HAUSBESETZER, "Telbor kann es sich unter keinen Umst�nden vorstellen, mit den Belianern zusammenzuwohnen. Dann werde ich versuchen m�ssen Uriela davon zu �berzeugen, woanders hin zu gehen.");
};

INSTANCE Info_Mod_Telbor_GoBackToCity (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_GoBackToCity_Condition;
	information	= Info_Mod_Telbor_GoBackToCity_Info;
	permanent	= 0;
	important	= 0;
	description	= "Na gut. Wenn es dir nicht passt, kannst du ja wieder in die Stadt gehen.";
};

FUNC INT Info_Mod_Telbor_GoBackToCity_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Telbor_Uriela))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_TalkAgain))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_GoBackToCity_Info()
{
	AI_Output(hero, self, "Info_Mod_Telbor_GoBackToCity_15_00"); //Na gut. Wenn es dir nicht passt, kannst du ja wieder in die Stadt gehen.
	AI_Output(self, hero, "Info_Mod_Telbor_GoBackToCity_12_01"); //Genau das werde ich auch tun. Die anderen k�nnen ja machen, was sie wollen.
	AI_Output(self, hero, "Info_Mod_Telbor_GoBackToCity_12_02"); //Und ich m�chte noch sagen, dass ich �ber die Ma�en entt�uscht von dir bin.
	AI_Output(self, hero, "Info_Mod_Telbor_GoBackToCity_12_03"); //Ich habe mich schwer in dir get�uscht.
	
	B_SetTopicStatus	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_FAILED);

	Wld_InsertNpc	(FeldarbeiterSkelett_Akil, "FARM2");

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CITY");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ATAKIL");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "START");
	};
};

INSTANCE Info_Mod_Telbor_SindWeg (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_SindWeg_Condition;
	information	= Info_Mod_Telbor_SindWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Telbor_SindWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachingFinished))
	|| (Npc_KnowsInfo(hero, Info_Mod_Uriela_Bengar))
	|| (Mod_UrielaCo_Weg == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Telbor_SindWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Telbor_SindWeg_12_00"); //Und, ist das Haus endlich leer?
	AI_Output(hero, self, "Info_Mod_Telbor_SindWeg_15_01"); //Ja, ihr k�nnte wieder hinein.
	AI_Output(self, hero, "Info_Mod_Telbor_SindWeg_12_02"); //Erneut bin ich dir gro�en Dank schuldig. Ich hoffe, dass kann dich zumindest etwas entsch�digen.

	B_GivePlayerXP	(300);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_TELBOR_HAUSBESETZER, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1403_BAU_Baeuerin_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1409_BAU_Bauer_NW, "ATAKIL");
	B_StartOtherRoutine	(Mod_1410_BAU_Bobo_NW, "ATAKIL");

	if (Npc_KnowsInfo(hero, Info_Mod_Ehnim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_903_BAU_Ehnim_NW, "START");
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim01))
	|| (Npc_KnowsInfo(hero, Info_Mod_Egill_Ehnim02))
	{
		B_StartOtherRoutine	(Mod_902_BAU_Egill_NW, "START");
	};

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Telbor_Pickpocket (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_Pickpocket_Condition;
	information	= Info_Mod_Telbor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Telbor_Pickpocket_Condition()
{
	C_Beklauen	(40, ItMi_Gold, 30);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

	Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_BACK, Info_Mod_Telbor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Telbor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

		Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Telbor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Telbor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Telbor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Telbor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Telbor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Telbor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Telbor_EXIT (C_INFO)
{
	npc		= Mod_908_BAU_Telbor_NW;
	nr		= 1;
	condition	= Info_Mod_Telbor_EXIT_Condition;
	information	= Info_Mod_Telbor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Telbor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Telbor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};