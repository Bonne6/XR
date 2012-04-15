INSTANCE Info_Mod_Kyle_Hi (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_Hi_Condition;
	information	= Info_Mod_Kyle_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kyle! Wie geht's, alter Kumpel?";
};

FUNC INT Info_Mod_Kyle_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kyle_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_Hi_15_00"); //Kyle! Wie geht's, alter Kumpel?
	AI_Output(self, hero, "Info_Mod_Kyle_Hi_10_01"); //Wie's mir geht? Absolut beschissen! Von morgens bis abends schufte ich mir den Buckel krumm, und wir haben noch nicht ein Mal was Genie�bares geerntet.
};

INSTANCE Info_Mod_Kyle_WarumArbeit (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_WarumArbeit_Condition;
	information	= Info_Mod_Kyle_WarumArbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wieso arbeitest du so viel? Passt doch gar nicht zu dir.";
};

FUNC INT Info_Mod_Kyle_WarumArbeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kyle_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_WarumArbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_WarumArbeit_15_00"); //Wieso arbeitest du so viel? Passt doch gar nicht zu dir.
	AI_Output(self, hero, "Info_Mod_Kyle_WarumArbeit_10_01"); //Halt dein Maul. Thorus meint, dass er mich dadurch klein kriegt. Aber damit hat er sich geschnitten.
	AI_Output(self, hero, "Info_Mod_Kyle_WarumArbeit_10_02"); //Wird sich schon noch zeigen, ob es so eine gute Idee war, mich so nah an seinem Thron arbeiten zu lassen ...
};

INSTANCE Info_Mod_Kyle_SchatzImSchlammsee (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_SchatzImSchlammsee_Condition;
	information	= Info_Mod_Kyle_SchatzImSchlammsee_Info;
	permanent	= 0;
	important	= 0;
	description	= "H�r mal. Diese Sache mit dem Schatz ...";
};

FUNC INT Info_Mod_Kyle_SchatzImSchlammsee_Condition()
{
	if (Mod_Gravo_Schatz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_SchatzImSchlammsee_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_SchatzImSchlammsee_15_00"); //H�r mal. Diese Sache mit dem Schatz ...
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_10_01"); //(schnauzt) Den gibt's nicht, das sollte doch klar sein!
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_10_02"); //Das hab ich Gravo nur gefl�stert, damit er was zu tun hat und nicht tausend Mal pro Tag durch meine H�tte rennt.
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_10_03"); //Den anderen konnte ich das ja verklickern, aber bei Gravo hat's nichts geholfen, dass ich meinen Nachttopf in die eine T�r gestellt hab.
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_10_04"); //Soll er jetzt sch�n lange nach irgendwas buddeln. Wer wei�, vielleicht findet er ja irgendwann 'ne Wasserader!

	B_LogEntry	(TOPIC_MOD_GRAVO_SCHATZ, "Kyle hat sich den Schatz ausgedacht, um Gravo loszuwerden.");
};

INSTANCE Info_Mod_Kyle_Lagermusik (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_Lagermusik_Condition;
	information	= Info_Mod_Kyle_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gravo hat wirklich etwas gefunden. An der Stelle, zu der du ihn geschickt hast.";
};

FUNC INT Info_Mod_Kyle_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_Lagermusik_15_00"); //Gravo hat wirklich etwas gefunden. An der Stelle, zu der du ihn geschickt hast.
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_10_01"); //(verdutzt) Ne alte M�nze oder was?
	AI_Output(hero, self, "Info_Mod_Kyle_Lagermusik_15_02"); //Nein. Garaz und Pacho haben ihre Musikinstrumente dort gelagert.
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_10_03"); //(verbl�fft) Vielleicht sollte ich als Wahrsager arbeiten?
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_10_04"); //Hier mal meine n�chste Voraussage: Gravo wird wieder wie fr�her tagt�glich durch meine H�tte latschen.
	AI_Output(hero, self, "Info_Mod_Kyle_Lagermusik_15_05"); //Glaube ich kaum. Er will jetzt aufs Musikmachen umsteigen.
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_10_06"); //Ja? Das w�re ja wirklich fantastisch. Hoffentlich sch�n weit weg von mir.
};

INSTANCE Info_Mod_Kyle_KGBuddler (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_KGBuddler_Condition;
	information	= Info_Mod_Kyle_KGBuddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Willst du wieder als Buddler arbeiten?";
};

FUNC INT Info_Mod_Kyle_KGBuddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_KGBuddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_KGBuddler_15_00"); //Willst du wieder als Buddler arbeiten?
	AI_Output(self, hero, "Info_Mod_Kyle_KGBuddler_10_01"); //H�r blo� auf! Diese ewige Plackerei in der alten Mine war furchtbar.
	AI_Output(self, hero, "Info_Mod_Kyle_KGBuddler_10_02"); //Dagegen ist die Feldarbeit die reinste Erholung.
};

INSTANCE Info_Mod_Kyle_Pickpocket (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_Pickpocket_Condition;
	information	= Info_Mod_Kyle_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Kyle_Pickpocket_Condition()
{
	C_Beklauen	(43, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

	Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_BACK, Info_Mod_Kyle_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Kyle_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);
};

INSTANCE Info_Mod_Kyle_EXIT (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_EXIT_Condition;
	information	= Info_Mod_Kyle_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kyle_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kyle_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};