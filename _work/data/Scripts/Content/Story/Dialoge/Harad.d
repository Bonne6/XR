INSTANCE Info_Mod_Harad_Hi (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Hi_Condition;
	information	= Info_Mod_Harad_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du bist Schmied, richtig?";
};

FUNC INT Info_Mod_Harad_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Harad_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Hi_15_00"); //Du bist Schmied, richtig?
	AI_Output(self, hero, "Info_Mod_Harad_Hi_12_01"); //(beleidigt) Das sieht man doch!
};

INSTANCE Info_Mod_Harad_Waffenverkauf (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Waffenverkauf_Condition;
	information	= Info_Mod_Harad_Waffenverkauf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Verkaufst du auch Waffen?";
};

FUNC INT Info_Mod_Harad_Waffenverkauf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Waffenverkauf_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Waffenverkauf_15_00"); //Verkaufst du auch Waffen?
	AI_Output(self, hero, "Info_Mod_Harad_Waffenverkauf_12_01"); //Jetzt soll ich auch noch Waffen verkaufen?!
	AI_Output(self, hero, "Info_Mod_Harad_Waffenverkauf_12_02"); //Reicht es nicht, dass ich den ganzen Tag vor der Schmiede stehe und mir das Gesicht und die H�nde versenge?
	AI_Output(self, hero, "Info_Mod_Harad_Waffenverkauf_12_03"); //Frag doch Brian, den L�mmel. Der kann sich auch mal zu etwas n�tzlich machen.
};

INSTANCE Info_Mod_Harad_SchlechteLaune (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_SchlechteLaune_Condition;
	information	= Info_Mod_Harad_SchlechteLaune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Warum so schlecht gelaunt?";
};

FUNC INT Info_Mod_Harad_SchlechteLaune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_SchlechteLaune_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_SchlechteLaune_15_00"); //Warum so schlecht gelaunt?
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_12_01"); //Ich �berlege gerade ernsthaft, ob ich die Arbeit nicht einfach an den Nagel h�ngen soll.
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_12_02"); //Anscheinend wird sie nicht mehr wertgesch�tzt.
	AI_Output(hero, self, "Info_Mod_Harad_SchlechteLaune_15_03"); //Was ist passiert?
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_12_04"); //Die letzte Stahllieferung hat mich nie erreicht. Sie wurde von den Paladinen beschlagnahmt. Als w�re ich ein Verbrecher!
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_12_05"); //Da sollen sie sich nicht wundern, wenn ich ihnen keine Waffen schmieden will.
	AI_Output(self, hero, "Info_Mod_Harad_SchlechteLaune_12_06"); //Wie man in den Wald hineinruft, so schallt es heraus.
};

INSTANCE Info_Mod_Harad_Bartok (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Bartok_Condition;
	information	= Info_Mod_Harad_Bartok_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe einen Spezialauftrag von Bartok.";
};

FUNC INT Info_Mod_Harad_Bartok_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bartok_Stimme))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	&& (Mod_Bartok_Ruestung_Day == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Bartok_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_00"); //Ich habe einen Spezialauftrag von Bartok.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_12_01"); //Na, die Zahlungsmoral bei dem Hurenbock kann ich mir ja vorstellen.
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_02"); //Er w�nscht sich eine Sumpfkrautr�stung.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_12_03"); //(beleidigt) Haha, wie witzig. H�tte ich mir gleich denken k�nnen, dass ihr mich ver�ppeln wollt.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_12_04"); //Treibt eure Sp��e mit jemand anderem.
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_05"); //Er hat mir 1000 Gold mitgegeben...
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_12_06"); //(wie ausgetauscht) Eine Sumpfkrautr�stung? Kein Problem! Also ... quasi keins!
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_07"); //Du k�mmerst dich also drum?
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_12_08"); //Was soll ich denn sonst auch machen?
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_09"); //Und was wird die Anfertigung kosten?
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_12_10"); //(�berlegt angestrengt) Materialkosten, Arbeitszeit, Transportwege... Ich komme da ziemlich genau auf 1000 Gold!
	AI_Output(hero, self, "Info_Mod_Harad_Bartok_15_11"); //(ironisch) Potztausend, was ein Zufall.
	AI_Output(self, hero, "Info_Mod_Harad_Bartok_12_12"); //Soll's ja geben. Komm morgen vorbei, dann kann ich dir Neues berichten!

	B_LogEntry	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, "Harad braucht einen Tag, um die R�stung zu entwerfen. Dann soll ich noch mal vorbeischauen.");

	Mod_Bartok_Ruestung_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Harad_Sumpfkrautruestung (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Sumpfkrautruestung_Condition;
	information	= Info_Mod_Harad_Sumpfkrautruestung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was gibt's Neues zur Sumpfkrautr�stung?";
};

FUNC INT Info_Mod_Harad_Sumpfkrautruestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Bartok))
	&& (Mod_Bartok_Ruestung_Day < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Sumpfkrautruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung_15_00"); //Was gibt's Neues zur Sumpfkrautr�stung?
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung_12_01"); //Zwei Dinge. Erstens brauche ich deine Unterst�tzung, um alles N�tige zu besorgen.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung_12_02"); //Ich habe dir eine Liste angefertigt.

	B_GiveInvItems	(self, hero, ItWr_KrautruestungListe, 1);

	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung_15_03"); //Und zweitens?
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung_12_04"); //Denk an das Gold, wenn du mir die Sachen bringst. Ohne das ... �h, kann ich nicht anfangen.
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung_15_05"); //Schon klar.

	B_LogEntry	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, "Harad hat mir eine Liste mit Dingen gegeben, die es zu beschaffen gilt, bis er mit der R�stung anfangen kann. Au�erdem soll ich daran denken, das Gold mitzubringen.");
};

INSTANCE Info_Mod_Harad_Sumpfkrautruestung2 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Sumpfkrautruestung2_Condition;
	information	= Info_Mod_Harad_Sumpfkrautruestung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier sind die Sachen f�r die R�stung.";
};

FUNC INT Info_Mod_Harad_Sumpfkrautruestung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Bartok))
	&& (Npc_HasItems(hero, ItAt_LurkerSkin) >= 10)
	&& (Npc_HasItems(hero, ItMiSwordRaw) >= 5)
	&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 3)
	&& (Npc_HasItems(hero, ItPl_Swampherb) >= 15)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Sumpfkrautruestung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung2_15_00"); //Hier sind die Sachen f�r die R�stung.

	Npc_RemoveInvItems	(hero, ItAt_LurkerSkin, 10);
	Npc_RemoveInvItems	(hero, ItMiSwordRaw, 5);
	Npc_RemoveInvItems	(hero, ItPl_Swampherb, 15);
	Npc_RemoveInvItems	(hero, ItAt_SkeletonBone, 3);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 1000);
	Npc_RemoveInvItems	(hero, ItWr_KrautruestungListe, 1);

	B_ShowGivenThings	("1000 Gold, 15 Sumpfkrautpflanzen, 10 Reptilienh�ute, 5 Rohstahl und 3 Skelettknochen gegeben");

	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_12_01"); //Es wird zwar schwierig, daraus eine respektable Lederr�stung zu erstellen, aber dir sei versichert, dass du dich an niemand Besseren h�ttest wenden k�nnen.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_12_02"); //Da die H�ute noch gegerbt werden m�ssen, dauert die Fertigstellung der R�stung ein paar Tage.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_12_03"); //Dein Freund Bartok kann sie dann in einer Woche abholen.
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung2_15_04"); //Er ist nicht mein Freund.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung2_12_05"); //Wie auch immer. Sag ihm das.

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_BARTOK_SUMPFKRAUTRUESTUNG, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Harad_Sumpfkrautruestung3 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Sumpfkrautruestung3_Condition;
	information	= Info_Mod_Harad_Sumpfkrautruestung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bartok will die R�stung nicht mehr. Du kannst sie mir geben.";
};

FUNC INT Info_Mod_Harad_Sumpfkrautruestung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bartok_Ruestung))
	&& (Mod_Bartok_Ruestung_Day+7 < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Sumpfkrautruestung3_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Sumpfkrautruestung3_15_00"); //Bartok will die R�stung nicht mehr. Du kannst sie mir geben.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung3_12_01"); //Das m�sst ihr unter euch ausmachen.
	AI_Output(self, hero, "Info_Mod_Harad_Sumpfkrautruestung3_12_02"); //Ich lobe mich ja nur ungern, aber sie ist ein wahres Prachtst�ck geworden. Hier ist sie.

	CreateInvItems	(self, ItAr_Sumpfkraut, 1);
	B_GiveInvItems	(self, hero, ItAr_Sumpfkraut, 1);
};

INSTANCE Info_Mod_Harad_Piraten (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Piraten_Condition;
	information	= Info_Mod_Harad_Piraten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bekommst du den Rost von dieser Klinge runter?";
};

FUNC INT Info_Mod_Harad_Piraten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Greg_Aufgabe))
	&& (Npc_HasItems(hero, ItMw_Piratensaebel_Greg) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Piraten_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Piraten_15_00"); //Bekommst du den Rost von dieser Klinge runter?

	B_GiveInvItems	(hero, self, ItMw_Piratensaebel_Greg, 1);

	AI_Output(self, hero, "Info_Mod_Harad_Piraten_12_01"); //Hmm ... Lass mal sehen ...

	AI_UnequipWeapons	(self);
	EquipItem	(self, ItMw_Piratensaebel_Greg);
	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);
	AI_UnequipWeapons	(self);

	AI_Output(self, hero, "Info_Mod_Harad_Piraten_12_02"); //Ein selten sch�nes Teil, obwohl es nicht von mir kommt. Woher hast du es?
	AI_Output(hero, self, "Info_Mod_Harad_Piraten_15_03"); //Tut nichts zur Sache. Kannst du?
	AI_Output(self, hero, "Info_Mod_Harad_Piraten_12_04"); //F�rs Klingenputzen habe ich jetzt gar keine Zeit.
	AI_Output(self, hero, "Info_Mod_Harad_Piraten_12_05"); //Mit so etwas beauftragt man unerfahrene Schmiede, keinen Meister wie mich.
	AI_Output(hero, self, "Info_Mod_Harad_Piraten_15_06"); //Na gut. Dann gib wieder her.

	B_GiveInvItems	(self, hero, ItMw_Piratensaebel_Greg, 1);

	B_LogEntry	(TOPIC_MOD_GREG_ROST, "Harad hat gerade zu viele Auftr�ge. Vielleicht sollte ich Bennet bei den S�ldnern fragen.");
};

INSTANCE Info_Mod_Harad_Lehrling (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Lehrling_Condition;
	information	= Info_Mod_Harad_Lehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Matteo sagt, ich br�uchte deine Zustimmung, um Lehrling werden zu k�nnen.";
};

FUNC INT Info_Mod_Harad_Lehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Lehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_00"); //Matteo sagt, ich br�uchte deine Zustimmung, um Lehrling werden zu k�nnen.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_12_01"); //Oh nein, jetzt soll ich mir schon wieder eine Pr�fung ausdenken, oder wie?
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_12_02"); //Als h�tte ich den ganzen Tag �ber nichts Besseres zu tun!
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_03"); //Irgendetwas werde ich doch tun k�nnen, womit ich dir unter die Arme greifen kann.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_12_04"); //Da gibt's nur eine Sache - aber bei der wirst du mir auch nicht helfen k�nnen.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_12_05"); //Und zwar geht es um mein beschlagnahmtes Stahlpaket, das die Paladine auf ihr Schiff geladen haben, um es dem K�nig zu bringen - m�ge er sich damit selbst umbringen!
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_12_06"); //Das Schiff wird die ganze Zeit �ber bewacht, und die Wachen lassen niemanden zum Stahlpaket durch, nicht mal mich als rechtm��igen Eigent�mer.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_12_07"); //Du m�sstest also eine andere M�glichkeit finden, auf das Schiff zu gelangen.
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_08"); //Wo befindet sich denn das Paket auf dem Schiff?
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_12_09"); //Das liegt wahrscheinlich im Frachtraum unter Deck, wo es die n�chsten Monate vor sich hin modern soll.
	AI_Output(hero, self, "Info_Mod_Harad_Lehrling_15_10"); //Ich werd mal nachschauen.
	AI_Output(self, hero, "Info_Mod_Harad_Lehrling_12_11"); //Mach dir blo� keine Hoffnungen!

	Log_CreateTopic	(TOPIC_MOD_HARADSSTAHL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HARADSSTAHL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HARADSSTAHL, "Um Harads Stimme zu bekommen soll ich ihm sein Stahlpaket, welches auf dem Schiff der Paladine ist, bringen.");
};

INSTANCE Info_Mod_Harad_Stimme (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Stimme_Condition;
	information	= Info_Mod_Harad_Stimme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Schau mal, was ich hier habe.";
};

FUNC INT Info_Mod_Harad_Stimme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Lehrling))
	&& (Npc_HasItems(hero, ItMi_Addon_Steel_Paket) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Stimme_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Stimme_15_00"); //Schau mal, was ich hier habe.

	B_GiveInvItems	(hero, self, ItMi_Addon_Steel_Paket, 1);

	AI_Output(self, hero, "Info_Mod_Harad_Stimme_12_01"); //Die W�chter lie�en sich also doch bestechen?
	AI_Output(hero, self, "Info_Mod_Harad_Stimme_15_02"); //Nein.
	AI_Output(self, hero, "Info_Mod_Harad_Stimme_12_03"); //(br�sk) Dann will ich gar nicht wissen, wie du daran gelangt bist.
	AI_Output(self, hero, "Info_Mod_Harad_Stimme_12_04"); //Ich habe zwar schon erhebliche Einbu�en durch das verz�gerte Paket verzeichnen m�ssen, aber immerhin ist es jetzt da.
	AI_Output(self, hero, "Info_Mod_Harad_Stimme_12_05"); //Meinetwegen kannst du meine Stimme haben.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_HARADSSTAHL, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	Mod_LehrlingsStimmen += 1;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Harad_DeinLehrling (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_DeinLehrling_Condition;
	information	= Info_Mod_Harad_DeinLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kann ich bei dir Lehrling werden?";
};

FUNC INT Info_Mod_Harad_DeinLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Stimme))
	&& (Mod_LehrlingsStimmen == 5)
	&& (Mod_IstLehrling == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_DeinLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrling_15_00"); //Kann ich bei dir Lehrling werden?
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrling_12_01"); //Unm�glich! Ich kann nicht gleichzeitig arbeiten und mich um zwei Lehrlinge k�mmern.
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrling_15_03"); //Aber Brian hat doch schon viel gelernt ...
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrling_12_04"); //... Und wenn man ihm nicht st�ndig auf die Finger schaut, macht er trotzdem alles falsch!
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrling_12_05"); //Nein, einen zweiten Lehrling werde ich nicht aufnehmen.
};

INSTANCE Info_Mod_Harad_DeinLehrlingStattBrian (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_DeinLehrlingStattBrian_Condition;
	information	= Info_Mod_Harad_DeinLehrlingStattBrian_Info;
	permanent	= 0;
	important	= 0;
	description	= "W�rdest du mich statt Brian nehmen wollen?";
};

FUNC INT Info_Mod_Harad_DeinLehrlingStattBrian_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_DeinLehrling))
	&& (Mod_IstLehrling == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_DeinLehrlingStattBrian_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrlingStattBrian_15_00"); //W�rdest du mich statt Brian nehmen wollen?
	AI_Output(self, hero, "Info_Mod_Harad_DeinLehrlingStattBrian_12_01"); //Na ja, noch ungeschickter als er kannst du dich ja kaum anstellen.
	AI_Output(hero, self, "Info_Mod_Harad_DeinLehrlingStattBrian_15_02"); //Dann werde ich mich mal mit ihm unterhalten.
};

INSTANCE Info_Mod_Harad_Aufnahme (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Aufnahme_Condition;
	information	= Info_Mod_Harad_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe mit Brian gesprochen.";
};

FUNC INT Info_Mod_Harad_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brian_HaradLehrling))
	&& (Mod_IstLehrling == 0)
	&& (Mod_LehrlingsStimmen == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_15_00"); //Ich habe mit Brian gesprochen.
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_09_01"); //(aufgebracht) Ich wei�! Sein Gestammel war ja nicht zu �berh�ren!
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_09_02"); //Der wird seine Worte noch bitter bereuen.

	Info_ClearChoices	(Info_Mod_Harad_Aufnahme);

	Info_AddChoice	(Info_Mod_Harad_Aufnahme, "Brian hat mich �berzeugt, dass ich kein Schmied werden sollte.", Info_Mod_Harad_Aufnahme_B);
	Info_AddChoice	(Info_Mod_Harad_Aufnahme, "Wie sieht's aus, nimmst du mich nun als Lehrling?", Info_Mod_Harad_Aufnahme_A);
};

FUNC VOID Info_Mod_Harad_Aufnahme_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_B_15_00"); //Brian hat mich �berzeugt, dass ich kein Schmied werden sollte.
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_B_09_01"); //Dieser elende kleine Wurm! Was habe ich verbrochen, um mit ihm bestraft zu werden?

	Info_ClearChoices	(Info_Mod_Harad_Aufnahme);
};

FUNC VOID Info_Mod_Harad_Aufnahme_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_A_15_00"); //Wie sieht's aus, nimmst du mich nun als Lehrling?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_01"); //Ich h�tte Lust, nein zu sagen. Wer versichert mir schon, dass du mich nicht auch ausnehmen willst?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_02"); //Aber ohne Lehrling w�rde mein Ansehen sinken. Ich will doch nicht wie Constantino oder Bosper enden.
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_03"); //Deshalb will ich es mit dir versuchen.
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_A_15_04"); //Sch�n. Wann geht es los?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_05"); //Sobald du B�rger der Stadt bist.
	AI_Output(hero, self, "Info_Mod_Harad_Aufnahme_A_15_06"); //Was muss ich daf�r tun?
	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_07"); //Zieh den Fummel hier an.

	CreateInvItems	(hero, ItAr_Smith, 1);
	B_ShowGivenThings ("Schmiedkleidung erhalten");

	AI_UnequipArmor	(hero);

	AI_EquipArmor	(hero, ItAr_Smith);

	AI_Output(self, hero, "Info_Mod_Harad_Aufnahme_A_09_08"); //Das war's schon, glaube ich.

	Mod_IstLehrling	= 1;

	Mod_LehrlingBei = 5;

	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	{
		B_LogEntry_More	(TOPIC_MOD_B�RGER, TOPIC_MOD_TORLOFSPIONAGE, "Harad, der H�ndler, hat mich als seinen Lehrling aufgenommen. Dadurch bin ich jetzt ein B�rger der Stadt.", "Da Harad mich als seinen Lehrling aufgenommen hat ist es mir jetzt m�glich das Obere Viertel zu betreten.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_B�RGER, "Harad, der H�ndler, hat mich als seinen Lehrling aufgenommen. Dadurch bin ich jetzt ein B�rger der Stadt.");
	};

	B_SetTopicStatus	(TOPIC_MOD_B�RGER, LOG_SUCCESS);

	Wld_AssignRoomToGuild ("schmied",	GIL_NONE);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Matteo_Aufnahme);
};

INSTANCE Info_Mod_Harad_Job (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Job_Condition;
	information	= Info_Mod_Harad_Job_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich m�chte etwas lernen.";
};

FUNC INT Info_Mod_Harad_Job_Condition()
{
	if (Mod_LehrlingBei == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Job_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Job_15_00"); //Ich m�chte etwas lernen.
	AI_Output(self, hero, "Info_Mod_Harad_Job_12_01"); //Dann wirst du dich zuerst n�tzlich machen.
	AI_Output(self, hero, "Info_Mod_Harad_Job_12_02"); //Dadurch, dass sich die Paladine so einen offenen Vertrauensbruch geleistet haben, versp�re ich keine gro�e Lust, ihnen weiter zur Verf�gung zu stehen.
	AI_Output(self, hero, "Info_Mod_Harad_Job_12_03"); //Allerdings kann ich ohne neue Auftr�ge nicht �berleben. Deswegen werde ich den S�ldnern meine Dienste anbieten m�ssen.
	AI_Output(self, hero, "Info_Mod_Harad_Job_12_04"); //Hier hast du ein selbstgeschmiedetes Schwert. Das wirst du ihnen zeigen, dann werden sie von meinen F�higkeiten �berzeugt sein.

	B_GiveInvItems	(self, hero, ItMw_HaradSchwert, 1);

	AI_Output(hero, self, "Info_Mod_Harad_Job_15_05"); //Und wenn das nicht funktioniert?
	AI_Output(self, hero, "Info_Mod_Harad_Job_12_06"); //Stell dich nicht bl�d an, dann wird es funktionieren.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_ONE, "Harad gab mir eins seiner Schwerter, mit dem ich die S�ldner beeindrucken soll.");
};

INSTANCE Info_Mod_Harad_GildenZeug (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_GildenZeug_Condition;
	information	= Info_Mod_Harad_GildenZeug_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_GildenZeug_Condition()
{
	if (Mod_LehrlingBei == 5)
	&& (hero.guild > GIL_NONE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_GildenZeug_Info()
{
	if (hero.guild == GIL_PAL)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_00"); //Du auch bei der Miliz? �berleg's dir besser noch mal.
	}
	else if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_01"); //Magier und Schmied? Wie soll sich das denn vertragen?
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_02"); //Zu den S�ldnern zu gehen ist heute wahrscheinlich die edelste Form, K�mpfer zu sein.
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output(self, hero, "Info_Mod_Harad_GildenZeug_09_03"); //Sei blo� froh, wenn ich den Stadtherren nicht von deiner Gildenwahl erz�hle.
	};
};

INSTANCE Info_Mod_Harad_LehrlingQuest (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest_Condition;
	information	= Info_Mod_Harad_LehrlingQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Torlof hat einer Probelieferung zugestimmt.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling4))
	&& (Mod_HaradLehrling_Kampf == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_00"); //Torlof hat einer Probelieferung zugestimmt.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_01"); //Das ist ja mehr, als man in diesen Tagen hoffen kann.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_02"); //Als Entlohnung darfst du mein Schwert behalten. Du kannst es entweder zum K�mpfen benutzen oder auf dem Marktplatz verkaufen.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_03"); //Ich w�re dann bereit f�r eine erste Unterweisung.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_04"); //(seufzt) Wenn's sein muss. Ich bringe dir eine Technik bei, die ich selbst perfektioniert habe.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_05"); //Du wirst dann zwar noch lange nicht so gut sein wie ich, aber immerhin schon deutlich besser als der herk�mmliche Pfuscher.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_06"); //Was f�r eine Technik ist das?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_07"); //Dazu komme ich doch jetzt! Es geht um das Ausbalancieren der Waffe.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_08"); //Einige Idioten setzen den Schwerpunkt des Schwertes nahe der Mitte der Klinge.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_09"); //Dadurch haben zwar die Schl�ge mehr Kraft, das geht aber auf Kosten der Handlichkeit.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_10"); //Viel besser ist ein Schwerpunkt nahe der Parierstange.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_11"); //Zusammen mit einem geringen Gewicht f�hrt das dazu, dass das Schwert im Kampf viel handlicher ist.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_12"); //Bei Zweih�ndern ist es ratsam, den Schwerpunkt weiter hin zur Parierstange zu legen als beim Einh�nder, da hier eine volle Kontrolle noch wichtiger ist.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest_15_13"); //Danke. Ich werde darauf achten.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_14"); //Solltest du auch. So hast du von Anfang an einen Vorteil deinen Gegnern gegen�ber.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_15"); //Jetzt lass mich wieder meiner dringenden Arbeit nachgehen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest_09_16"); //Und verschaff dir etwas �bung, bevor du das n�chste Mal kommst, dann wird es n�mlich schon anspruchsvoller.

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Harad_LehrlingQuestFailed (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuestFailed_Condition;
	information	= Info_Mod_Harad_LehrlingQuestFailed_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich konnte den Auftrag nicht erf�llen.";
};

FUNC INT Info_Mod_Harad_LehrlingQuestFailed_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling4))
	&& (Mod_HaradLehrling_Kampf == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuestFailed_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuestFailed_15_00"); //Ich konnte den Auftrag nicht erf�llen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuestFailed_09_01"); //(verzweifelt) Und womit soll ich jetzt mein Geld verdienen? Was bist du auch f�r ein T�lpel!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuestFailed_15_02"); //Bringst du mir trotzdem was bei?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuestFailed_09_03"); //(faucht) Hau ab, ich will dich f�rs Erste nicht mehr sehen!
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuestFailed_09_04"); //Die Unterweisung f�llt aus.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_ONE, LOG_FAILED);
};

INSTANCE Info_Mod_Harad_LehrlingQuest2 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest2_Condition;
	information	= Info_Mod_Harad_LehrlingQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du wieder was zu tun f�r mich?";
};

FUNC INT Info_Mod_Harad_LehrlingQuest2_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest))
	|| (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuestFailed)))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest2_15_00"); //Hast du wieder was zu tun f�r mich?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_01"); //Schon l�nger. Ich warte nur darauf, dass du dich mal wieder zeigst.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest2_15_02"); //Was gibt's denn?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_03"); //Tengron war hier. Er hat mir verboten, die Schwerter an die S�ldner zu liefern.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_04"); //Er glaubt wohl, das w�rde mich von irgendetwas abhalten. Auf die Paladine pfeif ich doch.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_05"); //Die haben mir gar nichts mehr zu sagen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_06"); //Allerdings komme ich nicht mehr durch die Stadttore. Die Wachen dort warten nur darauf, mich zu filzen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_07"); //Deshalb wirst du einen Weg finden, die Waffen bei Torlof abzugeben.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_08"); //Teleportier dich oder mach was dir gef�llt, Hauptsache, die Wachen entdecken die Lieferung nicht!
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest2_09_09"); //Ich bekomme f�r die Schwerter 2000 Gold von Torlof. Die bringst du mir dann zur�ck.

	B_GiveInvItems	(self, hero, ItMi_Waffenbuendel, 1);

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_TWO, "Harad hat mir aufgetragen, eine Waffenlieferung zu den S�ldnern zu bringen. Dabei muss ich nur darauf achten, dass mich die Stadtwache nicht durchsuchen, etwa, indem ich mich nach au�erhalb teleportiere.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest3 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest3_Condition;
	information	= Info_Mod_Harad_LehrlingQuest3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du hast mir nur 17 Schwerter mitgegeben.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling5))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1700)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_00"); //Du hast mir nur 17 Schwerter mitgegeben.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_01"); //Red keinen Stuss. Es waren 20 Schwerter, wie bestellt.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_02"); //Torlof hat was anderes behauptet. Und nur 1700 Gold bezahlt.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_03"); //Dann hat er gelogen. Ich verz�hle mich doch nicht um drei Schwerter!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_04"); //Er will noch drei Waffen haben, bevor er die restlichen 300 Gold zahlt.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_05"); //Na gut, das ist dann dein Problem.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_06"); //Wieso meins?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_07"); //(eindringlich) Weil du mir 2000 Goldst�cke geben wirst, kapiert?
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_15_08"); //Aber...
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_09_09"); //Sonst kannst du deine n�chste Lektion vergessen!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest3);

	if (Npc_HasItems(hero, ItMi_Gold) >= 2000)
	{
		Info_AddChoice	(Info_Mod_Harad_LehrlingQuest3, "Das ist mir die bl�de Lektion nicht wert.", Info_Mod_Harad_LehrlingQuest3_B);
	};

	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest3, "Na gut. Aber wie bekomme ich dann die 300 Gold von Torlof?", Info_Mod_Harad_LehrlingQuest3_A);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_B_15_00"); //Das ist mir die bl�de Lektion nicht wert.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1700);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_B_09_01"); //(strikt) Damit entf�llt sie f�r dieses Mal. Und jetzt hau ab, ich hab noch zu tun!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest3);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_A_15_00"); //Na gut. Aber wie bekomme ich dann die 300 Gold von Torlof?

	B_GiveInvItems	(hero, self, ItMi_Gold, 2000);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_01"); //Schmiede ihm eben noch drei stinknormale Schwerter, dann wird er schon zufrieden sein.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3_A_15_02"); //Und was wirst du mir heute beibringen?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_03"); //Ich will dir etwas beibringen, was jeder Schmied wissen sollte, was aber nur die wenigsten wirklich wissen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_04"); //Ich werde dir zeigen, wie du eine wirklich dauerhaft scharfe Klinge herstellst.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_05"); //Das Sch�rfen an sich ist ein Kinderspiel. Allerdings neigen Anf�nger und Blender dazu, den Schneidwinkel der Klinge zu gering zu w�hlen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_06"); //Kurz gesagt, die Klinge schneidet durch Holz wie durch Butter - aber nach zweimaligem Gebrauch hat sie sich abgenutzt oder bricht im schlimmsten Fall.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_07"); //Da die Metalle, mit denen wir arbeiten, meistens keine gute Qualit�t haben, ist es deshalb viel eher angebracht, den Schneidwinkel zu erh�hen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_08"); //Damit erzielt man dann nicht so spektakul�re Resultate, aber die Waffe bleibt lange scharf.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3_A_09_09"); //Wenn du mir nicht im Weg herumstehst, kannst du ja mal am Schleifstein �ben.

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest3);

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_TWO, "Ich habe mich dazu entschieden, Harad den vollen Betrag zu zahlen. Wenn ich das fehlende Gold von Torlof bekommen will, muss ich ihm noch drei Schwerter schmieden.");

	B_GivePlayerXP	(200);

	CurrentNQ += 1;

	Schaerfen_Perk = TRUE;
};

INSTANCE Info_Mod_Harad_LehrlingQuest3Failed (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest3Failed_Condition;
	information	= Info_Mod_Harad_LehrlingQuest3Failed_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Stadtwachen haben mir das B�ndel abgenommen.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest3Failed_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling5))
	&& (Npc_HasItems(hero, ItMi_Waffenbuendel) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest3Failed_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3Failed_15_00"); //Die Stadtwachen haben mir das B�ndel abgenommen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3Failed_09_01"); //(tobt) Wie bitte?! Du hast alles ignoriert, was ich dir gesagt habe, und bist ihnen in die Arme gelaufen?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3Failed_09_02"); //Wieso nur muss ich nur immer mit solchen Nichtsnutzen geschlagen sein?
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest3Failed_15_03"); //Die Wachen sagten, es werde Konsequenzen f�r dich haben ...
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest3Failed_09_04"); //(br�llt) Frechheit! Komm mir ja nie wieder unter die Augen!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_TWO, LOG_FAILED);
};

INSTANCE Info_Mod_Harad_LehrlingQuest4 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest4_Condition;
	information	= Info_Mod_Harad_LehrlingQuest4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Da bin ich mal wieder.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest4_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest3))
	|| (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest3Failed)))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest4_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_00"); //Da bin ich mal wieder. Was macht der Handel mit den S�ldnern?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_01"); //Ich habe mir sagen lassen, dass sie bisher nicht sonderlich beeindruckt waren. Das wird sich nun �ndern.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_02"); //Wie das?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_03"); //Ich habe vor, dem Anf�hrer der S�ldner auf Onars Hof ein Geschenk zu machen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_04"); //Im Gegenzug hoffe ich, neue Auftr�ge zu erhalten.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_05"); //Was soll das f�r ein Geschenk sein?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_06"); //Ein Prunkschwert, bei dem ich all mein K�nnen anwende. Damit kann dieser Bennet endg�ltig einpacken.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_07"); //Du musst mir dabei aber helfen. Und deswegen werde ich dir jetzt eine Einf�hrung in die Herstellung einer meisterhaften Waffe geben.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_08"); //Ich bin gespannt.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_09"); //Bei einer Prunkwaffe m�ssen sowohl Optik als auch Qualit�t �berzeugen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_10"); //Bei der Herstellung des Schwerts wende ich eine komplizierte Methode an, die f�r Standardschwerter zu teuer w�re:
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_11"); //Ich nehme vier Stangen unterschiedlichen Stahls, die gestapelt und im Feuer verschwei�t werden.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_12"); //Danach werden die Metalle gefaltet.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_13"); //Nach dem Abk�hlen weist das Schwert eine viel h�here H�rte auf als welche, die aus einer einzelnen Stahlstange geschmiedet worden sind.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_14"); //Das muss ich mal ausprobieren. Hab ich im Kampf was davon?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_15"); //Selbstredend. Wenn du gegen Gegner k�mpfst, die herk�mmliche Waffen benutzen, kannst du viel sorgloser zuschlagen, ohne dir Sorgen machen zu m�ssen, dass dir das Schwert auseinanderbricht.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_16"); //Klingt brauchbar.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_17"); //Um eine besondere Optik zu erzielen, greife ich auf zwei Mittel zur�ck: Als Erstes werden Verzierungen in die Klinge und den Schaft gearbeitet.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_18"); //Anschlie�end schnitze ich am Knauf Einkerbungen, in die sp�ter Edelsteine eingesetzt werden.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_19"); //Kann ich dir bei der Arbeit irgendwie helfen?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_20"); //Ich habe noch nicht alle Edelsteine zusammen, die ich f�r die Ornamentik ben�tige.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_21"); //Mir fehlen noch ein paar Perlen, mindestens drei. Noch besser w�ren f�nf.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest4_15_22"); //Dann schaue ich mal, ob ich welche auftreiben kann.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest4_09_23"); //Aber lass dir nicht zu viel Zeit!

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_HARAD_THREE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_THREE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_THREE, "Harad braucht noch mindestens drei Perlen, bis er mit dem Schmieden einer Prunkwaffe f�r Lares beginnen kann.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest5 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest5_Condition;
	information	= Info_Mod_Harad_LehrlingQuest5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_LehrlingQuest5_Condition()
{
	if (Npc_HasItems(hero, ItMi_Addon_WhitePearl) >= 3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest4))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_Info()
{
	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest5);

	if (Npc_HasItems(hero, ItMi_Addon_WhitePearl) >= 3)
	{
		Info_AddChoice	(Info_Mod_Harad_LehrlingQuest5, "Hier sind f�nf Perlen.", Info_Mod_Harad_LehrlingQuest5_B);
	};

	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest5, "Ich habe drei Perlen dabei.", Info_Mod_Harad_LehrlingQuest5_A);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_C()
{
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_00"); //Wenn du nun einem Meister bei seiner Arbeit zuschauen willst ... davon kannst du t�chtig lernen.

	AI_UseMob	(self, "BSFIRE", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_01"); //Als Erstes werden die Stahlst�be �bereinandergelegt und erhitzt.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_02"); //Ordentlich pumpen, um die richtige Temperatur zu erreichen, eine Schei�plackerei ist das.

	AI_UseMob	(self, "BSFIRE", -1);

	AI_UseMob	(self, "BSANVIL", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_03"); //Die verschiedenen Stahllegierungen werden gefaltet und in die richtige Form gebracht.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_04"); //Vertiefungen und Verzierungen werden eingearbeitet. Ich pr�ge einen schmucken Schriftzug.

	AI_UseMob	(self, "BSANVIL", -1);

	AI_UseMob	(self, "BSCOOL", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_05"); //Das Ganze sch�n abk�hlen. Aber blo� nicht zu lange im Eimer lassen, damit hat mir Brian einige Schwerter versaut.

	AI_UseMob	(self, "BSCOOL", -1);

	AI_UseMob	(self, "BSSHARP", 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_06"); //Jetzt noch schleifen und das Ding ist perfekt.

	AI_UseMob	(self, "BSSHARP", -1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_C_09_07"); //Fertig. Jetzt m�ssen nur noch die Perlen eingesetzt werden ...

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest5);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_980_MIL_Olav_NW, "HARAD");
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest5_B_15_00"); //Hier sind f�nf Perlen.

	B_GiveInvItems	(hero, self, ItMi_Addon_WhitePearl, 5);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_B_09_01"); //Die kann ich alle gebrauchen.

	B_GivePlayerXP	(150);

	Info_Mod_Harad_LehrlingQuest5_C();
};

FUNC VOID Info_Mod_Harad_LehrlingQuest5_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest5_A_15_00"); //Ich habe drei Perlen dabei.

	B_GiveInvItems	(hero, self, ItMi_Addon_WhitePearl, 3);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest5_A_09_01"); //Na, wenigstens etwas.

	B_GivePlayerXP	(100);

	Info_Mod_Harad_LehrlingQuest5_C();
};

INSTANCE Info_Mod_Harad_LehrlingQuest6 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest6_Condition;
	information	= Info_Mod_Harad_LehrlingQuest6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_LehrlingQuest6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest6_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest6_09_00"); //(den Tr�nen nahe) Das ist ja so schrecklich ungerecht!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest6_15_01"); //Komm schon, das wird schon wieder.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest6_09_02"); //Aber ich muss doch jetzt wieder ganz von vorn anfangen! Ganz von vorn!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest6_15_03"); //Du hast mir doch gezeigt, wie's geht. Gib mir die Perlen, und ich schmiede dir dein Schwert.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest6_09_04"); //Perlen vor die Molerats werfen! Ich geh jetzt ins Haus. Ich ... ich hab Kopfschmerzen!

	B_GiveInvItems	(self, hero, ItMi_Addon_WhitePearl, Npc_HasItems(self, ItMi_Addon_WhitePearl));

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_THREE, "Harads Waffe f�r Lares wurde konfisziert, und das hat dem Meister den Rest gegeben. Ich werde mich selbst an einem Exemplar versuchen m�ssen. Nicht vergessen: Alle Schritte in der richtigen Reihenfolge durchlaufen. Und die Perlen am Ende einsetzen.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INHAUS");
};

INSTANCE Info_Mod_Harad_LehrlingQuest7 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest7_Condition;
	information	= Info_Mod_Harad_LehrlingQuest7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier ist ein neues Prunkschwert.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest6))
	&& (Npc_HasItems(hero, ItMw_Prunkschwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest7_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest7_15_00"); //Hier ist ein neues Prunkschwert.

	B_GiveInvItems	(hero, self, ItMw_Prunkschwert, 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_01"); //(beleidigt) Ach, bleib mir damit doch weg.

	B_GiveInvItems	(self, hero, ItMw_Prunkschwert, 1);

	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest7_15_02"); //Nein, das nimmst du jetzt. Und sagst was dazu.

	B_GiveInvItems	(hero, self, ItMw_Prunkschwert, 1);

	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_03"); //(seufzt) Ja, ja, ganz gute Arbeit.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest7_15_04"); //Soll ich es zu Lares bringen?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_05"); //Nein, das w�re mittlerweile zu auff�llig. Es muss dich nur jemand in der N�he der S�ldner sehen und bei den Wachen verpetzen und - schwupps! - bin ich dran.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_06"); //Deshalb werde ich das Schwert lieber einem H�ndler mitgeben.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest7_09_07"); //Und nun lass mich in Frieden. Ich m�chte gerade mit niemandem sprechen.

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_THREE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Harad_LehrlingQuest8 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest8_Condition;
	information	= Info_Mod_Harad_LehrlingQuest8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_LehrlingQuest8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest8_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_09_00"); //(niedergeschlagen) Du bist's.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_15_01"); //Ja.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_09_02"); //Du kannst mich auch nicht aufmuntern.

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest8);

	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest8, "Das will ich auch gar nicht. Du hast es einfach verdient, dort drin zu verschimmeln.", Info_Mod_Harad_LehrlingQuest8_B);
	Info_AddChoice	(Info_Mod_Harad_LehrlingQuest8, "Aber vielleicht rausholen.", Info_Mod_Harad_LehrlingQuest8_A);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest8_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_B_15_00"); //Das will ich auch gar nicht. Du hast es einfach verdient, dort drin zu verschimmeln.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_B_09_01"); //Jetzt f�llt mir auch noch der letzte Mensch in den R�cken.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_HARAD_FOUR, LOG_FAILED);

	Mod_HaradLehrling_Kap4 = 2;

	Mod_HaradLehrling_SterbTag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest8);
};

FUNC VOID Info_Mod_Harad_LehrlingQuest8_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_A_15_00"); //Aber vielleicht rausholen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_A_09_01"); //Aber wie?
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_A_15_02"); //Hast du denn keine Idee?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_A_09_03"); //Nein. Boltan l�sst sich jedenfalls nicht bestechen.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest8_A_15_04"); //Dann muss ich mir was einfallen lassen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest8_A_09_05"); //(murmelt) Das wird doch eh nichts.

	Info_ClearChoices	(Info_Mod_Harad_LehrlingQuest8);

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Harad hat keine Idee, wie ich ihn befreien kann.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest9 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest9_Condition;
	information	= Info_Mod_Harad_LehrlingQuest9_Info;
	permanent	= 0;
	important	= 0;
	description	= "Es gibt eine M�glichkeit, wie du wieder freikommen kannst.";
};

FUNC INT Info_Mod_Harad_LehrlingQuest9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest9_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_00"); //Es gibt eine M�glichkeit, wie du wieder freikommen kannst.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_01"); //Es gibt einige M�glichkeiten, die Frage ist nur, ob ich sie in Betracht ziehe.
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_02"); //Die Paladine fordern, dass du f�r sie statt f�r die S�ldner schmiedest.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_03"); //(spuckt aus) Diese Fratzen haben mir meine Ehre genommen. F�r die kr�mme ich keinen Finger!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_04"); //Ich k�nnte f�r die Paladine arbeiten. Und du machst deinen eigenen Kram.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_05"); //Aber dich lasse ich nicht an meine Schmiede!
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest9_15_06"); //In Ordnung, jetzt reicht's mir. Ich werde mich nach eigenen Auftr�gen umschauen.
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest9_09_07"); //(giftig) Ja, vergiss nur, von wem du all deine Kenntnisse hast! Lass mich nur im Stich!

	B_StartOtherRoutine	(Mod_980_MIL_Olav_NW, "START");

	B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Da ich von Harad �berhaupt keine Mithilfe erwarten kann, habe ich entschieden, ihn dort zu lassen, wo er ist. Ich sollte den Paladinen oder den S�ldnern selbst meine Hilfe anbieten.");
};

INSTANCE Info_Mod_Harad_LehrlingQuest10 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_LehrlingQuest10_Condition;
	information	= Info_Mod_Harad_LehrlingQuest10_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gef�llt's dir noch?";
};

FUNC INT Info_Mod_Harad_LehrlingQuest10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_LehrlingQuest10_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_LehrlingQuest10_15_00"); //Gef�llt's dir noch?
	AI_Output(self, hero, "Info_Mod_Harad_LehrlingQuest10_09_01"); //(drohend) Lass mich blo� in Ruhe.
};

INSTANCE Info_Mod_Harad_Blutkelch (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Blutkelch_Condition;
	information	= Info_Mod_Harad_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich brauche eine besonders harte Spitzhacke. Hast du sowas?";
};

FUNC INT Info_Mod_Harad_Blutkelch_Condition()
{
	if (Mod_ASS_Blutkelch3 == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Blutkelch_15_00"); //Ich brauche eine besonders harte Spitzhacke. Hast du sowas?
	AI_Output(self, hero, "Info_Mod_Harad_Blutkelch_12_01"); //Nein. Ich schmiede nur richtige Waffen.
	AI_Output(hero, self, "Info_Mod_Harad_Blutkelch_15_02"); //Und wer k�nnte mir da helfen?
	AI_Output(self, hero, "Info_Mod_Harad_Blutkelch_12_03"); //Woher soll ich das wissen? Selbst ist der Mann.
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis_Condition()
{
	if (Mod_AndreSchwert == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis_12_00"); //Bist du nicht derjenige, der die Nachfolge von Andre antreten soll?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis_15_01"); //Ja, das stimmt.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis_12_02"); //Andre war ein Taugenichts, der mir st�ndig in die Arbeit gepfuscht hat.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis_12_03"); //Ich hoffe, du wirst nicht so wie er.
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis2 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis2_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Andre hat mir dieses Schwert hinterlassen und meinte, du k�nntest es f�r mich umschmieden.";
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis))
	&& (Npc_HasItems(hero, ItMi_Schmelzschwert) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_15_00"); //Andre hat mir dieses Schwert hinterlassen und meinte, du k�nntest es f�r mich umschmieden.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_01"); //Zeig her.

	EquipWeapon	(self, Weltenspalter);

	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);

	AI_UnequipWeapons	(self);

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_02"); //Das Schwert kenne ich doch! Damit hat er den D�monen durchbohrt.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_15_03"); //Wovon sprichst du?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_04"); //Vor vielen Jahren, als ich den l�stigen Heeresdienst ableistete, k�mpfte ich mit Andre auf dem Schlachtfeld im Krieg gegen die Orks.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_05"); //Wir hatten gerade das feindliche Heer aufgerieben und der Sieg in der Schlacht schien schon sicher, als einige orkische Schamanen einen m�chtigen Feuerd�monen beschworen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_06"); //Er begann in unseren Reihen zu w�ten und versengte viele Paladine und Krieger erbarmungslos mit seinen Flammen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_07"); //Da st�rmte Andre vor und stie� sein Schwert bis zum Anschlag in die Brust des Monsters, das augenblicklich tot war.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_08"); //Doch das Feuer in dessen Brust war so hei�, dass der Stahl schmolz.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_15_09"); //Was? Das muss ja wie im Schmiedefeuer gewesen sein.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_10"); //Nein ... ungleich hei�er.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_11"); //Es war ein Schwert h�chster G�te, in den Minen Nordmars geschmiedet, im Kloster gesegnet und mit dem Siegel des Feuers versehen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_12"); //Eine Klinge, wie nur wenige Paladine sie schon damals f�hrten ... und noch weniger sie heute besitzen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_12_13"); //Andre hatte sie von seinem Vater geerbt.

	Info_ClearChoices	(Info_Mod_Harad_AndreVermaechtnis2);

	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Wieso wurde die Klinge nicht schon f�r Andre neu geschmiedet?", Info_Mod_Harad_AndreVermaechtnis2_B);
	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Wieso sind solche Klingen denn mittlerweile so selten?", Info_Mod_Harad_AndreVermaechtnis2_A);
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_C()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_C_15_00"); //Wirst du das Schwert f�r mich neu schmieden?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_12_01"); //Gro�e Lust habe ich nicht, schlie�lich schulde ich Andre nichts. Aber du wirst dich hoffentlich erkenntlich zeigen, wenn ich es doch tue. F�r dich.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_12_02"); //Du solltest aber wissen, dass ein solches Schwert seine volle Macht erst in den H�nden eines Paladins und wahren Gl�ubigen entfaltet.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_12_03"); //Ein Ungl�ubiger dagegen wird den Zorn Innos zu sp�ren bekommen, falls er versucht die Waffe anzulegen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_C_12_04"); //Wie dem auch sei, soll ich das Schwert als Einhand- oder Zweihandwaffe schmieden?

	Info_ClearChoices	(Info_Mod_Harad_AndreVermaechtnis2);

	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Zweihand.", Info_Mod_Harad_AndreVermaechtnis2_E);
	Info_AddChoice	(Info_Mod_Harad_AndreVermaechtnis2, "Einhand.", Info_Mod_Harad_AndreVermaechtnis2_D);
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_B()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_B_15_00"); //Wieso wurde die Klinge nicht schon f�r Andre neu geschmiedet?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_B_12_01"); //Die Hitze, die das Schwert schmolz, versengte auch seine Hand.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_B_12_02"); //Er konnte niemals mehr wieder eine Waffe f�hren, wie er es damals tat. Stattdessen wurde er zum Hauptmann erhoben. W�re seine Hand blo� unversehrt geblieben...
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_B_12_03"); //Das geschmolzene Schwert behielt er als Andenken.

	Mod_AndreSchwert_Counter += 1;

	if (Mod_AndreSchwert_Counter == 2)
	{
		Info_Mod_Harad_AndreVermaechtnis2_C();
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_A()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_A_15_00"); //Wieso sind solche Klingen denn mittlerweile so selten?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_A_12_01"); //Na, schau dich doch mal um, was auf dem Festland vor sich geht. Die Schmiedekunst wird von Unf�higen verkr�ppelt.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_A_12_02"); //Die Orks fallen von allen Seiten ein, das K�nigreich droht auseinander zu fallen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_A_12_03"); //Heute muss man schauen, dass man noch genug Erz und Eisen findet, um jeden K�mpfer mit einer einfachen Waffe auszustatten.

	Mod_AndreSchwert_Counter += 1;

	if (Mod_AndreSchwert_Counter == 2)
	{
		Info_Mod_Harad_AndreVermaechtnis2_C();
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_F()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_F_12_00"); //So werde ich es tun. Daf�r werde ich jedoch einige Tage ben�tigen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis2_F_12_01"); //Wenn ich fertig bin, werde ich es dir mitteilen.

	Info_ClearChoices	(Info_Mod_Harad_AndreVermaechtnis2);

	Mod_AndreSchwert_Tag = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Harad wird das Schwert schmieden. Er wird jedoch einige Tage daf�r brauchen.");
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_E()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_E_15_00"); //Zweihand.

	Mod_AndreSchwert_Art = 2;

	Info_Mod_Harad_AndreVermaechtnis2_F();
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis2_D()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis2_D_15_00"); //Einhand.

	Mod_AndreSchwert_Art = 1;

	Info_Mod_Harad_AndreVermaechtnis2_F();
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis3 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis3_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis2))
	&& (Mod_AndreSchwert_Tag-2 > Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis3_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_12_00"); //Es ist geschafft. Das Schwert ist neu geschmiedet.

	if (Mod_AndreSchwert_Art == 1)
	{
		B_GiveInvItems	(self, hero, ItMw_1H_Blessed_01, 1);
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMw_2H_Blessed_01, 1);
	};

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_12_01"); //Du darfst dich bei Innos stolz und gl�cklich sch�tzen, eine solche Waffe zu f�hren.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis3_15_02"); //Ja, von der Waffe scheint eine ganz besondere Kraft auszugehen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_12_03"); //Das will ich meinen. Au�erdem ist sie von mir bearbeitet. Seine wahre Macht wird sie jedoch erst wieder erlangen, wenn sie nach so langer Zeit erneut die Weihe erh�lt.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis3_15_04"); //Weihe?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_12_05"); //Ein jedes Paladinschwert wurde geweiht, ehe es in die H�nde eines Innos-Anh�ngers gegeben wurde.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_12_06"); //So hat es im Besonderen die Macht, untote und d�monische Gesch�pfe zu bannen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_12_07"); //F�r die Weihe musst du dich ins Kloster begeben und mit einem Magier Innos' sprechen ... ich glaube, es war Marduk.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis3_12_08"); //Dann wird die Macht des Schwertes wachsen.

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_SUCCESS);
	Log_CreateTopic	(TOPIC_MOD_MILIZ_INNOSKLINGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_INNOSKLINGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Harad meinte, dass ich das Schwert im Kloster bei Marduk weihen lassen sollte.");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis4 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis4_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis4_Condition()
{
	if (Npc_KnowsInfo(hero, PC_PrayShrine_BlessSword))
	&& (Mod_Gilde == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis4_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_12_00"); //Du hast die Weihe vollzogen?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis4_15_01"); //Ja, und die Macht des Schwertes ist gewachsen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_12_02"); //(gelangweilt) Das ist ja ... fantastisch. Jetzt ist die Klinge vollkommen. (nachdenklich) Hmm, wobei ...
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis4_15_03"); //Ja?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_12_04"); //Ich erinnere mich an �berlieferungen, dass es neben der einfache Schwertweihe, f�r solche Klingen auch noch eine Art Pilgerweg gegeben haben soll, um die Klinge zu vervollkommnen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_12_05"); //Aber vielleicht waren das auch nur Ger�chte. Ist ja alles lange her.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis4_15_06"); //Was meinst du?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_12_07"); //Ich wei� es wirklich nicht mehr genau.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis4_12_08"); //Wenn ich es ein wenig mehr mit dem Lesen h�tte, w�rde ich wohl in der Klosterbibliothek nachschauen ... aber mein Handwerk ist nun mal der Stahl.

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Harad erw�hnte etwas von einem Pilgerweg, der die Klinge noch m�chtiger machen k�nnte. Er wusste aber nichts Genaueres. Vielleicht kann mir aber die Klosterbibliothek weiterhelfen.");

	Wld_InsertItem	(ItWr_Innosklinge, "FP_ITEM_INNOSKLINGENBUCH");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis5 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis5_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe da einen m�glichen Hinweis.";
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis5_Condition()
{
	if (Mod_AndreSchwert_Test == 2)
	&& (Npc_HasItems(hero, ItWr_Innosklinge) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis5_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_00"); //Ich habe da einen m�glichen Hinweis.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_01"); //Lass sehen.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_02"); //Aha ... so, so ... interessant. Hmm ... der Ruf des Kriegers.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_03"); //Ja?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_04"); //Lass mich nachdenken ... Ja, das k�nnte es sein ...
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_05"); //Ich bin ganz Ohr.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_06"); //Der Ruf des Kriegers ... damit k�nnte Dominiques Ruf gemeint sein.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_07"); //Es soll ein Liedtext gewesen sein, den die Paladine einst anstimmten, bevor sie in den Kampf zogen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_08"); //Das liegt aber lange zur�ck.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_09"); //Ich glaube mich an einen Mythos zu erinnern, der in dem Zusammenhang tats�chlich von dem heiligen Feuer sprach, welches den Krieger und seine Klinge durchzog.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_10"); //Vielleicht also mehr als eine blo�e Metapher?
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_11"); //Das w�re schier ... unglaublich. Und du k�nntest derjenige sein, der es wom�glich herausfindet.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_12"); //Dazu m�sste ich jedoch diesen Text haben.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_13"); //Warte mal ... ich glaube, Ingmar k�nnte dir da weiterhelfen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_14"); //Wie kein anderer Paladin begeistert er sich f�r Gedichte und Lieder �ber Krieg und Glauben.
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis5_15_15"); //Dann werde ich es bei ihm versuchen.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis5_12_16"); //Ja, mach das. Und gib mir Bescheid, wenn du es bekommen hast.

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Wie ich von Harad erfuhr, ist wom�glich der Liedtext 'Dominiques Ruf' gemeint. Paladin Ingmar k�nnte vielleicht noch �ber diesen verf�gen.");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis6 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis6_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ingmar_Innosklinge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis6_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_12_00"); //Hast du den Text bekommen?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis6_15_01"); //Ja, er hatte ihn tats�chlich.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_12_02"); //Dann kannst du dich also nun auf den Pilgerweg machen ... wenn du alles hast, was du brauchst.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_12_03"); //Der Text nannte ja die Dinge, die du ben�tigst, w�hrend du von Schrein zu Schrein ziehst und jedes Mal einen Teil des Liedtextes sprichst.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_12_04"); //Und sobald du damit fertig bist, wird das Schwert hoffentlich neue Eigenschaften haben.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis6_12_05"); //Viel Erfolg dabei. Und erinnere dich daran, wer dir die ganzen wertvollen Hinweise gegeben hat!

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Nun kann ich mich auf den Pilgerweg begeben.");
};

INSTANCE Info_Mod_Harad_AndreVermaechtnis7 (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_AndreVermaechtnis7_Condition;
	information	= Info_Mod_Harad_AndreVermaechtnis7_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Harad_AndreVermaechtnis7_Condition()
{
	if (Npc_KnowsInfo(hero, PC_PrayShrine_BlessSword_05))
	&& ((Npc_HasItems(hero, ItMw_1H_Blessed_03) == 1)
	|| (Npc_HasItems(hero, ItMw_2H_Blessed_03) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_AndreVermaechtnis7_Info()
{
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_12_00"); //Und, hast du die Weihe vollzogen?
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis7_15_01"); //Ja, es hat tats�chlich geklappt.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_12_02"); //Lass sehen ...

	EquipWeapon	(self, ItMw_2H_Blessed_03);

	AI_ReadyMeleeWeapon	(self);
	AI_PlayAni	(self, "T_1HSINSPECT");
	AI_RemoveWeapon	(self);

	AI_UnequipWeapons	(self);	

	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_12_03"); //Stimmt, das ist jetzt wirklich ein einmaliges Schwert. (schw�rmerisch) Meine und Innos' Kr�fte vereint in einer Klinge ...
	AI_Output(hero, self, "Info_Mod_Harad_AndreVermaechtnis7_15_04"); //Schon gut. Danke auf jeden Fall f�r deine Hilfe.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_12_05"); //(g�nnerhaft) Man hilft doch, wo man kann.
	AI_Output(self, hero, "Info_Mod_Harad_AndreVermaechtnis7_12_06"); //Pass gut auf mein Schwert auf und schenk es keinem der geldgierigen Paladine!

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_INNOSKLINGE, LOG_SUCCESS);

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Harad_Anschlagtafel (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Anschlagtafel_Condition;
	information	= Info_Mod_Harad_Anschlagtafel_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich habe deinen Aushang an der Anschlagtafel gesehen ...";
};

FUNC INT Info_Mod_Harad_Anschlagtafel_Condition()
{
	if (Mod_Anschlagtafel_Khorinis_Harad == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Anschlagtafel_Info()
{
	B_Say	(hero, self, "$ANSCHLAGTAFEL01");

	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword) >= Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert)
	&& (Npc_HasItems(hero, ItMw_2H_Sword_M_01) >= Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender)
	&& (Npc_HasItems(hero, ItMi_GoldNugget_Addon) >= Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken)
	&& (Npc_HasItems(hero, ItMw_1H_Mace_L_04) >= Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer)
	&& (Npc_HasItems(hero, ItMi_Pliers) >= Mod_Anschlagtafel_Khorinis_Harad_Zange)
	&& (Npc_HasItems(hero, ItMw_1H_Mace_L_01) >= Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken)
	&& (Npc_HasItems(hero, ItMiSwordraw) >= Mod_Anschlagtafel_Khorinis_Harad_Rohstahl)
	{
		Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert);
		Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender);
		Npc_RemoveInvItems	(hero, ItMi_GoldNugget_Addon, Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken);
		Npc_RemoveInvItems	(hero, ItMi_Nugget, Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken);
		Npc_RemoveInvItems	(hero, ItMw_1H_Mace_L_04, Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer);
		Npc_RemoveInvItems	(hero, ItMi_Pliers, Mod_Anschlagtafel_Khorinis_Harad_Zange);
		Npc_RemoveInvItems	(hero, ItMw_1H_Mace_L_01, Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken);
		Npc_RemoveInvItems	(hero, ItMiSwordraw, Mod_Anschlagtafel_Khorinis_Harad_Rohstahl);

		AI_Output(self, hero, "Info_Mod_Harad_Anschlagtafel_12_00"); //Was? Zeig her ... Tats�chlich, alles dabei. Nicht in bestem Zustand, aber gerade noch zu gebrauchen.
		AI_Output(self, hero, "Info_Mod_Harad_Anschlagtafel_12_01"); //Hier ist deine Entlohnung.

		B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Anschlagtafel_Khorinis_Harad_Gold);

		AI_Output(self, hero, "Info_Mod_Harad_Anschlagtafel_12_02"); //N�chstes Mal bitte bessere Qualit�t, ja?

		if (Mod_Anschlagtafel_Khorinis_Harad_Gold < 200)
		{
			B_GivePlayerXP	(300);
		}
		else if (Mod_Anschlagtafel_Khorinis_Harad_Gold < 400)
		{
			B_GivePlayerXP	(400);
		}
		else if (Mod_Anschlagtafel_Khorinis_Harad_Gold < 600)
		{
			B_GivePlayerXP	(500);
		}
		else
		{
			B_GivePlayerXP	(600);
		};

		Mod_Anschlagtafel_Khorinis_Harad = 0;
		Mod_Anschlagtafel_Khorinis_Harad_Cooldown = 3600;

		Npc_RemoveInvItems	(hero, ItWr_Anschlagtafel_Harad, 1);
	}
	else
	{
		B_Say	(hero, self, "$ANSCHLAGTAFEL02");
	};
};

INSTANCE Info_Mod_Harad_Staerke (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Staerke_Condition;
	information	= Info_Mod_Harad_Staerke_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich will st�rker werden.";
};

FUNC INT Info_Mod_Harad_Staerke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	&& (hero.attribute[ATR_STRENGTH]	<	120)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Staerke_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Staerke_15_00"); //Ich will st�rker werden.

	Info_ClearChoices	(Info_Mod_Harad_Staerke);

	Info_AddChoice 		(Info_Mod_Harad_Staerke, DIALOG_BACK, Info_Mod_Harad_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_5);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_1);
};

FUNC VOID Info_Mod_Harad_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Harad_Staerke);
};

func void Info_Mod_Harad_Staerke_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1, 120);

	Info_ClearChoices	(Info_Mod_Harad_Staerke);
	Info_AddChoice		(Info_Mod_Harad_Staerke, DIALOG_BACK, Info_Mod_Harad_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_5);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_1);
};

// ------ 5 St�rke ------
func void Info_Mod_Harad_Staerke_5()
{
	B_TeachAttributePoints_New (self, other, ATR_STRENGTH, 5, 120);
	
	Info_ClearChoices	(Info_Mod_Harad_Staerke);
	Info_AddChoice		(Info_Mod_Harad_Staerke, DIALOG_BACK, Info_Mod_Harad_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_5);
	Info_AddChoice		(Info_Mod_Harad_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Harad_Staerke_1);
};

INSTANCE Info_Mod_Harad_Schmieden (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Schmieden_Condition;
	information	= Info_Mod_Harad_Schmieden_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir das Schmieden bei.";
};

FUNC INT Info_Mod_Harad_Schmieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	&& ((PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	|| (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Schmieden_15_00"); //Bring mir das Schmieden bei.

	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Schmieden lernen "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_BACK()
{
	Info_ClearChoices	(Info_Mod_Harad_Schmieden);
};

FUNC VOID Info_Mod_Harad_Schmieden_Common()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_Common)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Common_12_01"); //Es ist ganz einfach, Junge. Besorge dir ein St�ck Rohstahl, halte es ins Feuer, bis es gl�ht.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Common_12_02"); //Dann schl�gst du am Amboss die Klinge zurecht.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Common_12_03"); //Deine ersten Schwerter werden keine Meisterwerke sein, aber alles weitere kannst du ja noch sp�ter lernen.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Schmieden lernen "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad01()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_01)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad01_12_01"); //Es ist ganz einfach, Junge. Besorge dir ein St�ck Rohstahl, halte es ins Feuer, bis es gl�ht.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad01_12_02"); //Dann schl�gst du am Amboss die Klinge zurecht.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Schmieden lernen "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad02()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_02)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad02_12_01"); //Es ist ganz einfach, Junge. Besorge dir ein St�ck Rohstahl, halte es ins Feuer, bis es gl�ht.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad02_12_02"); //Dann schl�gst du am Amboss die Klinge zurecht.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Schmieden lernen "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad03()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_03)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad03_12_01"); //Es ist ganz einfach, Junge. Besorge dir ein St�ck Rohstahl, halte es ins Feuer, bis es gl�ht.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad03_12_02"); //Dann schl�gst du am Amboss die Klinge zurecht.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Schmieden lernen "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

FUNC VOID Info_Mod_Harad_Schmieden_Harad04()
{
	if B_TeachPlayerTalentSmith (self, other, WEAPON_1H_Harad_04)
	{
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad04_12_01"); //Es ist ganz einfach, Junge. Besorge dir ein St�ck Rohstahl, halte es ins Feuer, bis es gl�ht.
		AI_Output (self, other, "Info_Mod_Harad_Schmieden_Harad04_12_02"); //Dann schl�gst du am Amboss die Klinge zurecht.
	};
	
	Info_ClearChoices (Info_Mod_Harad_Schmieden);
	Info_AddChoice	(Info_Mod_Harad_Schmieden, DIALOG_BACK, Info_Mod_Harad_Schmieden_BACK);
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_04] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_04, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_04))		,Info_Mod_Harad_Schmieden_Harad04);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_03] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_03, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_03))		,Info_Mod_Harad_Schmieden_Harad03);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_02] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_02, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_02))		,Info_Mod_Harad_Schmieden_Harad02);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_1H_Harad_01] == FALSE)
	&& (PLAYER_TALENT_SMITH[WEAPON_Common] == TRUE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString(NAME_Addon_Harad_01, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_1H_Harad_01))		,Info_Mod_Harad_Schmieden_Harad01);
	};
	if (PLAYER_TALENT_SMITH[WEAPON_Common] == FALSE)
	{
		Info_AddChoice		(Info_Mod_Harad_Schmieden, B_BuildLearnString("Schmieden lernen "	   , B_GetLearnCostTalent(other, NPC_TALENT_SMITH, WEAPON_Common))			,Info_Mod_Harad_Schmieden_Common);
	};
};

INSTANCE Info_Mod_Harad_Verkaufen (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Verkaufen_Condition;
	information	= Info_Mod_Harad_Verkaufen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich will meine geschmiedeten Waffen verkaufen.";
};

FUNC INT Info_Mod_Harad_Verkaufen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Job))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Verkaufen_Info()
{
	AI_Output (other, self, "Info_Mod_Harad_Verkaufen_15_00"); //Ich will meine geschmiedeten Waffen verkaufen.
	
	var C_ITEM equipWeap; equipWeap = Npc_GetEquippedMeleeWeapon(other);
	
	var int anzahl_common; anzahl_common = Npc_HasItems (other, ItMw_1H_Common_01);
	if (Hlp_IsItem(equipWeap, ItMw_1H_Common_01) == TRUE) { anzahl_common = anzahl_common - 1; };
	var int anzahl_schwert1; anzahl_schwert1 = Npc_HasItems (other, ItMw_Schwert1);
	if (Hlp_IsItem(equipWeap, ItMw_Schwert1) == TRUE) { anzahl_schwert1 = anzahl_schwert1 - 1; };
	var int anzahl_schwert4; anzahl_schwert4 = Npc_HasItems (other, ItMw_Schwert4);
	if (Hlp_IsItem(equipWeap, ItMw_Schwert4) == TRUE) { anzahl_schwert4 = anzahl_schwert4 - 1; };
	var int anzahl_rubinklinge; anzahl_rubinklinge = Npc_HasItems (other, ItMw_Rubinklinge);
	if (Hlp_IsItem(equipWeap, ItMw_Rubinklinge) == TRUE) { anzahl_rubinklinge = anzahl_rubinklinge - 1; };
	var int anzahl_elbastardo; anzahl_elbastardo = Npc_HasItems (other, ItMw_ElBastardo);
	if (Hlp_IsItem(equipWeap, ItMw_ElBastardo) == TRUE) { anzahl_elbastardo = anzahl_elbastardo - 1; };
	
	var int gesamt; gesamt = (anzahl_common + anzahl_schwert1 + anzahl_schwert4 + anzahl_rubinklinge + anzahl_elbastardo);
	
    if (gesamt == 0)
	{
		if (Hlp_IsItem(equipWeap, ItMw_1H_Common_01) == TRUE)
		|| (Hlp_IsItem(equipWeap, ItMw_Schwert1) == TRUE) 
		|| (Hlp_IsItem(equipWeap, ItMw_Schwert4) == TRUE)
		|| (Hlp_IsItem(equipWeap, ItMw_Rubinklinge) == TRUE)
		|| (Hlp_IsItem(equipWeap, ItMw_ElBastardo) == TRUE)  
		{
			AI_Output (self, other, "Info_Mod_Harad_Verkaufen_12_01"); //Du hast nur die, die du am G�rtel tr�gst. Du solltest sie besser behalten.
		}
		else
		{
			AI_Output (self, other, "Info_Mod_Harad_Verkaufen_12_04"); //Dann stell welche her! Ich nehme nur einfache Schwerter an.
		};
	}
	else //(gesamt >= 1) - die verbeliebenden Klingen verkaufen ------
	{
		AI_Output (self, other, "Info_Mod_Harad_Verkaufen"); //Gut - gib her.
		
		Npc_RemoveInvItems (other, ItMw_1H_Common_01, anzahl_common);
		Npc_RemoveInvItems (other, ItMw_Schwert1, anzahl_Schwert1);
		Npc_RemoveInvItems (other, ItMw_Schwert4, anzahl_Schwert4);
		Npc_RemoveInvItems (other, ItMw_Rubinklinge, anzahl_Rubinklinge);
		Npc_RemoveInvItems (other, ItMw_ElBastardo, anzahl_ElBastardo);
		
		var string concatText;
		concatText = ConcatStrings(IntToString(gesamt), PRINT_ItemsGegeben);		// "x Gegenst�nde gegeben"
		AI_PrintScreen (concatText, -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
				
		AI_Output (self, other, "Info_Mod_Harad_Verkaufen_12_03"); //So, und hier hast du deinen Lohn.
		var int lohn;
		lohn = (anzahl_common * Value_Common1) + (anzahl_schwert1 * Value_Schwert1) + (anzahl_schwert4 * Value_Schwert4) + (anzahl_rubinklinge * Value_Rubinklinge) + (anzahl_elbastardo * Value_ElBastardo);
				
		lohn = (lohn / 3);
		
		B_GiveInvItems (self, hero, ItMi_Gold, lohn);
	};
};

INSTANCE Info_Mod_Harad_Pfeilspitzen (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Pfeilspitzen_Condition;
	information	= Info_Mod_Harad_Pfeilspitzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bosper meint du k�nntest mir beibringen Pfeilspitzen zu schmieden.";
};

FUNC INT Info_Mod_Harad_Pfeilspitzen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Spitzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Pfeilspitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Pfeilspitzen_15_00"); //Bosper meint, du k�nntest mir beibringen, Pfeilspitzen zu schmieden.
	AI_Output(self, hero, "Info_Mod_Harad_Pfeilspitzen_12_01"); //Ja, wenn's denn unbedingt sein muss.
};

INSTANCE Info_Mod_Harad_Spitzen (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Spitzen_Condition;
	information	= Info_Mod_Harad_Spitzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bring mir bei Pfeilspitzen zu schmieden (2 LP)";
};

FUNC INT Info_Mod_Harad_Spitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Harad_Spitzen.description = "Bring mir bei Pfeilspitzen zu schmieden (200 Gold)";
	}
	else
	{
		Info_Mod_Harad_Spitzen.description = "Bring mir bei Pfeilspitzen zu schmieden (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Harad_Pfeilspitzen))
	&& (Mod_PfeileSpitzen == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Harad_Spitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Harad_Spitzen_15_00"); //Bring mir bei Pfeilspitzen zu schmieden.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 2))
	{
		AI_Output(self, hero, "Info_Mod_Harad_Spitzen_06_01"); //Nimm ein St�ck Rohstahl und geh an einen Amboss. Aus einem St�ck Rohstahl bekommst du ungef�hr 10 Pfeilspitzen.

		Mod_PfeileSpitzen = TRUE;

		Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_PFEILE, "Um Pfeile herzustellen, ben�tige ich Pfeilspitzen. Diese kann ich an einem Amboss aus Rohstahl gewinnen.");

		if (Mod_Schwierigkeit == 4)
		{
			Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
		}
		else
		{
			hero.lp -= 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Harad_Spitzen_06_02"); //Komm wieder, wenn du bereit bist.
	};
};

INSTANCE Info_Mod_Harad_Pickpocket (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_Pickpocket_Condition;
	information	= Info_Mod_Harad_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Harad_Pickpocket_Condition()
{
	C_Beklauen	(85, ItMiSwordRaw, 18);
};

FUNC VOID Info_Mod_Harad_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

	Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_BACK, Info_Mod_Harad_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Harad_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Harad_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Harad_Pickpocket);
};

FUNC VOID Info_Mod_Harad_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

		Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Harad_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Harad_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Harad_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Harad_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Harad_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Harad_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Harad_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Harad_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Harad_EXIT (C_INFO)
{
	npc		= Mod_535_NONE_Harad_NW;
	nr		= 1;
	condition	= Info_Mod_Harad_EXIT_Condition;
	information	= Info_Mod_Harad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Harad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Harad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};