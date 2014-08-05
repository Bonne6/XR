INSTANCE Info_Mod_Ratford_Hi (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Hi_Condition;
	information	= Info_Mod_Ratford_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Waidmannsheil.";
};

FUNC INT Info_Mod_Ratford_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ratford_Hi_Info()
{
	var c_npc Ratford; Ratford = Hlp_GetNpc(Mod_1120_BDT_Ratford_MT);
	var c_npc Drax; Drax = Hlp_GetNpc(Mod_1121_BDT_Drax_MT);

	TRIA_Invite(Ratford);
	TRIA_Invite(Drax);
	TRIA_Start();

	TRIA_Next(Ratford);

	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_00"); //Waidmannsheil.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_01"); //(skeptisch) Komm mir ja nicht so unschuldig. Was willst du?
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_02"); //Ich komme nur zuf�llig vorbei.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_03"); //Zuf�llig kommt hier niemand vorbei.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_04"); //Na sch�n - ich komme von eurem Boss und soll euch kr�ftig den Arsch versohlen. Klingt das vern�nftiger?

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_30_05"); //Das ist nicht dein Ernst!

	TRIA_Next(Ratford);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_06"); //(lacht) Der macht doch nur Sp��e, Drax. Der Typ scheint ganz in Ordnung zu sein.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_15_07"); //Was macht ihr denn hier drau�en?
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_36_08"); //Ich w�rde ja gern quatschen, aber ich habe gerade so eine trockene Kehle. Ohne �lung f�llt mir das Sprechen immer so schwer.

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_30_09"); //Und mir auch. Lass mal zwei Bierchen r�berwachsen!

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Ratford_Hi);

	Info_AddChoice	(Info_Mod_Ratford_Hi, "Das k�nnt ihr vergessen.", Info_Mod_Ratford_Hi_B);

	if (Npc_HasItems(hero, ItFo_Beer) >= 2) {
		Info_AddChoice	(Info_Mod_Ratford_Hi, "Eine Runde auf mich!", Info_Mod_Ratford_Hi_A);
	};
};

FUNC VOID Info_Mod_Ratford_Hi_B()
{
	var c_npc Ratford; Ratford = Hlp_GetNpc(Mod_1120_BDT_Ratford_MT);
	var c_npc Drax; Drax = Hlp_GetNpc(Mod_1121_BDT_Drax_MT);

	TRIA_Invite(Ratford);
	TRIA_Invite(Drax);
	TRIA_Start();

	TRIA_Next(Ratford);

	AI_Output(hero, self, "Info_Mod_Ratford_Hi_B_15_00"); //Das k�nnt ihr vergessen.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_B_36_01"); //So komme ich aber nicht in Plauderlaune. Da gehe ich lieber wieder an die Arbeit.

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_B_30_02"); //Ja, verpiss dich!

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Ratford_Hi);
};

FUNC VOID Info_Mod_Ratford_Hi_A()
{
	var c_npc Ratford; Ratford = Hlp_GetNpc(Mod_1120_BDT_Ratford_MT);
	var c_npc Drax; Drax = Hlp_GetNpc(Mod_1121_BDT_Drax_MT);

	TRIA_Invite(Ratford);
	TRIA_Invite(Drax);
	TRIA_Start();

	TRIA_Next(Ratford);

	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_00"); //Eine Runde auf mich!

	B_ShowGivenThings	("Zwei Bier gegeben");

	Npc_RemoveInvItems	(hero, ItFo_Beer, 2);

	CreateInvItems	(Ratford, ItFo_Beer, 1);
	CreateInvItems	(Drax, ItFo_Beer, 1);

	B_UseItem	(Ratford, ItFo_Beer);
	B_UseItem	(Drax, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_01"); //Nun gut, wir beobachten hier ein wenig die Gegend f�r das Banditenlager.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_02"); //Banditenlager?
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_03"); //Ja, das ist 'ne feine Bande ... Wir sind auch noch nicht lange dabei, aber bei denen wei� man noch, was Zusammenhalt bedeutet. Da haben wir auch ganz andere Erfahrungen gemacht.

	TRIA_Next(Drax);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_06_04"); //Hauptsache, die lassen uns in Ruhe unser Ding machen.

	TRIA_Next(Ratford);

	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_05"); //Und das tun sie. Wir passen ein bisschen auf, dass keine Invasionsarmee �ber den Pass kommt, und wenn uns ein Tier vor den Bogen l�uft, knallen wir es ab.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_06"); //Den restlichen Tag �ber h�ngen wir eigentlich rum.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_07"); //K�nnt ihr mir irgendetwas �ber das Minental erz�hlen? Was ist hier in letzter Zeit passiert?
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_08"); //Keine Ahnung, aber ziemlich viel. In den gro�en Lagern ist die Kacke mehr oder weniger am Dampfen.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_09"); //Im Alten Lager ging's kurz nach dem Fall der Barriere anscheinend drunter und dr�ber, jedenfalls haben wir bis hierher Schreie und L�rm geh�rt.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_10"); //Dann zog hier eine gr��ere Gruppe heruntergekommener Gestalten vorbei.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_11"); //Danach wurde es im Lager verd�chtig ruhig. Hat sich kaum noch einer gezeigt. Wer wei�, ob da drin mittlerweile �berhaupt noch jemand lebt.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_12"); //Das klingt ja, als m�sste ich mir das mal anschauen.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_13"); //Lass dich nicht aufhalten. K�nnte ein Geheimtipp f�r Pl�nderer sein, wer wei�.
	AI_Output(hero, self, "Info_Mod_Ratford_Hi_A_15_14"); //Dann w�nsch ich euch noch einen sch�nen Tag.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_15"); //Ja, werden wir sicher haben.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_16"); //Ach ja, wenn du mal bei uns vorbeischauen willst: Geh einfach die Felswand entlang, zuerst Richtung Wald, dann bergauf.
	AI_Output(self, hero, "Info_Mod_Ratford_Hi_A_36_17"); //So einen wie dich k�nnen wir immer gebrauchen.

	TRIA_Finish();

	Info_ClearChoices	(Info_Mod_Ratford_Hi);
};

INSTANCE Info_Mod_Ratford_Fokus (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Fokus_Condition;
	information	= Info_Mod_Ratford_Fokus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ratford_Fokus_Condition()
{
	if (Kapitel == 2)
	&& (Mod_RatfordDrax_Weg)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ratford_Fokus_Info()
{
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_00"); //Schei�e, dich kenn ich doch, Mann! Kannst du mir sagen, was das hier soll?
	AI_Output(hero, self, "Info_Mod_Ratford_Fokus_15_01"); //Seh ich etwa so aus? Was ist denn passiert?
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_02"); //Gute Frage! Drax und ich waren hier gerade am Jagen, da tauchte hinter uns diese Horde Warge auf und h�lt direkt auf uns zu.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_03"); //Wir haben also sofort unsere Pfeile gez�ckt und den Biestern ordentlich in die Fresse gegeben, aber es waren verdammt noch mal viel zu viele.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_04"); //Anstatt aber �ber uns herzufallen, laufen sie an uns vorbei zu diesem komischen Kreis da dr�ben, schnappen sich ein kleines eckiges Ding, das obendrauf liegt, und hauen ab.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_05"); //So was Verr�cktes hab ich noch nie erlebt. (lacht unsicher)
	AI_Output(hero, self, "Info_Mod_Ratford_Fokus_15_06"); //Wohin sind die Warge verschwunden?
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_07"); //Direkt in die H�lle, wenn du mich fragst.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_08"); //Drax ist ihnen hinterher, sie sind landeinw�rts im Wald verschwunden.
	AI_Output(hero, self, "Info_Mod_Ratford_Fokus_15_09"); //Und du h�ltst hier die Stellung.
	AI_Output(self, hero, "Info_Mod_Ratford_Fokus_36_10"); //Na ja, die Puste macht nicht mehr mit. Ich hoffe blo�, Drax ist nicht doch noch zerfleischt worden.

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Beim Fokus an den Klippen ist mir eine Wargrotte zuvorgekommen. W�hrend sie von Ratford und Drax unter Beschuss genommen wurde, hat sie sich den Fokus geschnappt und ist im Wald landeinw�rts verschwunden. Drax ist hinterhergelaufen.");

	B_StartOtherRoutine	(Mod_1121_BDT_Drax_MT, "FOKUS");

	Wld_InsertNpc	(Warg_RatfordDrax_09, "FP_WARGLEICHE_FOKUS_09");
	Wld_InsertNpc	(Warg_RatfordDrax_10, "FP_WARGLEICHE_FOKUS_10");
	Wld_InsertNpc	(Warg_RatfordDrax_11, "FP_WARGLEICHE_FOKUS_11");
	Wld_InsertNpc	(Warg_RatfordDrax_12, "FP_WARGLEICHE_FOKUS_12");
	Wld_InsertNpc	(Warg_RatfordDrax_13, "FP_WARGLEICHE_FOKUS_13");
	Wld_InsertNpc	(Warg_RatfordDrax_14, "FP_WARGLEICHE_FOKUS_14");
	Wld_InsertNpc	(Warg_RatfordDrax_15, "FP_WARGLEICHE_FOKUS_15");
	Wld_InsertNpc	(Warg_RatfordDrax_16, "FP_WARGLEICHE_FOKUS_16");
	Wld_InsertNpc	(Warg_RatfordDrax_17, "FP_WARGLEICHE_FOKUS_17");
	Wld_InsertNpc	(Warg_RatfordDrax_18, "FP_WARGLEICHE_FOKUS_18");
	Wld_InsertNpc	(Warg_RatfordDrax_19, "FP_WARGLEICHE_FOKUS_19");
	Wld_InsertNpc	(Warg_RatfordDrax_20, "FP_WARGLEICHE_FOKUS_20");
	Wld_InsertNpc	(Warg_RatfordDrax_21, "FP_WARGLEICHE_FOKUS_21");
	Wld_InsertNpc	(Warg_RatfordDrax_22, "FP_WARGLEICHE_FOKUS_22");

	B_KillNpc	(Warg_RatfordDrax_09);
	B_KillNpc	(Warg_RatfordDrax_10);
	B_KillNpc	(Warg_RatfordDrax_11);
	B_KillNpc	(Warg_RatfordDrax_12);
	B_KillNpc	(Warg_RatfordDrax_13);
	B_KillNpc	(Warg_RatfordDrax_14);
	B_KillNpc	(Warg_RatfordDrax_15);
	B_KillNpc	(Warg_RatfordDrax_16);
	B_KillNpc	(Warg_RatfordDrax_17);
	B_KillNpc	(Warg_RatfordDrax_18);
	B_KillNpc	(Warg_RatfordDrax_19);
	B_KillNpc	(Warg_RatfordDrax_20);
	B_KillNpc	(Warg_RatfordDrax_21);
	B_KillNpc	(Warg_RatfordDrax_22);
};

INSTANCE Info_Mod_Ratford_Pickpocket (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_Pickpocket_Condition;
	information	= Info_Mod_Ratford_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ratford_Pickpocket_Condition()
{
	C_Beklauen	(85, ItFo_MuttonRaw, 11);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

	Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_BACK, Info_Mod_Ratford_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ratford_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

		Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ratford_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ratford_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ratford_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ratford_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ratford_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ratford_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ratford_EXIT (C_INFO)
{
	npc		= Mod_1120_BDT_Ratford_MT;
	nr		= 1;
	condition	= Info_Mod_Ratford_EXIT_Condition;
	information	= Info_Mod_Ratford_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ratford_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ratford_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};