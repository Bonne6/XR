INSTANCE Info_Mod_Martin_Hi (C_INFO)
{
	npc		= Mod_596_MIL_Martin_NW;
	nr		= 1;
	condition	= Info_Mod_Martin_Hi_Condition;
	information	= Info_Mod_Martin_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Martin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Martin_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Martin_Hi_15_00"); //Wer bist du?
	AI_Output(self, hero, "Info_Mod_Martin_Hi_07_01"); //Ich bin Martin, Proviantmeister der Miliz. Was kann ich f�r dich tun?
};

INSTANCE Info_Mod_Martin_Rasend (C_INFO)
{
	npc		= Mod_596_MIL_Martin_NW;
	nr		= 1;
	condition	= Info_Mod_Martin_Rasend_Condition;
	information	= Info_Mod_Martin_Rasend_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Martin_Rasend_Condition()
{
	if (Mod_WM_Rasend == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Martin_Rasend_Info()
{
	AI_Output(self, hero, "Info_Mod_Martin_Rasend_07_00"); //Gut, dass du kommst ...
	AI_Output(hero, self, "Info_Mod_Martin_Rasend_15_01"); //Bei Beliar ... was hat es denn hier f�r ein Massaker gegeben?
	AI_Output(self, hero, "Info_Mod_Martin_Rasend_07_02"); //Ein �bler D�mon ist daf�r verantwortlich.
	AI_Output(hero, self, "Info_Mod_Martin_Rasend_15_03"); //Was?! Ein einziger D�mon hat diese ganzen Paladine und Stadtbewohner get�tet?
	AI_Output(hero, self, "Info_Mod_Martin_Rasend_15_04"); //Wie genau ist das alles vor sich gegangen?
	AI_Output(self, hero, "Info_Mod_Martin_Rasend_07_05"); //Nun, ich  werde dir erz�hlen, was ich bisher mitbekommen habe. Ich war n�mlich gerade am Marktplatz etwas einkaufen.
	AI_Output(self, hero, "Info_Mod_Martin_Rasend_07_06"); //Pl�tzlich h�rte man unmenschliches Br�llen vom Hafen, vernahm, Schreie und Kampfger�usche.
	AI_Output(self, hero, "Info_Mod_Martin_Rasend_07_07"); //Ich lief los, um nachzusehen, aber ehe ich noch ankam, sah ich einen gigantischen D�mon in die H�he steigen, �ber das Osttor fliegen und in der Ferne verschwinden.
	AI_Output(hero, self, "Info_Mod_Martin_Rasend_15_08"); //Ja, das muss wirklich ein Unget�m gewesen sein, so, wie es hier gew�tet hat.
	AI_Output(hero, self, "Info_Mod_Martin_Rasend_15_09"); //Gibt es schon irgendwelche Anhaltspunkte, was es damit auf sich hat, oder wohin der D�mon verschwunden ist?
	AI_Output(self, hero, "Info_Mod_Martin_Rasend_07_10"); //Nein, noch gar nichts. Es ist ja wirklich noch nicht lange her, dass das alles geschehen ist ...
	AI_Output(self, hero, "Info_Mod_Martin_Rasend_07_11"); //Ich habe aber jemanden davon sprechen h�ren, dass der Feuermagier Daron �beraus beunruhigt schien und sich weg teleportierte ...
	AI_Output(self, hero, "Info_Mod_Martin_Rasend_07_12"); //(zu sich selbst) Hmm, genau im Osten liegt ja das Kloster der Feuermagier.
	AI_Output(hero, self, "Info_Mod_Martin_Rasend_15_13"); //Ok, danke f�r die Informationen. Ich mache mich dann auf den Weg, um vielleicht mehr �ber das alles zu Erfahren.
	AI_Output(self, hero, "Info_Mod_Martin_Rasend_07_14"); //Ok, pass auf dich auf.

	Log_CreateTopic	(TOPIC_MOD_ADANOS_RASEND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_RASEND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Beim Hafen der Stadt ist etwas Schreckliches vorgefallen.");
	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Ich erfuhr von Martin, dass ein riesiger D�mon die ganzen Paladine am Hafen abgeschlachtet hat und danach nach Osten hin verschwand. Der Feuermagier Daron teleportierte sich anschlie�end sehr beunruhigt weg.");

	B_StartOtherRoutine	(Mod_523_KDF_Daron_NW, "LIFEKLOSTER");

	B_KillNpc	(Mod_1193_NOV_Novize_NW);
	B_KillNpc	(Mod_554_KDF_Parlan_NW);
};

INSTANCE Info_Mod_Martin_Flugbl�tter (C_INFO)
{
	npc		= Mod_596_MIL_Martin_NW;
	nr		= 1;
	condition	= Info_Mod_Martin_Flugbl�tter_Condition;
	information	= Info_Mod_Martin_Flugbl�tter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab hier ein Flugblatt f�r dich.";
};

FUNC INT Info_Mod_Martin_Flugbl�tter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugbl�tter) >= 1)
	&& (Mod_Flugbl�tter	<	20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugbl�tter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Martin_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Martin_Flugbl�tter_Info()
{
	AI_Output(hero, self, "Info_Mod_Martin_Flugbl�tter_15_00"); //Ich hab hier ein Flugblatt f�r dich.

	B_GiveInvItems	(hero, self, MatteoFlugbl�tter, 1);

	AI_Output(self, hero, "Info_Mod_Martin_Flugbl�tter_07_01"); //Oh danke. Mal sehen ...

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Martin_Flugbl�tter_07_02"); //Ah ja. Vielleicht werd ich mal bei Matteo vorbeischauen.

	Mod_Flugbl�tter	=	Mod_Flugbl�tter + 1;
};

INSTANCE Info_Mod_Martin_Trade (C_INFO)
{
	npc		= Mod_596_MIL_Martin_NW;
	nr		= 1;
	condition	= Info_Mod_Martin_Trade_Condition;
	information	= Info_Mod_Martin_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Martin_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Martin_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Martin_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Martin_Pickpocket (C_INFO)
{
	npc		= Mod_596_MIL_Martin_NW;
	nr		= 1;
	condition	= Info_Mod_Martin_Pickpocket_Condition;
	information	= Info_Mod_Martin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Martin_Pickpocket_Condition()
{
	C_Beklauen	(60, ItMi_Gold, 200);
};

FUNC VOID Info_Mod_Martin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Martin_Pickpocket);

	Info_AddChoice	(Info_Mod_Martin_Pickpocket, DIALOG_BACK, Info_Mod_Martin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Martin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Martin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Martin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Martin_Pickpocket);
};

FUNC VOID Info_Mod_Martin_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Martin_Pickpocket);
};

INSTANCE Info_Mod_Martin_EXIT (C_INFO)
{
	npc		= Mod_596_MIL_Martin_NW;
	nr		= 1;
	condition	= Info_Mod_Martin_EXIT_Condition;
	information	= Info_Mod_Martin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Martin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Martin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};