FUNC VOID EVT_SchafshirteF�rBalthasar()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Bereit))
	&& (Mod_BalthasarsW�lfe == 0)
	{
		Wld_InsertNpc	(Balthi_YWolf1, "FARM4");
		Wld_InsertNpc	(Balthi_YWolf2, "FARM4");
		Wld_InsertNpc	(Balthi_YWolf3, "FARM4");

		Mod_BalthasarsW�lfe = 1;
	};
};