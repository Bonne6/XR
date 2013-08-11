INSTANCE Info_Mod_Francis_Hi (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Hi_Condition;
	information	= Info_Mod_Francis_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Francis_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Francis_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Francis_Hi_13_01"); //Ich bin Francis und einer der drei Entertruppf�hrer.
};

INSTANCE Info_Mod_Francis_Entertrupp (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Entertrupp_Condition;
	information	= Info_Mod_Francis_Entertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich will in deinen Entertrupp.";
};

FUNC INT Info_Mod_Francis_Entertrupp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Hi))
	&& (Piraten_Dabei == 1)
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Entertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Entertrupp_15_00"); //Ich will in deinen Entertrupp.
	AI_Output(self, hero, "Info_Mod_Francis_Entertrupp_13_01"); //Und du willst meine Zustimmung? Na gut, dann kannst du mir vielleicht bei einem Problem helfen:
	AI_Output(self, hero, "Info_Mod_Francis_Entertrupp_13_02"); //Die Jungs aus meinem Entertrupp haben bei Skip ziemlichen �rger gemacht und deshalb will er nicht mehr mit uns Handeln.
	AI_Output(self, hero, "Info_Mod_Francis_Entertrupp_13_03"); //Geh zu ihm und mach das wieder gut.
	AI_Output(hero, self, "Info_Mod_Francis_Entertrupp_15_04"); //Werd's probieren.

	Log_CreateTopic	(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FRANCIS_ENTERTRUPP, "Um in Francis Entertrupp zu kommen soll ich daf�r sorgen, dass Skip wieder mit ihm und seinen Leuten handelt.");
};

INSTANCE Info_Mod_Francis_Skip (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Skip_Condition;
	information	= Info_Mod_Francis_Skip_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skip wird wieder mit dir und deinen Jungs handeln.";
};

FUNC INT Info_Mod_Francis_Skip_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_Geld))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Skip_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Skip_15_00"); //Skip wird wieder mit dir und deinen Jungs handeln.
	AI_Output(self, hero, "Info_Mod_Francis_Skip_13_01"); //Gut, damit hast du deinen Teil der Abmachung eingehalten.
	AI_Output(self, hero, "Info_Mod_Francis_Skip_13_02"); //Von mir aus kannst du dich einem der Trupps anschlie�en.

	if (Mod_InEntertrupp == 0)
	{
		B_LogEntry_More	(TOPIC_MOD_PIRATEN_ENTERTRUPP, TOPIC_MOD_FRANCIS_ENTERTRUPP, "Francis gibt mir seine Zustimmung mich einem Entertrupp anzuschlie�en.", "Francis ist zufrieden mit mir und gibt mir seine Zustimmung.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_FRANCIS_ENTERTRUPP, "Francis ist zufrieden mit mir und gibt mir seine Zustimmung.");
	};

	B_SetTopicStatus	(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	B_G�ttergefallen(2, 1);
};

INSTANCE Info_Mod_Francis_InEntertrupp (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_InEntertrupp_Condition;
	information	= Info_Mod_Francis_InEntertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich will in deinen Entertrupp.";
};

FUNC INT Info_Mod_Francis_InEntertrupp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Skip))
	&& (Mod_InEntertrupp == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen))
	|| (Mod_QuatschGrog == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_InEntertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_InEntertrupp_15_00"); //Ich will in deinen Entertrupp.
	AI_Output(self, hero, "Info_Mod_Francis_InEntertrupp_13_01"); //Du hast bewiesen, dass du als Pirat zu gebrauchen bist.
	AI_Output(self, hero, "Info_Mod_Francis_InEntertrupp_13_02"); //Ab sofort bist du in meinem Entertrupp.

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_PIRATEN_ENTERTRUPP, "Ich bin jetzt Mitglied von Francis Entertrupp.");
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_SUCCESS);

	Mod_InEntertrupp = 1;

	B_G�ttergefallen(2, 1);
};

INSTANCE Info_Mod_Francis_Befreiung (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Befreiung_Condition;
	information	= Info_Mod_Francis_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du etwas zu tun f�r mich?";
};

FUNC INT Info_Mod_Francis_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_00"); //Hast du etwas zu tun f�r mich? Ich soll helfen hier wieder alles in Gang zu kriegen, damit ich anschlie�end der Garde Innos' den letzten Schlag versetzen kann.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_01"); //(w�tend) Was? Siehst du denn nicht, dass ich versuche Holz f�r die Palisade zu s�gen.
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_02"); //(verduzt) Seit wann musst du das machen?
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_03"); //(Ver�rgert) Genau das ist es. Ich m�sste eigentlich die Arbeiten beaufsichtigen anstatt zu s�gen.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_04"); //Angus und Hank, diese faulen S�cke, m�ssten das eigentlich tun, aber sie machen sich einen sch�nen Tag in der Sonne.
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_05"); //(grinst) Soll ich dir helfen?
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_06"); //(w�tend) Eigentich sollte ich dir f�r dein freches Grinsen das Maul stopfen, aber ja, du kannst mir helfen.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_07"); //Verm�ble das faule Pack, damit sie wieder die S�gen schwingen, dann richte ich Greg aus, dass wir wieder genug Holz f�r die Palisade haben.
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_08"); //Ok.
	
	Log_CreateTopic	(TOPIC_MOD_BEL_PIRFRANCIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRFRANCIS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRFRANCIS, "Angus und Hank machen sich einen sch�nen Tag in der Sonne, statt Holz f�r die Palisade zu s�gen. Francis will, dass ich die beiden wieder zur Arbeit bewege.");
};

INSTANCE Info_Mod_Francis_Befreiung2 (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Befreiung2_Condition;
	information	= Info_Mod_Francis_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Deine Arbeiter sind nun wieder anwesend.";
};

FUNC INT Info_Mod_Francis_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Befreiung))
	&& (Npc_KnowsInfo(hero, Info_Mod_Angus_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung2_15_00"); //Deine Arbeiter sind nun wieder anwesend.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung2_13_01"); //Gut gemacht. H�tt nicht gedacht das du die beiden wieder zur Vernuft bringen kannst. Hier nimm das als Belohnung.

	B_GiveInvItems	(self, hero, ItPl_Perm_Herb, 1);

	AI_Output(hero, self, "Info_Mod_Francis_Befreiung2_15_02"); //Danke, ich werde nun gehen.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung2_13_03"); //Tu das.

	B_GivePlayerXP	(300);

	Mod_Piratenbefreiung += 1;
	
	B_LogEntry_More	(TOPIC_MOD_BEL_PIRFRANCIS, TOPIC_MOD_BEL_PIRATENLAGER, "Francis wei� Bescheid wegen Angus und Hank.", "Francis wei� Bescheid wegen Angus und Hank.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRFRANCIS, LOG_SUCCESS);
};

INSTANCE Info_Mod_Francis_Pickpocket (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Pickpocket_Condition;
	information	= Info_Mod_Francis_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Francis_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Francis_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

	Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_BACK, Info_Mod_Francis_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Francis_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Francis_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Francis_Pickpocket);
};

FUNC VOID Info_Mod_Francis_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

		Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Francis_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Francis_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Francis_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Francis_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Francis_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Francis_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Francis_EXIT (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_EXIT_Condition;
	information	= Info_Mod_Francis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Francis_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Francis_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};