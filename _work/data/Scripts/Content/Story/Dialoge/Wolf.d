INSTANCE Info_Mod_Wolf_Hi (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Hi_Condition;
	information	= Info_Mod_Wolf_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wolf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wolf_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_00"); //Hey, du lebst ja noch. H�tte nicht gedacht, dass wir uns noch mal sehen.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_01"); //Die Minecrawlerr�stung scheint ja ganz sch�n stabil gewesen zu sein.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_02"); //Ja, da hast du ganze Arbeit geleistet.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_03"); //Stimmt ... wirklich zwei Prachtst�cke, die ich das zusammengebastelt hatte.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_04"); //Zwei? Wo ist die andere.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_05"); //Ich hab sie meinem alten Kumpel Gestath gegeben, mit dem ich am Rande der Barriere Handel trieb.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_06"); //Er hat mir die Dinge besorgt, die es vor allem au�erhalb unseres Gef�ngnisses gab und ich habe ihm daf�r einige spezielle Gegenst�nde gegeben, welche die Kolonie hervorgebracht hatte.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_07"); //Er wollte dann in irgendeine unwirkliche Gegend, die von wilden Bestien bewohnt wird ... ein Paradies f�r J�ger, wie er jedenfalls meinte.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_08"); //Habe ihn nach dem Fall der Barriere auf jeden Fall nicht wieder zu Gesicht bekommen.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_09"); //Kannst du mir noch mal so eine R�stung basteln?
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_10"); //K�nnte ich schon. Aber dazu br�uchte ich eben die n�tigen Rohstoffe. Wei�t du denn noch, wie man den Biestern die Platten abzieht?
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_11"); //Also ... ich habe so einiges Vergessen ...
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_12"); //Nun gut, ich k�nnte es dir noch mal zeigen. Aber ohne Crawlerkrieger br�chte uns auch das nichts.
	AI_Output(hero, self, "Info_Mod_Wolf_Hi_15_13"); //Wo werde ich welche finden?
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_14"); //Ich wei� nicht ... in der N�he w�rde mir eigentlich nichts in den Sinn kommen ... h�chstens im S�den.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_15"); //Gorn hatte n�mlich irgendetwas von einer verfluchten Festung in den Bergen erz�hlt, die er einnehmen wollte. Auf jeden Fall noch nicht erschlossen.
	AI_Output(self, hero, "Info_Mod_Wolf_Hi_08_16"); //Wom�glich gibt es da H�hlen mit den Viechern ... keine Ahnung.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_S�LDNER, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_S�LDNER, "Wolf kann mir wieder zeigen, wie ich an Crawlerplatten komme.");
};

INSTANCE Info_Mod_Wolf_Snapperbogen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Snapperbogen_Condition;
	information	= Info_Mod_Wolf_Snapperbogen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wolf_Snapperbogen_Condition()
{
	var C_ITEM rwp;
	rwp = Npc_GetEquippedMeleeWeapon(hero);

	if (Hlp_IsItem(rwp, ItRw_Snapperbogen) == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Snapperbogen_Info()
{
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_08_00"); //Warte mal. Was ist das f�r ein merkw�rdiger Bogen auf deinem R�cken?
	AI_Output(hero, self, "Info_Mod_Wolf_Snapperbogen_15_01"); //Ein Snapperbogen. Schon mal einen gesehen?
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_08_02"); //Zeig mal.

	B_GiveInvItems	(hero, self, ItRw_Snapperbogen, 1);

	EquipItem	(self, ItRw_Snapperbogen);

	AI_ReadyRangedWeapon	(self);

	AI_PlayAni	(self, "T_1HINSPECT");

	AI_DrawWeapon	(self);

	AI_UnequipWeapons	(self);

	B_GiveInvItems	(self, hero, ItRw_Snapperbogen, 1);

	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_08_03"); //Hmm, irgendwie habe ich das Gef�hl, so einen Bogen schon mal irgendwo gesehen zu haben ... hmm.
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_08_04"); //Aber warte mal ... der ist ja erstaunlich leicht zu handhaben ... ideal f�r die Jagd nach Wildtieren.
	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen_08_05"); //Verkaufst du ihn mir? Ich w�rde dir glatt ... 800 Goldst�cke daf�r geben.
};

INSTANCE Info_Mod_Wolf_Snapperbogen2 (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Snapperbogen2_Condition;
	information	= Info_Mod_Wolf_Snapperbogen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Snapperbogen f�r 800 Goldst�cke verkaufen)";
};

FUNC INT Info_Mod_Wolf_Snapperbogen2_Condition()
{
	if (Npc_HasItems(hero, ItRw_Snapperbogen) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Snapperbogen2_Info()
{
	B_GiveInvItems	(hero, self, ItRw_Snapperbogen, 1);

	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen2_08_00"); //Hat mich gefreut mit dir Gesch�fte gemacht zu werden.

	B_GiveInvItems	(self, hero, ItMi_Gold, 800);

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Wolf_Snapperbogen2_08_01"); //(zu sich selbst) Und jetzt schau ich mir das Ding mal genau an ... w�re doch gelacht, wenn ich nicht auch solche B�gen herstellen k�nnte.

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Wolf_Lehrer (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Lehrer_Condition;
	information	= Info_Mod_Wolf_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir was beibringen?";
};

FUNC INT Info_Mod_Wolf_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Hi))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Lehrer_08_01"); //Ich kann dir helfen geschickter zu werden und ich kann dir den Umgang mit einem Bogen beibringen.
		AI_Output(self, hero, "Info_Mod_Wolf_Lehrer_08_02"); //Ich kann dir auch zeigen, wie du Pfeile herstellst.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Wolf kann mir helfen geschickter zu werden, den Umgang mit einem Bogen beibringen und zeigen, wie ich Pfeile herstelle.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Lehrer_08_03"); //Ich kann dir zeigen, wie du Pfeile herstellst.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Wolf kann mir zeigen, wie ich Pfeile herstelle.");
	};
};

INSTANCE Info_Mod_Wolf_Lernen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Lernen_Condition;
	information	= Info_Mod_Wolf_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir was bei.";
};

FUNC INT Info_Mod_Wolf_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Lernen_15_00"); //Bring mir was bei.
	AI_Output(self, hero, "Info_Mod_Wolf_Lernen_08_01"); //Was willst du lernen?

	Info_ClearChoices	(Info_Mod_Wolf_Lernen);

	Info_AddChoice 		(Info_Mod_Wolf_Lernen, DIALOG_BACK, Info_Mod_Wolf_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Wolf_Lernen);
};

FUNC VOID Info_Mod_Wolf_Lernen_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 140);
	
	Info_ClearChoices	(Info_Mod_Wolf_Lernen);

	Info_AddChoice 		(Info_Mod_Wolf_Lernen, DIALOG_BACK, Info_Mod_Wolf_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 140);
	
	Info_ClearChoices	(Info_Mod_Wolf_Lernen);

	Info_AddChoice 		(Info_Mod_Wolf_Lernen, DIALOG_BACK, Info_Mod_Wolf_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_5);
	Info_AddChoice		(Info_Mod_Wolf_Lernen, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Wolf_Lernen_Geschick_1);
};

INSTANCE Info_Mod_Wolf_Lernen_Bogen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Lernen_Bogen_Condition;
	information	= Info_Mod_Wolf_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir Bogenschie�en bei.";
};

FUNC INT Info_Mod_Wolf_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& (hero.hitchance[NPC_TALENT_BOW] < 100)
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Lernen_Bogen_15_00"); //Bring mir Bogenschie�en bei.

	Info_ClearChoices	(Info_Mod_Wolf_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, "Zur�ck.", Info_Mod_Wolf_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Wolf_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Wolf_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Wolf_Lernen_Bogen);
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 100);

	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, "Zur�ck.", Info_Mod_Wolf_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Wolf_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Wolf_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Wolf_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 100);

	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, "Zur�ck.", Info_Mod_Wolf_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Wolf_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Wolf_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Wolf_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Wolf_Schnitzen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Schnitzen_Condition;
	information	= Info_Mod_Wolf_Schnitzen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir bei Pfeile zu schnitzen (2 LP)";
};

FUNC INT Info_Mod_Wolf_Schnitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Wolf_Schnitzen.description = "Bring mir bei Pfeile zu schnitzen (200 Gold)";
	}
	else
	{
		Info_Mod_Wolf_Schnitzen.description = "Bring mir bei Pfeile zu schnitzen (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& (Mod_PfeileSchnitzen	== 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Schnitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Schnitzen_15_00"); //Bring mir bei Pfeile zu schnitzen.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 2))
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Schnitzen_08_01"); //Ok. Zuerst solltest du dir ein Holzst�ck bei Thorben kaufen. Dieses nimmst du dann mit an eine Baums�ge und schnitzt es zu etwa 10 Pfeilen.
		AI_Output(self, hero, "Info_Mod_Wolf_Schnitzen_08_02"); //Dann f�gst du den Pfeil mit einer Pfeilspitze an einem Amboss zusammen und fertig ist dein Pfeil.

		Mod_PfeileSchnitzen = 1;

		Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_PFEILE, "Um Pfeile herzustellen ben�tige ich Pfeilst�be. Diese kann ich mir aus �sten zurechts�gen.");

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
		AI_Output (self, hero, "Info_Mod_Wolf_Schnitzen_08_03"); //Komm wieder, wenn du bereit bist.
	};
};

INSTANCE Info_Mod_Wolf_Spitzen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Spitzen_Condition;
	information	= Info_Mod_Wolf_Spitzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bring mir bei Pfeilspitzen zu schmieden (2 LP)";
};

FUNC INT Info_Mod_Wolf_Spitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Wolf_Spitzen.description = "Bring mir bei Pfeilspitzen zu schmieden (200 Gold)";
	}
	else
	{
		Info_Mod_Wolf_Spitzen.description = "Bring mir bei Pfeilspitzen zu schmieden (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Lehrer))
	&& (Mod_PfeileSpitzen == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_Spitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_Spitzen_15_00"); //Bring mir bei Pfeilspitzen zu schmieden.

	if ((Mod_Schwierigkeit == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200))
	|| ((Mod_Schwierigkeit != 4)
	&& (hero.lp >= 2))
	{
		AI_Output(self, hero, "Info_Mod_Wolf_Spitzen_08_01"); //Nimm ein St�ck Rohstahl und geh an einen Amboss. Aus einem St�ck Rohstahl bekommst du ungef�hr 10 Pfeilspitzen.

		Mod_PfeileSpitzen = 1;

		Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_PFEILE, "Um Pfeile herzustellen ben�tige ich Pfeilspitzen. Diese kann ich an einem Amboss aus Rohstahl gewinnen.");

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
		AI_Output (self, hero, "Info_Mod_Wolf_Spitzen_08_02"); //Komm wieder, wenn du bereit bist.
	};
};

INSTANCE Info_Mod_Wolf_PlattenNehmen (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_PlattenNehmen_Condition;
	information	= Info_Mod_Wolf_PlattenNehmen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wie bekomme ich diese Platten von den Biestern ab? (5 LP)";
};

FUNC INT Info_Mod_Wolf_PlattenNehmen_Condition()
{
	Info_Mod_Wolf_PlattenNehmen.description = B_BuildLearnString("Wie bekomme ich diese Platten von den Biestern ab?", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_CrawlerPlate));

	if (Npc_KnowsInfo(hero, Info_Mod_Wolf_Hi))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CrawlerPlate] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wolf_PlattenNehmen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wolf_PlattenNehmen_15_00"); //Wie bekomme ich diese Platten von den Biestern ab?

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_CrawlerPlate))
	{
		AI_Output(self, hero, "Info_Mod_Wolf_PlattenNehmen_08_01"); //Das ist relativ einfach. Die R�ckenplatten sind nur an deren R�ndern mit dem K�rper verwachsen.
		AI_Output(self, hero, "Info_Mod_Wolf_PlattenNehmen_08_02"); //Nimm einfach ein Rasiermesser und schneide halbschr�g an den R�ndern entlang.
	};
};

INSTANCE Info_Mod_Wolf_Pickpocket (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_Pickpocket_Condition;
	information	= Info_Mod_Wolf_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_100;
};

FUNC INT Info_Mod_Wolf_Pickpocket_Condition()
{
	C_Beklauen	(87, ItMi_Gold, 600);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);

	Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_BACK, Info_Mod_Wolf_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wolf_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wolf_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);
};

FUNC VOID Info_Mod_Wolf_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Wolf_Pickpocket);
};

INSTANCE Info_Mod_Wolf_EXIT (C_INFO)
{
	npc		= Mod_798_SLD_Wolf_NW;
	nr		= 1;
	condition	= Info_Mod_Wolf_EXIT_Condition;
	information	= Info_Mod_Wolf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wolf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wolf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};