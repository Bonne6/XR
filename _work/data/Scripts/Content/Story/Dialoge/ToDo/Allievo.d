INSTANCE Info_Mod_Allievo_Hi (C_INFO)
{
	npc		= Mod_7033_OUT_Allievo_NW;
	nr		= 1;
	condition	= Info_Mod_Allievo_Hi_Condition;
	information	= Info_Mod_Allievo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Allievo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Allievo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_07_00"); //(k�hn) Was willst du von mir?

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Falsche Frage. Was wollt ihr von mir?", Info_Mod_Allievo_Hi_B);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Bist du etwa ganz allein?", Info_Mod_Allievo_Hi_A);
};

FUNC VOID Info_Mod_Allievo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_B_15_00"); //Falsche Frage. Was wollt ihr von mir?
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_B_07_01"); //(erkennend) Ahh... Mein Meister versprach mir, dass ich mit dir machen k�nnte, was ich wollte.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_B_07_02"); //Ungl�cklicherweise bin ich gerade allein ...

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Wer ist denn normalerweise sonst noch hier?", Info_Mod_Allievo_Hi_D);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Was f�r ein begr��enswerter Zufall, dass du allein bist. Jetzt bist du f�llig!", Info_Mod_Allievo_Hi_C);
};

FUNC VOID Info_Mod_Allievo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_A_15_00"); //Bist du etwa ganz allein?
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_A_07_01"); //Jetzt vielleicht schon, aber jeden Moment kommen meine Freunde zur�ck. Wart's nur ab!

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Wer ist denn normalerweise sonst noch hier?", Info_Mod_Allievo_Hi_D);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Was f�r ein begr��enswerter Zufall, dass du allein bist. Jetzt bist du f�llig!", Info_Mod_Allievo_Hi_C);
};

FUNC VOID Info_Mod_Allievo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_D_15_00"); //Wer ist denn normalerweise sonst noch hier?
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_D_07_01"); //(redselig) Der Bruno, unser stiernackiger Tagedieb, und der gerissene Grima. Beides ausgezeichnete Leute.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_D_07_02"); //�h ... (Nachdenkpause) Sie sind gerade unterwegs, aber es wird noch gaaanz lange dauern, bis sie wieder hier sind.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_D_07_03"); //Bis dahin sollte ich ein paar Pflanzen sammeln gehen, naja, du wei�t schon, Heilkr�uter und so einen Kram, was man halt so gebrauchen kann. (langgezogenes, m�hsames Lachen)

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	Info_AddChoice	(Info_Mod_Allievo_Hi, "Wenn du schon so gern redest: Erz�hl mir etwas �ber Canthar.", Info_Mod_Allievo_Hi_F);
	Info_AddChoice	(Info_Mod_Allievo_Hi, "Genug! Du wirst f�r Canthar' Taten leiden!", Info_Mod_Allievo_Hi_E);
};

FUNC VOID Info_Mod_Allievo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_C_15_00"); //Was f�r ein begr��enswerter Zufall, dass du allein bist. Jetzt bist du f�llig!
	AI_Output(self, hero, "DEFAULT"); //
	
	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Allievo_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_F_15_00"); //Wenn du schon so gern redest: Erz�hl mir etwas �ber Canthar.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_01"); //Wo soll ich anfangen? Also, er spricht im Schlaf. Deshalb wei� ich, dass er auf Sonja steht.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_02"); //Und er behauptet manchmal, sein Ziel sei es, die Weltherrschaft zu erringen.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_03"); //Aber das glaube ich nicht, was soll man schlie�lich damit? Ist doch nur zus�tzlicher �rger.
	AI_Output(self, hero, "Info_Mod_Allievo_Hi_F_07_04"); //�h ... (laut) Bruno, Grima, fasst ihn!

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	Mod_Allievo_Zusatzpower = 1;

	Wld_InsertNpc	(Mod_7034_OUT_Bruno_NW, "WAY_PASS_MILL_04");
	Wld_InsertNpc	(Mod_7035_OUT_Grima_NW, "WAY_PASS_MILL_04");
};

FUNC VOID Info_Mod_Allievo_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Allievo_Hi_E_15_00"); //Genug! Du wirst f�r Canthars Taten leiden!

	Info_ClearChoices	(Info_Mod_Allievo_Hi);

	AI_StopProcessInfos	(self);
};