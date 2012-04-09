INSTANCE Info_Mod_Bernd_Hi (C_INFO)
{
	npc		= Mod_1012_KGD_Bernd_MT;
	nr		= 1;
	condition	= Info_Mod_Bernd_Hi_Condition;
	information	= Info_Mod_Bernd_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lass mich raten: Du bist hier der Kerl (...)";
};

FUNC INT Info_Mod_Bernd_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bernd_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bernd_Hi_15_00"); //Lass mich raten: Du bist hier der Kerl, bei dem ich alles f�rs Minental bekomme.
	AI_Output(self, hero, "Info_Mod_Bernd_Hi_01_01"); //(ironisch) Ich wusste es, der Stand ist einfach zu auff�llig.
	AI_Output(self, hero, "Info_Mod_Bernd_Hi_01_02"); //Aber du hast recht, bei mir bekommst du sogut wie alles, was du f�r einen Rundgang im Minental brauchst.
	AI_Output(hero, self, "Info_Mod_Bernd_Hi_15_03"); //Was soll das hei�en "sogut wie alles"?
	AI_Output(self, hero, "Info_Mod_Bernd_Hi_01_04"); //Vielleicht ist es dir noch nicht aufgefallen, aber unsere Mine ist noch nicht sonderlich wirtschaftlich und dehalb habe ich leider noch keine Erzwaffen im Angebot.
	AI_Output(self, hero, "Info_Mod_Bernd_Hi_01_05"); //Ansonsten d�rfte ich aber alles haben, was du brauchst.

	Log_CreateTopic	(TOPIC_MOD_HAENDLER_KG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_KG, "Bernd handelt mit allen m�glichen Dingen.");
};

INSTANCE Info_Mod_Bernd_InGilde (C_INFO)
{
	npc		= Mod_1012_KGD_Bernd_MT;
	nr		= 1;
	condition	= Info_Mod_Bernd_InGilde_Condition;
	information	= Info_Mod_Bernd_InGilde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bernd_InGilde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bernd_Hi))
	&& (KG_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bernd_InGilde_Info()
{
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_00"); //Geh�rst jetzt auch zu uns?! Ich geb dir einen Tipp: Egal was f�r Reicht�mer sie dir versprechen, geh nicht in die Mine.
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_01"); //Dort unten lauern Viecher, die du lieber nicht st�ren willst, und damit meine ich nicht die Steinmonster.
	AI_Output(hero, self, "Info_Mod_Bernd_InGilde_15_02"); //Woher wei�t du das, warst du schon mal in der Mine?!
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_03"); //Nat�rlich waren wir schon drin und ich sag dir: Da bekommen mich keine zwanzig Orks mehr rein!
	AI_Output(hero, self, "Info_Mod_Bernd_InGilde_15_04"); //Was ist denn dort unten passiert?
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_05"); //Damals hatten wir gerade den Eingang zur Mine freigelegt.
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_06"); //Wir hatten uns schon gewundert, warum eigentlich nur der Eingang versch�ttet war.
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_07"); //Und als wir dann Schluss endlich in der Mine waren, sah sie v�llig anders aus als auf den alten Karten.
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_08"); //Na ja, das war eigentlich nicht das Problem, wir konnten gut in die Mine vorsto�en und waren uns sogar fast sicher, dass es dort keine Monster mehr gibt.
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_09"); //Als wir allerdings einen etwas gr��eren Raum betraten, der anscheinend noch ein �berbleibsel der fr�heren Mine war, kam uns eine ganze Horde dieser Steinmonster entgegen.
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_10"); //Ich war damals der einzige �berlebende, und das nur, weil ich die Beine in die Hand genommen habe.
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_11"); //Ich will jetzt keine Vermutungen anstellen, aber f�r mich sah es so aus, als w�ren die Steinmonster auch auf der Flucht gewesen, und egal vor was sie geflohen sind, ich will es nicht treffen.
	AI_Output(hero, self, "Info_Mod_Bernd_InGilde_15_12"); //Wir werden sehen, vielleicht finden wir bald eine Erkl�rung f�r diese ganzen Geschehnisse.
	AI_Output(self, hero, "Info_Mod_Bernd_InGilde_01_13"); //Wenn du meinst, ich an deiner Stelle w�rde die Finger davon lassen.
};

INSTANCE Info_Mod_Bernd_Trade (C_INFO)
{
	npc		= Mod_1012_KGD_Bernd_MT;
	nr		= 1;
	condition	= Info_Mod_Bernd_Trade_Condition;
	information	= Info_Mod_Bernd_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Bernd_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bernd_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bernd_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Bernd_Pickpocket (C_INFO)
{
	npc		= Mod_1012_KGD_Bernd_MT;
	nr		= 1;
	condition	= Info_Mod_Bernd_Pickpocket_Condition;
	information	= Info_Mod_Bernd_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Bernd_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 1000);
};

FUNC VOID Info_Mod_Bernd_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bernd_Pickpocket);

	Info_AddChoice	(Info_Mod_Bernd_Pickpocket, DIALOG_BACK, Info_Mod_Bernd_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bernd_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bernd_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bernd_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bernd_Pickpocket);
};

FUNC VOID Info_Mod_Bernd_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Bernd_Pickpocket);
};

INSTANCE Info_Mod_Bernd_EXIT (C_INFO)
{
	npc		= Mod_1012_KGD_Bernd_MT;
	nr		= 1;
	condition	= Info_Mod_Bernd_EXIT_Condition;
	information	= Info_Mod_Bernd_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bernd_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bernd_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};