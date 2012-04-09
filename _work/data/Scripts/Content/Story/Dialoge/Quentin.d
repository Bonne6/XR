INSTANCE Info_Mod_Quentin_Hi (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_Hi_Condition;
	information	= Info_Mod_Quentin_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Quentin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Quentin_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Quentin_Hi_07_01"); //Ich bin Quentin.
};

INSTANCE Info_Mod_Quentin_AmulettWeg (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_AmulettWeg_Condition;
	information	= Info_Mod_Quentin_AmulettWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich soll im alten Lager versuchen, wieder an das Amulett zu kommen.";
};

FUNC INT Info_Mod_Quentin_AmulettWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Quentin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dexter_TimeOver))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dexter_AmulettBack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Quentin_AmulettWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Quentin_AmulettWeg_15_00"); //Ich soll im alten Lager versuchen, wieder an das Amulett zu kommen.

	if (Kapitel < 4)
	{
		AI_Output(hero, self, "Info_Mod_Quentin_AmulettWeg_15_01"); //Kannst du mir irgendetwas �ber Sabitsch sagen, was mir weiterhelfen k�nnte?
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_02"); //(missmutig) Ich wei�, ich habe da verdammte Schei�e gebaut, was ich schwer wieder gut machen kann.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_03"); //Aber ich werde zumindest versuchen, dir m�glichst gute Auskunft �ber Sabitsch zu geben, auch wenn du das meiste wohl bereits von Dexter erfahren hast.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_04"); //Also, dieser Sabitsch ist ein unglaublich schneller und schlagkr�ftiger K�mpfer, wie ich es noch nie erlebt habe. Er schwingt seine Axt, als es ein Degen.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_05"); //Nimm es nicht pers�nlich, wenn ich anzweifele, dass du eine Chance gegen ihn im Kampf h�ttest.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_06"); //Aber ich bin ein guter K�mpfer und konnte doch nicht l�nger als wenige Sekunden gegen ihn bestehen.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_07"); //Hmm, da f�llt mir noch ein, dass er wohl eine Vorliebe f�r Ringe und Amulette hat.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_08"); //Er tr�gt einiges davon am K�rper und hat schon gierig nach meinem Amulett geschaut, bevor er �berhaupt von den magischen Eigenschaften wissen konnte.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_09"); //Mehr f�llt mir leider nicht dazu ein. Ich kann dir aber noch diese Spruchrollen geben, die ich mal einem H�ndler am Marktplatz in Khorinis abgenommen habe.

		CreateInvItems	(hero, ItSc_IceCube, 1);
		CreateInvItems	(hero, ItSc_Charm, 1);

		B_ShowGivenThings	("2 Spruchrolle erhalten");

		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_10"); //Ich hoffe, ich konnte dir damit zumindest etwas weiterhelfen.

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Von Quentin habe ich erfahren, dass er au�er seinem Geschick im Kampf eine Vorliebe f�r Schmuck hat. Ob mir das weiterhilft?");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_11"); //(missmutig) Ich wei�, ich habe da verdammte Schei�e gebaut, was ich schwer wieder gut machen kann.
		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_12"); //Aber ich werde es zumindest versuchen. Hier, ich kann dir diese Spruchrollen geben, die ich mal einem H�ndler am Marktplatz in Khorinis abgenommen habe.

		B_ShowGivenThings	("2 Spruchrolle erhalten");

		AI_Output(self, hero, "Info_Mod_Quentin_AmulettWeg_07_13"); //Die k�nnten dir entscheidend weiterhelfen. Viel Gl�ck.
		AI_Output(hero, self, "Info_Mod_Quentin_AmulettWeg_15_14"); //Ja, kann ich brauchen.

		CreateInvItems	(hero, ItSc_TrfRabbit, 2);

		B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Von Quentin habe ich Verwandlungsspruchrollen erhalten.");
	};
};

INSTANCE Info_Mod_Quentin_Pickpocket (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_Pickpocket_Condition;
	information	= Info_Mod_Quentin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Quentin_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);

	Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_BACK, Info_Mod_Quentin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Quentin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Quentin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);
};

FUNC VOID Info_Mod_Quentin_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Quentin_Pickpocket);
};

INSTANCE Info_Mod_Quentin_EXIT (C_INFO)
{
	npc		= Mod_7023_BDT_Quentin_MT;
	nr		= 1;
	condition	= Info_Mod_Quentin_EXIT_Condition;
	information	= Info_Mod_Quentin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Quentin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Quentin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};