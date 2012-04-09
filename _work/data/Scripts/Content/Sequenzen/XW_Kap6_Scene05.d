var int Mod_XW_Kap6_Scene05_Counter;

FUNC VOID XW_Kap6_Scene05()
{
	if (Mod_XW_Kap6_Scene05_Counter == 0)
	{
		AI_Teleport	(hero, "ARENA_01");
	};

	if (Mod_XW_Kap6_Scene05_Counter == 1)
	{
		Wld_SendTrigger	("KAP6SCENE01A");

		CutsceneAn = TRUE;
	};

	if (Mod_XW_Kap6_Scene05_Counter == 3)
	{
		AI_PlayAni	(Xeres_02, "t_MagRun_2_FeaShoot");
	};

	if (Mod_XW_Kap6_Scene05_Counter == 8)
	{
		AI_PlayAni	(Xeres_02, "t_FeaShoot_2_Stand");

		AI_Teleport	(Monster_11074_Leprechaun_XW, "ARENA_02");
		B_StartOtherRoutine	(Monster_11074_Leprechaun_XW, "ARENA");
	};

	if (Mod_XW_Kap6_Scene05_Counter == 10)
	{
		Monster_11074_Leprechaun_XW.attribute[ATR_HITPOINTS] = 0;

		AI_PlayAni	(Monster_11074_Leprechaun_XW, "T_DEAD");
	};

	if (Mod_XW_Kap6_Scene05_Counter == 13)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene05_14_00"); //(stutzt) Leprechaun? Leprechaun?
	};

	if (Mod_XW_Kap6_Scene05_Counter == 19)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_XW_Kap6_Scene05_15_01"); //Absicht oder Versehen?
	};

	if (Mod_XW_Kap6_Scene05_Counter == 25)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene05_14_02"); //Wie konnte er aus dem Gef�ngnis kommen, in das ich ihn gesteckt hatte?
	};

	if (Mod_XW_Kap6_Scene05_Counter == 31)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_XW_Kap6_Scene05_15_03"); //Du hast deinen eigenen Diener eingesperrt?
	};

	if (Mod_XW_Kap6_Scene05_Counter == 37)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene05_14_04"); //Er war verantwortlich daf�r, dass du fliehen konntest. Das musste bestraft werden.
	};

	if (Mod_XW_Kap6_Scene05_Counter == 43)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene05_14_05"); //Aber auch ich habe meine milde Seite. Ich h�tte ihn schon nach 50 Jahren wieder herausgelassen ... wenn er dann noch gelebt h�tte.
	};

	if (Mod_XW_Kap6_Scene05_Counter == 49)
	{
		Mod_XW_Kap6 = 8;

		Wld_SendUnTrigger	("KAP6SCENE01A");

		Mod_Xeres_Kampfphase = 1;

		B_Attack	(Xeres_02, hero, AR_NONE, 0);

		CutsceneAn = FALSE;
	};

	Mod_XW_Kap6_Scene05_Counter += 1;
};