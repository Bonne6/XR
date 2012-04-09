INSTANCE Info_Mod_Vino_Hi (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Hi_Condition;
	information	= Info_Mod_Vino_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was machst du hier?";
};

FUNC INT Info_Mod_Vino_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vino_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Vino_Hi_05_01"); //Ordentlich arbeiten, Penner. W�hrend ihr es euch in eurer Kuppel gem�tlich gemacht habt.
	AI_Output(hero, self, "Info_Mod_Vino_Hi_15_02"); //Da hast du ein paar falsche Vorstellungen, f�rchte ich.
	AI_Output(self, hero, "Info_Mod_Vino_Hi_05_03"); //Ich hab gesehen, was euch alles reingeschickt wurde. Davon h�tte ein F�rst leben k�nnen!

	Info_ClearChoices	(Info_Mod_Vino_Hi);

	Info_AddChoice	(Info_Mod_Vino_Hi, "Das war ein herrliches Leben!", Info_Mod_Vino_Hi_B);
	Info_AddChoice	(Info_Mod_Vino_Hi, "Richtig, einer. Der Rest hat davon nichts gesehen.", Info_Mod_Vino_Hi_A);
};

FUNC VOID Info_Mod_Vino_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_B_15_00"); //(s�ffisant) Das war ein herrliches Leben!
	AI_Output(self, hero, "Info_Mod_Vino_Hi_B_05_01"); //Halt die Schnauze!

	Info_ClearChoices	(Info_Mod_Vino_Hi);

	Info_AddChoice	(Info_Mod_Vino_Hi, "Jeden Abend Bier und Weiber ...", Info_Mod_Vino_Hi_D);
	Info_AddChoice	(Info_Mod_Vino_Hi, "Ist wohl besser, ich gehe langsam.", Info_Mod_Vino_Hi_C);
};

FUNC VOID Info_Mod_Vino_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_A_15_00"); //Richtig, einer. Der Rest hat davon nichts gesehen.
	AI_Output(self, hero, "Info_Mod_Vino_Hi_A_05_01"); //Du gehst mir aufn Sack, Mann. Hau endlich ab!

	Info_ClearChoices	(Info_Mod_Vino_Hi);
};

FUNC VOID Info_Mod_Vino_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_D_15_00"); //Jeden Abend Bier und Weiber ...
	AI_Output(self, hero, "Info_Mod_Vino_Hi_D_05_01"); //Dir werd ich's zeigen!

	Info_ClearChoices	(Info_Mod_Vino_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Vino_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_C_15_00"); //Ist wohl besser, ich gehe langsam.
	AI_Output(self, hero, "Info_Mod_Vino_Hi_C_05_01"); //Ja, verzieh dich blo�!

	Info_ClearChoices	(Info_Mod_Vino_Hi);
};

INSTANCE Info_Mod_Vino_Pruegel (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Pruegel_Condition;
	information	= Info_Mod_Vino_Pruegel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vino_Pruegel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Hi))
	&& (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
	{
		return 1;
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Vino_Hi))
	&& (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	{
		Mod_VinoWillRache = 1;
	};
};

FUNC VOID Info_Mod_Vino_Pruegel_Info()
{
	AI_Output(self, hero, "Info_Mod_Vino_Pruegel_05_00"); //F�r solche Momente schufte ich den ganzen Tag.
							
	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;
};

INSTANCE Info_Mod_Vino_KingImRing (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_KingImRing_Condition;
	information	= Info_Mod_Vino_KingImRing_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vino_KingImRing_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Hi))
	&& (Kapitel > 2)
	&& (Mod_VinoWillRache == 1)
	&& (((!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei)))
	|| (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei3)))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_KingImRing_Info()
{
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_00"); //Hey, du da!
	AI_Output(hero, self, "Info_Mod_Vino_KingImRing_15_01"); //Redest du mit mir?
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_02"); //Du hast mich mal ziemlich beleidigt.
	AI_Output(hero, self, "Info_Mod_Vino_KingImRing_15_03"); //Du willst sagen: fertig gemacht?
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_04"); //Ich habe lange auf diesen Moment gewartet.
	AI_Output(hero, self, "Info_Mod_Vino_KingImRing_15_05"); //Bleib doch vern�nftig.
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_06"); //Jetzt geht's dir an den Kragen!

	AI_StopProcessInfos	(self);

	B_SetAttributesToChapter	(self, 3);

	self.level = 10;

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Vino_Brennerei (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei_Condition;
	information	= Info_Mod_Vino_Brennerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier steckst du also. Was ist los?";
};

FUNC INT Info_Mod_Vino_Brennerei_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei_Info()
{
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei_15_00"); //Hier steckst du also. Was ist los?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_01"); //Was los ist? Mich h�tte es beinahe erwischt.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_02"); //Nur Nandor verdanke ich es, dass ich noch lebe. Er hat mich aus der H�hle gezogen, als mir die Sinne schwanden ...
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei_15_03"); //Was genau ist denn geschehen?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_04"); //Diese abscheulichen Biester ... ich h�tte nicht so neugierig sein sollen und die F�sser dort stehen lassen, wo sie waren.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_05"); //Aber als ich diese Ger�usche bei der T�re h�rte, stellte ich sie beiseite um mit dem Ohr an der T�re zu lauschen.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_06"); //Und als ich wieder nach unten blickte ... da hingen diese gr�sslichen Viecher an meinen Beinen ... und danach wurde es schwarz um mich.
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei_15_07"); //Ja, klingt nicht so sch�n. Aber wie geht es dir denn jetzt? Auf dem Hof vermissen sie dich schon ...
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_08"); //Eigentlich f�hle ich mich schon ziemlich erholt ... aber zur�ck zum Hof kann ich trotzdem nicht.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_09"); //Bei der Plattform unten krabbeln noch unz�hlige von diesen ekligen Spinnenbiestern.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_10"); //Solange die dort sind, setz ich keinen Fu� in die H�hle.

	if (!Npc_KnowsInfo(hero, Info_Mod_Nandor_VinoBrennerei))
	{
		B_LogEntry	(TOPIC_MOD_VINO_WO, "Vino ist in Nandors Lager. Er wurde von kleinen Spinnen angegriffen, wird sich aber bald wieder erholen.");
	};

	B_LogEntry	(TOPIC_MOD_VINO_WO, "Zum Hof kann er jedoch nicht zur�ck, da bei dem Teleporter in der H�hle immer noch die Spinnen herumwuseln.");

	B_GivePlayerXP	(150);

	// T�r zum Spinnenbau aufschlie�en

	var int ptr;
	ptr = MEM_SearchVobByName("DOOR_SPINNENBAU_01");

	if (ptr > 0)
	{
		MEM_AssignInst(Platzhalter_Door, ptr);

		Platzhalter_Door._oCMobLockable_bitfield = Platzhalter_Door._oCMobLockable_bitfield & ~ oCMobLockable_bitfield_locked;
	};

	ptr = MEM_SearchVobByName("DOOR_SPINNENBAU_02");

	if (ptr > 0)
	{
		MEM_AssignInst(Platzhalter_Door, ptr);

		Platzhalter_Door._oCMobLockable_bitfield = Platzhalter_Door._oCMobLockable_bitfield & ~ oCMobLockable_bitfield_locked;
	};
};

INSTANCE Info_Mod_Vino_Brennerei2 (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei2_Condition;
	information	= Info_Mod_Vino_Brennerei2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Plattform ist sicher.";
};

FUNC INT Info_Mod_Vino_Brennerei2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	&& (Mod_Vino_Brennerei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei2_Info()
{
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei2_15_00"); //Die Plattform ist sicher.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei2_05_01"); //Wirklich? Keine von diesen garstigen Biestern mehr da?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei2_05_02"); //Na sch�n, ich werde mal einen Blick riskieren, ob es  auch wirklich ungef�hrlich ist.

	B_GivePlayerXP	(250);

	B_StartOtherRoutine	(self, "TELEPORT");
};

INSTANCE Info_Mod_Vino_Brennerei3 (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei3_Condition;
	information	= Info_Mod_Vino_Brennerei3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vino_Brennerei3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei2))
	&& (Npc_GetDistToWP(self, "FARM1") < 10000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei3_Info()
{
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_00"); //(munter) Ahh, da bist du ja. Hab vielen Dank f�r deine Hilfe bei der Spinnensache.
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei3_15_01"); //Du bist wieder wohl auf?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_02"); //Ja, mir geht es gro�artig.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_03"); //(etwas wehm�tig) Tja, nur in die Brennerei setze ich wohl vorerst keinen Fu� mehr, solange sich die Spinnen in den H�hlen und G�ngen tummeln.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_04"); //(wieder fr�hlicher) Wie dem auch sei, hier, als kleines Dankesch�n etwas Gold und ein paar meiner guten Kr�uterschn�pse.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_05"); //Die wirken belebend und machen jeden Kr�nkelnden rasch wieder munter. Auf dein Wohl.

	B_GivePlayerXP	(200);

	B_GiveInvItems	(self, hero, ItMi_Gold, 60);

	B_SetTopicStatus	(TOPIC_MOD_VINO_WO, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Vino_Brennerei4 (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei4_Condition;
	information	= Info_Mod_Vino_Brennerei4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Von den Spinnen geht keine Gefahr mehr aus.";
};

FUNC INT Info_Mod_Vino_Brennerei4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei3))
	&& (Npc_IsDead(Spider_Queen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei4_Info()
{
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei4_15_00"); //Von den Spinnen geht keine Gefahr mehr aus. Ihre K�nigin war einmal.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_01"); //Wirklich? Das sind gro�artige Neuigkeiten. Dann kann ich meiner Brennerei ja bald wieder einen Besuch abstatten.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_02"); //Ich hatte meinen Alchemietisch schon vermisst ...
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_03"); //Hmm, aber wie kann ich mich nun daf�r bedanken? Schnapps habe ich keinen mehr.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_04"); //Aber warte ... nimm diesen Ring hier.

	B_GiveInvItems	(self, hero, ItRi_Alchemist, 1);

	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_05"); //Ich fand ihn damals in der H�hle, bevor ich mit dem Brennen anfing.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_06"); //Ich hatte den Eindruck, dass er mir dabei half die Grundlagen der Alchemie schnell zu begreifen.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_07"); //Na ja, jetzt brauch ich ihn mittlerweile nicht mehr. Vielleicht n�tzt er dir etwas.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Vino_Pickpocket (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Pickpocket_Condition;
	information	= Info_Mod_Vino_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_40;
};

FUNC INT Info_Mod_Vino_Pickpocket_Condition()
{
	C_Beklauen	(34, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Vino_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

	Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_BACK, Info_Mod_Vino_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Vino_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Vino_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Vino_Pickpocket);
};

FUNC VOID Info_Mod_Vino_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Vino_Pickpocket);
};

INSTANCE Info_Mod_Vino_EXIT (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_EXIT_Condition;
	information	= Info_Mod_Vino_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vino_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vino_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};