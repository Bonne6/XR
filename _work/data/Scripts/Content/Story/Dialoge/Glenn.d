INSTANCE Info_Mod_Glenn_Nahrungsversorgung (C_INFO)
{
	npc		= Mod_7493_OUT_Glenn_NW;
	nr		= 1;
	condition	= Info_Mod_Glenn_Nahrungsversorgung_Condition;
	information	= Info_Mod_Glenn_Nahrungsversorgung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du siehst aus, als k�nntest du einen Job und ein ordentliches Bad vertragen.";
};

FUNC INT Info_Mod_Glenn_Nahrungsversorgung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Glenn_Nahrungsversorgung_Info()
{
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_00"); //Du siehst aus, als k�nntest du einen Job und ein ordentliches Bad vertragen.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_01"); //Was soll man machen, nicht mal im Hafen bekommt man noch einen Job als Koch.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_02"); //Ich w�rde sogar f�r die Ratten kochen, wenn ich daf�r Gold sehen w�rde.
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_03"); //Ich br�uchte einen Koch. Was sagst du, wenn ich dir 150 Gold im voraus geben w�rde?
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_04"); //Das h�rt sich gut an, allerdings br�uchte ich daf�r dann noch einen Kochl�ffel.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_05"); //Allerdings nicht so einen billigen, wie die, die auf dem Markt verkauft werden. Ich koche nur mit meinem.
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_06"); //Und wo soll der sein?
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_07"); //Ich vermute mal, dass er mir beim Kampf mit ein paar Feldr�ubern verloren gegangen ist.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_08"); //Das war in n�rdlicher Richtung auf dem Berg direkt vor dem Stadttor.
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_09"); //Na, wenn du den unbedingt brauchst, werde ich ihn schon f�r dich finden.

	B_LogEntry	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, "Glenn w�rde als Koch mitkommen, will daf�r allerdings seinen eigenen Kochl�ffel. Den hat er wohl auf dem Berg n�rdlich vom Osttor verloren.");

	Wld_InsertItem	(ItMi_Scoop_Glenn, "FP_ITEM_KOCHLOEFFEL_GLENN");

	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_01");
	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_02");
	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_03");
	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_04");
};

INSTANCE Info_Mod_Glenn_Nahrungsversorgung2 (C_INFO)
{
	npc		= Mod_7493_OUT_Glenn_NW;
	nr		= 1;
	condition	= Info_Mod_Glenn_Nahrungsversorgung2_Condition;
	information	= Info_Mod_Glenn_Nahrungsversorgung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier hast du deinen Kochl�ffel und 150 Goldm�nzen.";
};

FUNC INT Info_Mod_Glenn_Nahrungsversorgung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Glenn_Nahrungsversorgung))
	&& (Npc_HasItems(hero, ItMi_Scoop_Glenn) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Glenn_Nahrungsversorgung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung2_15_00"); //Hier hast du deinen Kochl�ffel und 150 Goldm�nzen. Arbeitest du jetzt f�r mich?

	Npc_RemoveInvItems	(hero, ItMi_Gold, 150);
	Npc_RemoveInvItems	(hero, ItMi_Scoop_Glenn, 1);

	B_ShowGivenThings	("150 Gold und Glenns Kochl�ffel gegeben");

	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung2_06_01"); //Nat�rlich, wo soll ich f�r dich Kochen?
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung2_15_02"); //Geh ins Minental und warte vor dem Eingang der verlassenen Mine auf mich.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung2_06_03"); //Ok, dann mach ich mich mal auf den Weg.

	B_LogEntry	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, "Glenn macht sich auf den Weg zur verlassenen Mine.");

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Glenn_EXIT (C_INFO)
{
	npc		= Mod_7493_OUT_Glenn_NW;
	nr		= 1;
	condition	= Info_Mod_Glenn_EXIT_Condition;
	information	= Info_Mod_Glenn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Glenn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Glenn_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};