INSTANCE Info_Mod_Ethan_Hi (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Hi_Condition;
	information	= Info_Mod_Ethan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Ethan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ethan_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Ethan_Hi_13_01"); //Ich bin Ethan, oberster H�ter in der Gemeinschaft des Wassers. Ich f�hre und leite die Wasserkrieger.
};

INSTANCE Info_Mod_Ethan_Irdorath (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath_Condition;
	information	= Info_Mod_Ethan_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Der Weg zur Vernichtung des �blen Xeres wird mich mit dem Schiff auch zu einer Insel f�hren.";
};

FUNC INT Info_Mod_Ethan_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath_15_00"); //Der Weg zur Vernichtung des �blen Xeres wird mich mit dem Schiff auch zu einer Insel f�hren.
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath_15_01"); //Ich bin jedoch auf die Unterst�tzung kampfstarker und mutiger Begleiter angewiesen.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath_13_02"); //Dann hast du gut daran getan dich an mich zu wenden.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath_13_03"); //Die Bannung dieses Unholdes hat h�chsten Vorrang und ich werde dir mit Eis und Schwert zur Seite stehen um meinen Teil dazu beizutragen.
};

INSTANCE Info_Mod_Ethan_Irdorath2 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath2_Condition;
	information	= Info_Mod_Ethan_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dann freut es mich, einen K�mpfer f�r das Gleichgewicht in unseren Reihen zu wissen.";
};

FUNC INT Info_Mod_Ethan_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath2_15_00"); //Dann freut es mich, einen K�mpfer f�r das Gleichgewicht in unseren Reihen zu wissen.
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath2_15_01"); //Der Treffpunkt f�r unsere Exkursion ist der Hafen von Khorinis.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath2_13_02"); //Dann werde ich mich gleich auf den Weg machen.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "So, mit Ethan wei� ich jetzt einen starken K�mpfer an Bord.");

	B_GivePlayerXP	(100);

	Mod_EthanDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Ethan_Irdorath3 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath3_Condition;
	information	= Info_Mod_Ethan_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Tut mir leid, aber es scheint das wir zu viele sind.";
};

FUNC INT Info_Mod_Ethan_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_EthanDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath3_15_00"); //Tut mir leid, aber es scheint das wir zu viele sind. Ich kann dich doch nicht mitnehmen.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath3_13_01"); //Schade. Ich gehe dann wieder zur�ck. Du wei�t wo du mich findest, wenn doch noch ein Platz frei werden sollte.

	Mod_EthanDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Ethan_Irdorath4 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Irdorath4_Condition;
	information	= Info_Mod_Ethan_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich kann dich doch mitnehmen.";
};

FUNC INT Info_Mod_Ethan_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_EthanDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_Irdorath4_15_00"); //Ich kann dich doch mitnehmen. Es hat sich noch ein Platz auf dem Schiff gefunden.
	AI_Output(self, hero, "Info_Mod_Ethan_Irdorath4_13_01"); //Sehr gut, ich bin dann wieder am Hafen.

	Mod_EthanDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Ethan_DungeonSounds_01 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_DungeonSounds_01_Condition;
	information	= Info_Mod_Ethan_DungeonSounds_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_DungeonSounds_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_26))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_00"); //Du hast bewiesen, dass du sowohl �ber Kampfkraft, als auch �ber Verstand verf�gst.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_01"); //Nun, ich h�tte da so ein Anliegen, bei welchem du mir vielleicht behilflich sein k�nntest ...
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_15_02"); //Worum geht es?
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_03"); //Tja, ich habe die Angewohnheit abends immer zum Training rauszugehen.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_04"); //Vor einigen Tagen habe ich nun in der N�he einer H�hle trainiert, als ich merkw�rdige Ger�usche vernahm. Ich n�hrte mich der H�hle, und dann ...
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_15_05"); //Ja, was geschah?
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_06"); //�hhm ... dann bin ich am n�chsten morgen in der H�hle aufgewacht.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_07"); //Ich habe es noch an den anderen Abenden wiederholt, um der Quelle der Ger�usche auf die Spur zu kommen, aber jedes Mal geschah das gleiche.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_08"); //Das ganze war mir etwas peinlich, nun ja, als ob ich nach Gespenstern jagen w�rde, daher habe ich mich auch noch an niemand anderen damit gewandt.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_13_09"); //K�nntest du vielleicht abends an die H�hle an der Pyramide kommen, um mich bei meinen, �hh, Nachforschungen zu unterst�tzen?

	Info_ClearChoices	(Info_Mod_Ethan_DungeonSounds_01);

	Info_AddChoice	(Info_Mod_Ethan_DungeonSounds_01, "Also wirklich, ich habe besseres zu tun.", Info_Mod_Ethan_DungeonSounds_01_B);
	Info_AddChoice	(Info_Mod_Ethan_DungeonSounds_01, "Selbstverst�ndlich. Dem m�ssen wir auf den Grund gehen.", Info_Mod_Ethan_DungeonSounds_01_A);
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_01_B()
{
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_B_15_00"); //Also wirklich, ich habe besseres zu tun, als der Ursache pl�tzlicher Schl�frigkeit auf den Grund zu gehen.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_B_13_01"); //Ahhm, ja, vielleicht hast du recht.
	
	Info_ClearChoices	(Info_Mod_Ethan_DungeonSounds_01);
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_01_A()
{
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_01_A_15_00"); //Selbstverst�ndlich. Dem m�ssen wir auf den Grund gehen.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_01_A_13_01"); //In Ordnung. Ich werde dann abends vor der H�hle auf dich warten.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_ETHAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_ETHAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_ETHAN, "Ethan vernimmt abends immer sonderbare Ger�usche aus der H�hle bei der Pyramide, schl�ft jedoch immer ein, sobald er sich ihnen n�hrt. Ich soll ihm dabei helfen, der Ursache auf den Grund zu gehen. Er wird abends vor der H�hle auf mich warten.");

	Mod_WM_EthanQuest = 1;
	
	Info_ClearChoices	(Info_Mod_Ethan_DungeonSounds_01);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATDUNGEON");
};

INSTANCE Info_Mod_Ethan_DungeonSounds_02 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_DungeonSounds_02_Condition;
	information	= Info_Mod_Ethan_DungeonSounds_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_DungeonSounds_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_DungeonSounds_01))
	&& (Mod_WM_EthanQuest == 1)
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_RUINS_39") < 500)
	&& (Wld_IsTime(20,00,24,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_02_13_00"); //Da bist du ja. Vernimmst du auch die Ger�usche?
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_02_15_01"); //Ja, tats�chlich ...
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_02_13_02"); //In Ordnung. Ich gehe hinein und du bleibst drau�en um zu sehen, was geschieht.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INDUNGEON");

	Wld_InsertNpc	(Minenzwerg_01, "NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc	(Minenzwerg_02, "NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc	(Minenzwerg_03, "NW_TROLLAREA_RUINS_CAVE_01");
	Wld_InsertNpc	(Minenzwerg_04, "NW_TROLLAREA_RUINS_CAVE_01");
};

INSTANCE Info_Mod_Ethan_DungeonSounds_03 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_DungeonSounds_03_Condition;
	information	= Info_Mod_Ethan_DungeonSounds_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_DungeonSounds_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ethan_DungeonSounds_02))
	&& (Mod_WM_EthanQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_DungeonSounds_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_00"); //Und, was ist vorgefallen?
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_03_15_01"); //Kleine Gestalten liefen mit Spitzhacken durch die H�hle und haben die Felsen bearbeitet.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_02"); //Kleine Gestalten mit Spitzhacken? Hmm, h�rt sich nach Minenzwergen an.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_03"); //Nichts was f�r uns eine Gefahr darstellen k�nnte, sonst w�ren wir ja auch nicht mehr am Leben.
	AI_Output(hero, self, "Info_Mod_Ethan_DungeonSounds_03_15_04"); //Minenzwerge?
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_05"); //Ach, Gesch�pfe die in Ruhe, ungest�rt nachts Mineralien abbauen wollen. Damit w�re dieses R�tsel gel�st.
	AI_Output(self, hero, "Info_Mod_Ethan_DungeonSounds_03_13_06"); //Hab Dank f�r deine Unterst�tzung. Hier, nimm dieses Gold und die Spruchrolle als Entlohnung.

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItSc_IceRAin, 1);

	B_ShowGivenThings	("300 Gold und Spruchrolle erhalten");

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_ETHAN, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_G�ttergefallen(2, 1);
};

INSTANCE Info_Mod_Ethan_Befoerderung (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Befoerderung_Condition;
	information	= Info_Mod_Ethan_Befoerderung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_Befoerderung_Condition()
{
	if (Mod_Gilde == 9)
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_08))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Befoerderung_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_00"); //Wie ich vernommen habe kommst du zu mir, um in den Kreis der Wasserkrieger aufgenommen zu werden.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_01"); //Es freut mich einen tatkr�ftigen Mann wie dich in unseren Reihen zu wissen.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_02"); //So, aber nun zu allererst, leiste das Zeugnis zur Verbundenheit mit dem Wasser und sprich die Worte des Eides:
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_03"); //Ich schw�re bei den M�chten der G�tter ... und bei der Kraft des heiligen Wassers ...
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_15_04"); //Ich schw�re bei den M�chten der G�tter ... und bei der Kraft des heiligen Wassers ...
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_05"); //... dass mein Wissen und Handeln von nun an und auf ewig mit dem Wasser verbunden sei ...
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_15_06"); //... dass mein Wissen und Handeln von nun an und auf ewig mit dem Wasser verbunden sei ...
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_07"); //... bis ich einkehre in Beliars Reich und der Quell des Lebens versiegt.
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_15_08"); //... bis ich einkehre in Beliars Reich und der Quell des Lebens versiegt.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_09"); //Es ist getan. Von nun an wirst du als Krieger des Wassers unserer Gemeinschaft dienen und dem Willen Adanos folgen.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_10"); //Hier, ich �bergebe dir deine R�stung des Wassers und das Schwert eines Kriegers.

	CreateInvItems	(self, ItAr_WKR_H, 1);
	B_GiveInvItems	(self, hero, ItAr_WKR_H, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_WKR_H);

	if (hero.Hitchance[NPC_TALENT_2H] >= hero.Hitchance[NPC_TALENT_1H])
	{
		CreateInvItems	(hero, ItMw_XRSchwert_01, 1);
	}
	else
	{
		CreateInvItems	(hero, ItMw_AdanosSchwert, 1);
	};

	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_11"); //Dar�ber hinaus wird dich diese Rune der Eisklinge im Nahkampf unterst�tzen.

	B_GiveInvItems	(self, hero, ItRu_Eisklinge, 1);

	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_13_12"); //M�ge Adanos dir allzeit bei deinen Pr�fungen beistehen und dich auch weiterhin den Weg des Gleichgewichtes verfolgen lassen.

	Snd_Play ("LEVELUP");
	
	B_GivePlayerXP	(1000);

	Mod_Gilde = 17;

	B_G�ttergefallen(2, 5);
};

INSTANCE Info_Mod_Ethan_Befoerderung_2 (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Befoerderung_2_Condition;
	information	= Info_Mod_Ethan_Befoerderung_2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ethan_Befoerderung_2_Condition()
{
	if (Mod_Gilde == 17)
	&& (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Rasend02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_Befoerderung_2_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_00"); //Ahh, da bist du ja. Ich habe bereits von deinem Verdienst geh�rt und kann Saturas Willen nur voll unterst�tzen.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_01"); //So richte ich die Frage an dich: F�hlst du dich dazu bereit, als H�ter des Wassers Adanos zu dienen?
	AI_Output(hero, self, "Info_Mod_Ethan_Befoerderung_2_15_02"); //Ja, mein Wunsch ist es H�ter des Wassers zu werden.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_03"); //Dann nimm diese R�stung und den Segen Adanos.

	CreateInvItems	(hero, ItAr_Hueter, 1);
	B_ShowGivenThings	("H�terr�stung erhalten");

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Hueter);

	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_04"); //Du wirst auch feststellen, dass du deine Rune der Eisklinge nun noch wirkungsvoller einsetzen kannst.
	AI_Output(self, hero, "Info_Mod_Ethan_Befoerderung_2_13_05"); //M�ge das Gleichgewicht durch dein Wirken auch weiterhin Bestand haben.

	Snd_Play ("LEVELUP");
	
	B_GivePlayerXP	(400);

	Mod_Gilde = 18;

	B_G�ttergefallen(2, 5);
};

INSTANCE Info_Mod_Ethan_Pickpocket (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_Pickpocket_Condition;
	information	= Info_Mod_Ethan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_100;
};

FUNC INT Info_Mod_Ethan_Pickpocket_Condition()
{
	C_Beklauen	(94, ItMi_Gold, 700);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);

	Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_BACK, Info_Mod_Ethan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ethan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ethan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ethan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ethan_Pickpocket);
};

FUNC VOID Info_Mod_Aabid_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

		Info_AddChoice	(Info_Mod_Aabid_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Aabid_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Aabid_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Aabid_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Aabid_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Aabid_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Aabid_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Aabid_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Aabid_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ethan_EXIT (C_INFO)
{
	npc		= Mod_1532_HTR_Ethan_NW;
	nr		= 1;
	condition	= Info_Mod_Ethan_EXIT_Condition;
	information	= Info_Mod_Ethan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ethan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ethan_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Ethan_EXIT_13_00"); //F�r den Kampf um das Gleichgewicht!

	AI_StopProcessInfos	(self);
};