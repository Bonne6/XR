INSTANCE Info_Mod_Jesper_Dieb (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Dieb_Condition;
	information	= Info_Mod_Jesper_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Diebeszeichen zeigen)";
};

FUNC INT Info_Mod_Jesper_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Dieb_Info()
{
	AI_PlayAni (hero, "T_YES");
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_00"); //Wie ich sehe, bist du einer von uns.
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_01"); //Als Willkommensgru� kriegst du einen Tipp von mir: Lern dich richtig zu bewegen!
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_02"); //Du stakst wie ein Storch durch die Gegend. Ich kann dich h�ren, egal in welchem Raum du dich hier befindest.
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_03"); //Wenn du jemanden brauchst, der dir geschmeidige Bewegungen beibringt, melde dich bei mir.
	AI_Output(self, hero, "Info_Mod_Jesper_Dieb_36_04"); //Damit h�ttest du sicher bessere Chancen, dich lautlos anzuschleichen.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Jesper kann mir beibringen zu schleichen.");
};

INSTANCE Info_Mod_Jesper_WieLangDabei (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_WieLangDabei_Condition;
	information	= Info_Mod_Jesper_WieLangDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie lange bist du schon dabei?";
};

FUNC INT Info_Mod_Jesper_WieLangDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_Dieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_WieLangDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_WieLangDabei_15_00"); //Wie lange bist du schon dabei?
	AI_Output(self, hero, "Info_Mod_Jesper_WieLangDabei_36_01"); //Ich hab nie was anderes gemacht. Meine Kinder- und Jugendstreiche waren noch planlos, ich habe mir immer gerade das genommen, was ich zum �berleben brauchte.
	AI_Output(self, hero, "Info_Mod_Jesper_WieLangDabei_36_02"); //Mit Cassia hat sich das ge�ndert. Ohne sie w�re ich ein kleiner Gauner geblieben, aber heute leben wir weit �ber das Notwendigste hinaus.
	AI_Output(self, hero, "Info_Mod_Jesper_WieLangDabei_36_03"); //Gerade bei gro�en Unternehmungen ist es unabdinglich, im Team zu arbeiten. Deshalb hoffe ich, dass du dich gut einzubringen wei�t.
};

INSTANCE Info_Mod_Jesper_Tipps (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Tipps_Condition;
	information	= Info_Mod_Jesper_Tipps_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du noch mehr Tipps f�r mich?";
};

FUNC INT Info_Mod_Jesper_Tipps_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_Dieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Tipps_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_Tipps_15_00"); //Hast du noch mehr Tipps f�r mich?
	AI_Output(self, hero, "Info_Mod_Jesper_Tipps_36_01"); //Das Schleichen ist meine Spezialit�t. Wenn dich verschlossene Truhen interessieren, sprich mit Ramirez.
	AI_Output(self, hero, "Info_Mod_Jesper_Tipps_36_02"); //Cassia hat dir sicher schon gesagt, dass sie es wie keine zweite versteht, den ahnungslosen B�rgern den Geldbeutel abzuschneiden.
};

INSTANCE Info_Mod_Jesper_Coup (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Coup_Condition;
	information	= Info_Mod_Jesper_Coup_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was war dein gr��ter Coup?";
};

FUNC INT Info_Mod_Jesper_Coup_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_WieLangDabei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Coup_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_Coup_15_00"); //Was war dein gr��ter Coup?
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_01"); //Da muss ich nicht lange �berlegen, obwohl es schon ein paar Jahre her ist!
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_02"); //Ramirez war bei einem Einbruch aufgeflogen und im Kerker gelandet. Cassia und ich mussten schnell sein, bevor die Miliz irgendetwas �ber uns herausfinden konnte.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_03"); //Der Weg an dem Wachtposten vor den Zellen vorbei war f�r uns unm�glich - das h�tten wir nicht ungesehen schaffen k�nnen.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_04"); //Also haben wir uns die ganze Nacht Zeit genommen und die Mauer von der anderen Seite Stein f�r Stein abgetragen. Wir mussten dabei verdammt leise und vorsichtig sein - aber wir haben es geschafft.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_05"); //Am Ende konnte sich Ramirez verdr�cken, als die Wache gerade Pinkelpause machte. So einen Ausbruch hatte man in der Stadt noch nicht gesehen, und er war wochenlang im Gespr�ch.
	AI_Output(self, hero, "Info_Mod_Jesper_Coup_36_06"); //Nat�rlich war es in der Zeit danach noch schwieriger f�r uns, weil alle Patrouillen und Kontrollen verst�rkt wurden. Seitdem passen wir noch besser auf, dass wir nicht erwischt werden.
};

INSTANCE Info_Mod_Jesper_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_AndreVermaechtnis_Condition;
	information	= Info_Mod_Jesper_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_AndreVermaechtnis_Info()
{
	AI_TurnToNpc	(self, Mod_598_MIL_Mika_NW);

	AI_Output(self, hero, "Info_Mod_Jesper_AndreVermaechtnis_36_00"); //Na sch�n, dann eben nur 40 Goldm�nzen. Nimm das Schei�ding ... Halsabschneider. Aber ... wer zum Teufel ...

	AI_TurnToNpc	(self, hero);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jesper_Lernen (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Lernen_Condition;
	information	= Info_Mod_Jesper_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Schleichen lernen (5 LP)";
};

FUNC INT Info_Mod_Jesper_Lernen_Condition()
{
	Info_Mod_Jesper_Lernen.description = B_BuildLearnString("Schleichen lernen", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_Dieb))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Jesper_Lernen_15_00"); //Bring mir bei, wie man schleicht.

	B_TeachThiefTalent (self, hero, NPC_TALENT_SNEAK);
};

INSTANCE Info_Mod_Jesper_Pickpocket (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_Pickpocket_Condition;
	information	= Info_Mod_Jesper_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Jesper_Pickpocket_Condition()
{
	C_Beklauen	(110, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

	Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_BACK, Info_Mod_Jesper_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jesper_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

		Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jesper_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jesper_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jesper_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jesper_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jesper_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jesper_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jesper_EXIT (C_INFO)
{
	npc		= Mod_587_NONE_Jesper_NW;
	nr		= 1;
	condition	= Info_Mod_Jesper_EXIT_Condition;
	information	= Info_Mod_Jesper_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jesper_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesper_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};