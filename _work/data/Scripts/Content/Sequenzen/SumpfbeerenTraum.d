var int Mod_SumpfbeerenTraum_Counter;

FUNC VOID SumpfbeerenTraum()
{
	if (Mod_SumpfbeerenTraum_Counter == 0)
	{
		Wld_InsertNpc	(Mod_7652_OUT_Fremder_REL,	"REL_MOOR_171");

		AI_PlayAni	(hero, "T_STAND_2_VICTIM_SLE");

		CutsceneAn = TRUE;
	};

	if (Mod_SumpfbeerenTraum_Counter == 2)
	{
		Wld_SendTrigger	("EVT_MOOR_SUMPFBEERENTRAUM");
	};

	if (Mod_SumpfbeerenTraum_Counter == 4)
	{
		AI_Output(Mod_7652_OUT_Fremder_REL, NULL, "Info_Mod_Fremder_SumpfbeerenTraum_13_00"); //Tief im Inneren des Verfluchten gefangen. Auf Befreiung, Erl�sung warte ich seit �onen.
	};

	if (Mod_SumpfbeerenTraum_Counter == 10)
	{
		AI_Output(Mod_7652_OUT_Fremder_REL, NULL, "Info_Mod_Fremder_SumpfbeerenTraum_13_01"); //Klirrendes Metall bringt jedoch den Tod.
	};

	if (Mod_SumpfbeerenTraum_Counter == 16)
	{
		AI_Output(Mod_7652_OUT_Fremder_REL, NULL, "Info_Mod_Fremder_SumpfbeerenTraum_13_02"); //Erl�sung bringt jenes, was der Brust des Moores entrissen wurde ... l�scht aus den d�monischen Leib, der mein Gef�ngnis.
	};

	if (Mod_SumpfbeerenTraum_Counter == 22)
	{
		Wld_SendUnTrigger	("EVT_MOOR_SUMPFBEERENTRAUM");

		Mod_SumpfbeerenTraum = 2;

		B_GivePlayerXP	(200);

		CutsceneAn = FALSE;

		Log_CreateTopic	(TOPIC_MOD_MOOR, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_MOOR, "Tief im Inneren des Verfluchten gefangen. Auf Befreiung, Erl�sung warte ich seit �onen. Klirrendes Metall bringt jedoch den Tod. Erl�sung bringt jenes, was der Brust des Moores entrissen wurde ... l�scht aus den d�monischen Leib, der mein Gef�ngnis.");

		AI_PlayAni	(hero, "T_VICTIM_SLE_2_STAND");
	};

	Mod_SumpfbeerenTraum_Counter += 1;
};