INSTANCE Info_Mod_Bosper_Hi (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Hi_Condition;
	information	= Info_Mod_Bosper_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bosper_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bosper_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bosper_Hi_11_00"); //(unfreundlich) Hey! Was willst du hier?
};

INSTANCE Info_Mod_Bosper_HandelstDu (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_HandelstDu_Condition;
	information	= Info_Mod_Bosper_HandelstDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Handelst du?";
};

FUNC INT Info_Mod_Bosper_HandelstDu_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bosper_HandelstDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_HandelstDu_15_00"); //Handelst du?
	AI_Output(self, hero, "Info_Mod_Bosper_HandelstDu_11_01"); //Ja, aber nicht mit dir. Du bist einer dieser Kolonietypen. Ich vertraue euch nicht.
};

INSTANCE Info_Mod_Bosper_WiesoMisstrauen (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_WiesoMisstrauen_Condition;
	information	= Info_Mod_Bosper_WiesoMisstrauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wieso traust du mir nicht?";
};

FUNC INT Info_Mod_Bosper_WiesoMisstrauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_HandelstDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_WiesoMisstrauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_WiesoMisstrauen_15_00"); //Wieso traust du mir nicht?
	AI_Output(self, hero, "Info_Mod_Bosper_WiesoMisstrauen_11_01"); //Na, du wirst doch nicht ganz grundlos in die Barriere geworfen worden sein.
	AI_Output(self, hero, "Info_Mod_Bosper_WiesoMisstrauen_11_02"); //Mein Gesch�ft l�uft gut genug, dass ich mich nicht mit Gesindel abgeben muss.
};

INSTANCE Info_Mod_Bosper_Lehrling (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Lehrling_Condition;
	information	= Info_Mod_Bosper_Lehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich m�chte B�rger der Stadt werden.";
};

FUNC INT Info_Mod_Bosper_Lehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Lehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Lehrling_15_00"); //Ich m�chte B�rger der Stadt werden.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_01"); //Das kann ich mir vorstellen. Aber ich kann mir nicht vorstellen, dass du dazu w�rdig bist.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_02"); //Dazu m�sste ich dir vertrauen.
	AI_Output(hero, self, "Info_Mod_Bosper_Lehrling_15_03"); //Was kann ich tun, damit du mir vertraust?
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_04"); //Bring mir acht Wolfsfelle.
	AI_Output(hero, self, "Info_Mod_Bosper_Lehrling_15_05"); //(lacht) Vertraust du allen Leuten, die dir acht Wolfsfelle geben?
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_06"); //Nein, das soll dich nur eine Weile von mir fern halten.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_07"); //Ich werde mich so lange umh�ren, was die anderen Meister zu dir zu sagen haben.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_08"); //Abgesehen davon kann ich die Felle momentan gut gebrauchen.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_09"); //Der S�ldner Wolf hat mir gerade erst meinen ganzen Bestand abgekauft.
	AI_Output(self, hero, "Info_Mod_Bosper_Lehrling_11_10"); //Wahrscheinlich brauchen die Tagediebe auf Onars Hof eine Besch�ftigung, bevor sie noch anfangen, auf dumme Ideen zu kommen ...

	Log_CreateTopic	(TOPIC_MOD_BOSPERSFELLE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BOSPERSFELLE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BOSPERSFELLE, "Um Bospers Zustimmung zu erhalten soll ich ihm acht Wolfsfelle bringen.");
};

INSTANCE Info_Mod_Bosper_DeinLehrling (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_DeinLehrling_Condition;
	information	= Info_Mod_Bosper_DeinLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "W�rdest du mich als Lehrling aufnehmen?";
};

FUNC INT Info_Mod_Bosper_DeinLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Matteo_OberesViertel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_DeinLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_DeinLehrling_15_00"); //W�rdest du mich als Lehrling aufnehmen?
	AI_Output(self, hero, "Info_Mod_Bosper_DeinLehrling_11_01"); //Nein. Abgesehen davon m�sstest du erst B�rger der Stadt sein, um als Lehrling aufgenommen werden zu k�nnen.
};

INSTANCE Info_Mod_Bosper_Fell (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Fell_Condition;
	information	= Info_Mod_Bosper_Fell_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer kann mir beibringen wie ich Tieren das Fell abziehe?";
};

FUNC INT Info_Mod_Bosper_Fell_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Lehrling))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Fell_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Fell_15_00"); //Wer kann mir beibringen wie ich Tieren das Fell abziehe?
	AI_Output(self, hero, "Info_Mod_Bosper_Fell_11_01"); //Ich kann dir beibringen wie man das Tieren das Fell abzieht.
};

INSTANCE Info_Mod_Bosper_FellLernen (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_FellLernen_Condition;
	information	= Info_Mod_Bosper_FellLernen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("Felle abziehen", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur));
};

FUNC INT Info_Mod_Bosper_FellLernen_Condition()
{
	Info_Mod_Bosper_FellLernen.description = B_BuildLearnString("Felle abziehen", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur));

	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Fell))
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_FellLernen_Info()
{
	AI_Output (hero, self, "Info_Mod_Bosper_FellLernen_15_00"); //Bring mir bei, wie man Tieren das Fell abzieht!

	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_Fur))
	{
		AI_Output (self, other, "Info_Mod_Bosper_FellLernen_11_01"); //Gut. H�r zu. Es ist im Grunde ganz einfach.
		AI_Output (self, other, "Info_Mod_Bosper_FellLernen_11_02"); //Du nimmst eine scharfe Klinge und schneidest dem Vieh den Bauch auf. Noch ein paar kleine Schnitte an den Innenseiten der Beine und dann kannst du's abziehen.
	};
};

INSTANCE Info_Mod_Bosper_Felle (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Felle_Condition;
	information	= Info_Mod_Bosper_Felle_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe hier acht Wolfsfelle.";
};

FUNC INT Info_Mod_Bosper_Felle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Lehrling))
	&& (Npc_HasItems(hero, ItAt_WolfFur) + Npc_HasItems(hero, ItAt_WolfFur_Rein) >= 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Felle_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Felle_15_00"); //Ich habe hier acht Wolfsfelle.

	var int rein; rein = Npc_HasItems(hero, ItAt_WolfFur_Rein);

	if (rein > 8) {
		rein = 8;
	};

	if (rein > 0) {
		B_GiveInvItems	(hero, self, ItAt_WolfFur_Rein, rein);
	};

	if (rein < 8) {
		rein = 8 - rein;

		B_GiveInvItems	(hero, self, ItAt_WolfFur, rein);
	};

	AI_Output(self, hero, "Info_Mod_Bosper_Felle_11_01"); //Sieh an, du scheinst ja wenigstens ein geschickter J�ger zu sein.

	B_GiveInvItems	(self, hero, ItMi_Gold, 80);

	B_LogEntry	(TOPIC_MOD_BOSPERSFELLE, "Ich habe Bosper die Felle gegeben.");
	B_SetTopicStatus	(TOPIC_MOD_BOSPERSFELLE, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	//Mod_LehrlingsStimmen	=	Mod_LehrlingsStimmen + 1;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Bosper_BereitFuerLehrling (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_BereitFuerLehrling_Condition;
	information	= Info_Mod_Bosper_BereitFuerLehrling_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bin ich jetzt deiner Meinung nach w�rdig, ein B�rger der Stadt zu werden?";
};

FUNC INT Info_Mod_Bosper_BereitFuerLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Felle))
	&& (Mod_LehrlingsStimmen < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_BereitFuerLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_BereitFuerLehrling_15_00"); //Bin ich jetzt deiner Meinung nach w�rdig, ein B�rger der Stadt zu werden?

	if (Mod_LehrlingsStimmen == 4)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_BereitFuerLehrling_11_01"); //Die anderen Meister haben mir versichert, dass du zuverl�ssig bist.
		AI_Output(self, hero, "Info_Mod_Bosper_BereitFuerLehrling_11_02"); //Ich habe zwar noch Bedenken, aber ... in Ordnung, du bekommst meine Stimme.

		Mod_LehrlingsStimmen += 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bosper_BereitFuerLehrling_11_03"); //Ich werde warten, was die anderen Meister von dir zu berichten haben, und erst dann mein Urteil f�llen.
	};
};

INSTANCE Info_Mod_Bosper_DeinLehrling2 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_DeinLehrling2_Condition;
	information	= Info_Mod_Bosper_DeinLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich m�chte dein Lehrling werden.";
};

FUNC INT Info_Mod_Bosper_DeinLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Felle))
	&& (Mod_LehrlingsStimmen == 5)
	&& (Mod_IstLehrling	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_DeinLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_DeinLehrling2_15_00"); //Ich m�chte dein Lehrling werden.
	AI_Output(self, hero, "Info_Mod_Bosper_DeinLehrling2_11_01"); //Eigentlich nehme ich keine Lehrlinge.
	AI_Output(self, hero, "Info_Mod_Bosper_DeinLehrling2_11_02"); //Wenn du J�ger werden willst, geh zu den Waldl�ufern.
};

INSTANCE Info_Mod_Bosper_Aufnahme (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Aufnahme_Condition;
	information	= Info_Mod_Bosper_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich w�rde aber lieber bei dir lernen.";
};

FUNC INT Info_Mod_Bosper_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_DeinLehrling2))
	&& (Mod_IstLehrling == 0)
	&& (Mod_LehrlingsStimmen == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_15_00"); //Ich w�rde aber lieber bei dir lernen.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_11_01"); //Herrje ... Na ja, dann lass es uns ausprobieren.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_11_02"); //Aber wenn ich merke, dass du faul wirst oder mich bestiehlst, ist deine Ausbildung sofort abgebrochen. Klar?

	Info_ClearChoices	(Info_Mod_Bosper_Aufnahme);

	Info_AddChoice	(Info_Mod_Bosper_Aufnahme, "Dann lieber nicht.", Info_Mod_Bosper_Aufnahme_B);
	Info_AddChoice	(Info_Mod_Bosper_Aufnahme, "Wann geht's los?", Info_Mod_Bosper_Aufnahme_A);
};

FUNC VOID Info_Mod_Bosper_Aufnahme_B()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_B_15_00"); //Dann lieber nicht.

	Info_ClearChoices	(Info_Mod_Bosper_Aufnahme);
};

FUNC VOID Info_Mod_Bosper_Aufnahme_A()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_A_15_00"); //Wann geht's los?
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_01"); //In diesem Augenblick.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_02"); //Indem ich dir diese B�rgerkleidung �berreiche, bist du nun ein B�rger von Khorinis.

	CreateInvItems	(hero, ItAr_Vlk_H, 1);
	B_ShowGivenThings	("B�rgerkleidung erhalten");

	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_03"); //Als J�ger solltest du zuerst wissen, mit dem Bogen umzugehen.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_04"); //Ein Schwert wird dir nur wenig behilflich sein, es sei denn, du k�mpfst gegen aggressive Gegner, die nicht vor dir fliehen.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_05"); //Von einem Hochsitz oder einer anderen erh�hten Position aus beobachtet ein J�ger die Umgebung.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_06"); //Wenn sich ihm ein Tier n�hert, spannt er den Bogen oder die Armbrust m�glichst lautlos und zielt auf das verwundbarste K�rperteil des Tiers.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_07"); //In den meisten F�llen ist dies der Kopf, bei einigen Monstern k�nnen aber auch K�rper und Extremit�ten besonders anf�llig sein.
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_A_15_08"); //Einleuchtend.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_09"); //Deine erste Aufgabe wird darin bestehen, mir Wargfelle zu beschaffen.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_10"); //Achte aber darauf, dass die Felle m�glichst unbesch�digt bleiben, soll hei�en: ziele auf die Beine.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_11"); //Besch�digte Felle bringen weniger Gold, und man wird sie schlechter los.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_12"); //Nat�rlich kannst du auch versuchen unbesch�digte Felle �ber das Totkloppen der Viecher mit stumpfen Waffen zu bekommen.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_13"); //Das ist aber eigentlich eher was f�r rohe Schl�ger die auf pure Gewalt setzen und nicht f�r geschickte J�ger.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_14"); //Au�erdem wird es dabei in etwa der H�lfte der F�lle passieren, dass die Haut der Tiere und damit ihr Fell durch die wuchtigen Schl�ge aufplatzt oder rei�t.
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_A_15_15"); //Wo finde ich Warge?
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_16"); //In der Umgebung der Stadt sind sie selten.
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_17"); //In abgelegenen Gebieten sind sie eher anzutreffen, und im Minental treiben sie sicher auch ihr Unwesen.
	AI_Output(hero, self, "Info_Mod_Bosper_Aufnahme_A_15_18"); //Und wie viele Felle brauchst du?
	AI_Output(self, hero, "Info_Mod_Bosper_Aufnahme_A_11_19"); //Bringe mir f�nf unbesch�digte Felle, und ich will dir zeigen, wie du bessere Pfeile herstellen kannst.

	Mod_IstLehrling	= 1;

	Mod_LehrlingBei = 4;

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_BOSPER_ONE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_ONE, LOG_RUNNING);

	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	{
		B_LogEntry_NMore	(TOPIC_MOD_B�RGER, TOPIC_MOD_LEHRLING_BOSPER_ONE, TOPIC_MOD_TORLOFSPIONAGE, "Bosper, der Bogner, hat mich als seinen Lehrling aufgenommen. Dadurch bin ich jetzt ein B�rger der Stadt.", "Mein erster Auftrag f�r Bosper besteht darin, dass ich ihm f�nf unbesch�digte Wargfelle liefere. Die erhalte ich, indem ich den Wargen in die Beine schie�e.", "Da Bosper mich als seinen Lehrling aufgenommen hat ist es mir jetzt m�glich das Obere Viertel zu betreten.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_B�RGER, TOPIC_MOD_LEHRLING_BOSPER_ONE, "Bosper, der Bogner, hat mich als seinen Lehrling aufgenommen. Dadurch bin ich jetzt ein B�rger der Stadt.", "Mein erster Auftrag f�r Bosper besteht darin, dass ich ihm f�nf unbesch�digte Wargfelle liefere. Die erhalte ich, indem ich den Wargen in die Beine schie�e.");
	};

	B_SetTopicStatus	(TOPIC_MOD_B�RGER, LOG_SUCCESS);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Bosper_Aufnahme);
};

INSTANCE Info_Mod_Bosper_GildenZeug (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_GildenZeug_Condition;
	information	= Info_Mod_Bosper_GildenZeug_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bosper_GildenZeug_Condition()
{
	if (Mod_LehrlingBei == 4)
	&& (hero.guild > GIL_NONE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_GildenZeug_Info()
{
	if (hero.guild == GIL_PAL)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_00"); //Das h�tte ich ja nicht gedacht. Vom Halunken zum Gesetzesh�ter.
	}
	else if (hero.guild == GIL_VLK)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_01"); //Was willst du bei den Magiern? �ber das Bogenschie�en k�nnen die dir nichts sagen!
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_02"); //Was willst du bei den Magiern? �ber das Bogenschie�en k�nnen die dir nichts sagen!
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_03"); //War ja abzusehen, dass es dich zu den S�ldnern zieht. Haben aber gute Bogensch�tzen, die Jungs.
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output(self, hero, "Info_Mod_Bosper_GildenZeug_11_04"); //Lass dir blo� nicht einfallen, hier deinem Gott zu huldigen!
	};
};

INSTANCE Info_Mod_Bosper_LehrlingQuest (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die f�nf Wargfelle, unbesch�digt.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest_Condition()
{
	if (Mod_LehrlingBei == 4)
	&& (Npc_HasItems(hero, ItAt_WargFur_Rein) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest_15_00"); //Die f�nf Wargfelle, unbesch�digt.

	B_GiveInvItems	(hero, self, ItAt_WargFur_Rein, 5);

	Npc_RemoveInvItems	(self, ItAt_WargFur_Rein, 5);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_01"); //(pr�fend) Ja, die sind zu gebrauchen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_02"); //Hier hast du etwas Geld. Aber gib es nicht f�r Bier und leichte M�dchen aus!

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_03"); //Da du dich als einigerma�en geschickt erwiesen hast, will ich dich nun in die Kunst der Pfeilherstellung einf�hren.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_04"); //Einen normalen Pfeil zu schnitzen, ist selbst f�r den blutigen Anf�nger kein Problem.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_05"); //Allerdings gibt es bestimmte Kniffe, wie du spezialisierte oder verbesserte Pfeile erh�ltst.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_06"); //Lass uns mit den Widerhaken beginnen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_07"); //Alles, was du zus�tzlich brauchst, ist ein leichtes gebogenes St�ck Eisen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_08"); //Das kannst du bei fast jedem Schmied kaufen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_09"); //Vorn in den Pfeil ritzt du im gleichen Abstand vier Kerben, die du mit einer klebrigen Fl�ssigkeit ausf�llst und in die du dann die Eisenst�cke steckst.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_10"); //Achte immer darauf, die Balance des Pfeils zu wahren.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_11"); //Unter dem Eisen leidet die Genauigkeit des Pfeils, allerdings kannst du mit ein wenig Gl�ck deinem Gegner damit schwer blutende Wunden zuf�gen, die ihn immer weiter schw�chen.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest_15_12"); //Kann ich damit auch meine schon fertigen Pfeile aufbessern?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_13"); //Nat�rlich. Ich empfehle dir, das an Thorbens Stand zu erledigen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_14"); //Als Handwerker hat er dort alle n�tigen Ger�tschaften versammelt.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_15"); //Jetzt solltest du dich erst einmal f�r eine Weile mit dem vertraut machen, was ich dir erz�hlt habe.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest_11_16"); //Komm danach wieder, und wir werden an dieser Stelle weitermachen.

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_PFEILE, "Ich kann jetzt aus einer Pfeilspitze und einem Pfeilstab einen Pfeil mit Widerhaken herstellen. Dieser Pfeil trifft nicht so h�ufig, rei�t aber daf�r tiefere Wunden.");

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_ONE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Bosper_LehrlingQuest2 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest2_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lass uns mit meiner Ausbildung fortfahren.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_00"); //Lass uns mit meiner Ausbildung fortfahren.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_01"); //(argw�hnisch) Wo treibst du dich �berhaupt rum? In der Stadt bist du ja kaum noch.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_02"); //Ich rette die Welt und so.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_03"); //Verarschen kann ich mich alleine.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_04"); //Ich brauche aber deine Hilfe.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_05"); //Abuyin hat vier Schattenl�uferfelle bei mir bestellt, aber die J�ger haben mir erst eines gebracht.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_06"); //Fehlen also noch drei.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_07"); //Wof�r braucht Abuyin Schattenl�uferfelle?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_08"); //Er sagt, dass Schattenl�ufer magische Wesen seien und ihre Felle demnach irgendwelche positiven Schwingungen auf ihn aus�ben w�rden.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_09"); //Vielleicht hat er aber auch einfach nur zu viel geraucht.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_10"); //Jedenfalls zahlt er gut f�r unbesch�digte Felle. Du erinnerst dich daran, worauf du achten musst?
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_11"); //Immer sch�n auf die Pranken schie�en.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_12"); //Schattenl�ufer sind hart im Nehmen. Also pass auf dich auf.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest2_11_13"); //Wenn du mir die Felle gebracht hast, bringe ich dir was Neues bei.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest2_15_14"); //Alles klar. Dann werd ich mich mal auf die Suche machen.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_BOSPER_TWO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_TWO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_TWO, "Bosper will, dass ich ihm drei unbesch�digte Schattenl�uferfelle bringe, bevor er mich weiter unterweist.");
};

INSTANCE Info_Mod_Bosper_LehrlingQuest3 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest3_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier hast du die Felle.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest2))
	&& (Npc_HasItems(hero, ItAt_ShadowFur_Rein) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest3_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest3_15_00"); //Hier hast du die Felle.

	B_GiveInvItems	(hero, self, ItAt_ShadowFur_Rein, 3);

	Npc_RemoveInvItems	(self, ItAt_ShadowFur_Rein, 3);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_01"); //Gute Qualit�t. Damit wird Abuyin zufrieden sein.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest3_15_02"); //Dann k�nnen wir uns ja endlich meiner Lehre zuwenden.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_03"); //In Ordnung, dann h�r mir mal gut zu.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_04"); //Mit herk�mmlichen Pfeilen hast du gegen starke Gegner h�ufig keine Chance, weil deine Reichweite zu gering ist.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_05"); //Du musst bei der Produktion nur ein paar Feinheiten �ndern, und schon erh�ltst du einen wahrhaften Pr�zisionspfeil.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_06"); //Die Befiederung am Ende des Pfeils muss etwa ein F�nftel des Pfeils bedecken. Nimm also mehr Federn als �blich.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_07"); //Au�erdem darf die Spitze etwas kleiner sein, um die Balance des Pfeils zu erh�hen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_08"); //Als Alternative bringst du am Ende des Schafts ein Gegengewicht an, das f�r eine gleichm��ige Verteilung des Gewichts sorgt.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_09"); //Diese Ma�nahmen sorgen zwar daf�r, dass der Pfeil etwas an Durchschlagskraft verliert, aber das macht er durch eine deutlich erh�hte Reichweite und eine bessere Handhabbarkeit wieder wett.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest3_15_10"); //Klingt so, als w�re der Pfeil zu gebrauchen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_11"); //Sonst w�rde ich mir auch nicht die M�he machen, es dir zu erkl�ren.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest3_15_12"); //Warum hattest du eigentlich keinen Lehrling vor mir? Du machst das doch ganz gut.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_13"); //Meinen letzten Lehrling hatte ich vor mehreren Jahren. Ich werde ihn immer in Erinnerung behalten - aber nicht in positiver.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest3_11_14"); //Jetzt ist es aber Zeit f�r dich zu gehen. Komm bald wieder.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_TWO, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_PFEILE, "Ich kann jetzt aus einer Pfeilspitze und einem Pfeilstab einen Pr�zisionspfeil herstellen. Dieser Pfeil trifft h�ufiger und auf gr��ere Entfernung, macht daf�r aber etwas weniger Schaden.");

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Bosper_LehrlingQuest4 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest4_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie geht es mit meiner Ausbildung weiter?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest3))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest4_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_00"); //Wie geht es mit meiner Ausbildung weiter?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_01"); //Du kennst jetzt die f�r J�ger wichtigsten Pfeil-Modifikationen, bis auf eine.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_02"); //Und die w�re?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_03"); //Na ja ... (stockt) Das sollte ich dir vielleicht gar nicht sagen.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_04"); //Aha.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_05"); //Ich wurde schon ein Mal betrogen, und ich will es nicht zu einem zweiten Mal kommen lassen.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_06"); //Wer hat dich betrogen?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_07"); //Mein letzter Lehrling.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_08"); //Ich habe ihm alles beigebracht, was ist wusste, und als Dank feuerte er drei Explosionspfeile auf mein ehemaliges Haus und setzte es in Brand.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_09"); //Damals wohnte ich nur unweit der Taverne, an einem Rastplatz der J�ger.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_10"); //Seitdem habe ich keine Lehrlinge mehr aufgenommen.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest4_15_11"); //Was ist aus deinem Lehrling geworden?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_12"); //(bitter) Ich wei� es nicht. Es war eine junge Frau - sehr talentiert, sehr ehrgeizig.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest4_11_13"); //Ich habe nie wieder von ihr geh�rt, und ich will es auch nicht.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest5 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest5_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Aber ich werde dich nicht verraten.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest5_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest5_15_00"); //Aber ich werde dich nicht verraten.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_01"); //Weswegen wurdest du eigentlich in die Barriere geworfen?
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest5_15_02"); //Ich -
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_03"); //Halt! Sag's nicht. Ich will es gar nicht wissen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_04"); //Du hast mich bisher nicht entt�uscht, bist bescheiden und zuverl�ssig.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_05"); //Wenn ich jemandem trauen kann, dann dir. Deine Vergangenheit spielt keine Rolle.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_06"); //Also sch�n, ich will dir die m�chtigsten Geschosse zeigen: die Explosionspfeile.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_07"); //Diese richten selbst bei Gegnern, die gegen herk�mmliche Pfeile weitgehend immun sind, verheerenden Schaden an.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest5_15_08"); //Und wie stelle ich diese Pfeile her?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_09"); //Die Spitze dieser Pfeile besteht aus einem S�ckchen mit einem explosiven Gemisch.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_10"); //Du brauchst ein St�ck Kohle, Schwefel und einen Beutel Salpeter.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_11"); //An einem Alchemietisch stellst du daraus eine Mischung her, verpackst sie sorgf�ltig und befestigst sie vorn am Pfeil.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest5_15_12"); //H�rt sich gut an.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_13"); //Probier's aus. Bring mir zwei Trollfelle, dann sehe ich die Pr�fung als abgeschlossen an.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest5_11_14"); //Aber ich will die Brandflecken sehen!

	Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
	Log_CreateTopic	(TOPIC_MOD_LEHRLING_BOSPER_THREE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_THREE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_LEHRLING_BOSPER_THREE, TOPIC_MOD_PFEILE, "Mit Explosionspfeilen soll ich zwei Trolle t�ten und Bosper ihre Felle bringen.", "Ich kann jetzt aus einer Pfeilspitze, Sprengstoff und einem Pfeilstab einen Explosionspfeil herstellen. Dieser Pfeil trifft h�ufiger und macht viel mehr Schaden, hat aber eine sehr geringe Reichweite. F�r den Sprengstoff ben�tige ich Kohle, Schwefel und Salpeter, welche ich an einem Alchemietisch vermengen muss.");
};

INSTANCE Info_Mod_Bosper_LehrlingQuest6 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest6_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier hast du die beiden Trollfelle.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest5))
	&& (Npc_HasItems(hero, ItAt_TrollFur_Feuer) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest6_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest6_15_00"); //Hier hast du die beiden Trollfelle.

	B_GiveInvItems	(hero, self, ItAt_TrollFur_Feuer, 2);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_01"); //Daf�r hast du hier einen kleinen Lohn.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_02"); //Deine Ausbildung bei mir ist hiermit beendet. Alles, was du wissen musst, habe ich dir erz�hlt.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_03"); //Nun wird die Praxis erweisen, ob du mit der Jagd deinen Lebensunterhalt bestreiten k�nnen wirst.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_04"); //Schau doch irgendwann noch mal bei mir vorbei, vielleicht habe ich etwas zu tun f�r dich.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_05"); //Ansonsten bleibt mir nur �brig, dich zu deinen Leistungen zu begl�ckw�nschen und dir ein angenehmes Leben zu w�nschen.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest6_15_06"); //Danke. Bis demn�chst mal.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest6_11_07"); //M�ge deine Sehne immer gespannt bleiben!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_THREE, LOG_SUCCESS);

	B_GivePlayerXP	(350);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Bosper_LehrlingQuest7 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest7_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie l�uft's?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest6))
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest7_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest7_15_00"); //Wie l�uft's?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest7_11_01"); //Das Gespr�ch mit dir �ber meinen letzten Lehrling hat mir keine Ruhe gelassen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest7_11_02"); //Ich hatte ihn schon erfolgreich verdr�ngt, aber seit ich dir von ihm erz�hlt habe, habe ich Alptr�ume und schlafe schlecht.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest8 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest8_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest8_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wieso geht dir euer Zerw�rfnis so nahe?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest7))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest8_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest8_15_00"); //Wieso geht dir euer Zerw�rfnis so nahe?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_01"); //Ich ... ich bin nicht ganz schuldlos daran. Damals habe ich nicht die richtigen Worte gefunden.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest8_15_02"); //Was ist vorgefallen?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_03"); //Ich hatte zu ihr eine ... besondere Verbindung.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_04"); //Am Abend, bevor sie mein Haus in Brand setzte, kl�rte ich sie dar�ber auf.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_05"); //Aber sie wollte nichts davon wissen und schrie mich an.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_06"); //Daraufhin habe ich ihr weh getan. Ich wusste sofort, dass es falsch war, aber konnte es nicht mehr r�ckg�ngig machen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_07"); //Dann rannte sie davon. In der Nacht wurde ich schlie�lich vom Prasseln des Feuers und dem Brandgeruch geweckt.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest8_11_08"); //Ich m�chte, dass du sie findest.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest9 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest9_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest9_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich dachte, du wolltest sie nicht wiedersehen?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest8))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest9_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest9_15_00"); //Ich dachte, du wolltest sie nicht wiedersehen?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest9_11_01"); //Das stimmte auch lange Zeit. Die Erinnerung an sie bereitet mir noch immer Schmerzen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest9_11_02"); //Aber gleichzeitig steigt die Sehnsucht in mir, mich mit ihr zu vers�hnen.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest10 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest10_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest10_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wo k�nnte sie sich aufhalten?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest8))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest10_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest10_15_00"); //Wo k�nnte sie sich aufhalten?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_01"); //Als ich dir sagte, dass ich nicht w�sste, wo sie sei, habe ich nicht vollkommen die Wahrheit gesagt.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_02"); //Aus verschiedenen Quellen habe ich erfahren, dass sie sich noch immer in dem gro�en Wald n�rdlich der Stadt aufh�lt.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_03"); //Allerdings scheint sie nicht gewillt, dass sich jemand ihr n�hert.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_04"); //Mehrere J�ger haben mir berichtet, dass sie sich, wenn sie gest�rt wurde, in ein Tier verwandelt hat.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_05"); //Ich wei� nicht, wo sie die Kunst des Verwandelns gelernt hat, aber ihr bevorzugtes Tier scheint ein Warg zu sein.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest10_15_06"); //Bedeutet das etwa, ich soll alle Warge fangen, die ich finde, und warten, ob sie sich zur�ckverwandeln?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_07"); //Nat�rlich nicht.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_08"); //Lass dir von einem Magier, Vatras vielleicht, eine Tinktur geben, die bei Ber�hrung zur�ckverwandelt.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_09"); //Damit bestreichst du an einem Alchemietisch deine Pfeile.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest10_11_10"); //Schon beim ersten Schuss wird sich dann zeigen, ob es sich um Atalante handelt, meinen letzten Lehrling.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, "Bosper sehnt sich danach, sich mit Atalante, die fr�her sein Lehrling war, auszus�hnen. Da sie jedoch anscheinend menschenscheu geworden ist und als Warg in dem Wald n�rdlich von Khorinis herumstreift, soll ich mir von einem Magier eine Tinktur besorgen, mit der ich sie zur�ckverwandeln kann, um ihr dann von Bospers Vers�hnungswunsch zu erz�hlen. Meine erste Anlaufstelle f�r die Tinktur ist Vatras.");
};

INSTANCE Info_Mod_Bosper_LehrlingQuest11 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest11_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest11_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was mache ich, sobald ich sie zur�ckverwandelt habe?";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest11_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest9))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest11_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest11_15_00"); //Was mache ich, sobald ich sie zur�ckverwandelt habe?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest11_11_01"); //Erz�hl ihr, dass ich gewillt bin, ihr zu verzeihen, und dass ich sie treffen will.
};

INSTANCE Info_Mod_Bosper_LehrlingQuest12 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest12_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest12_Info;
	permanent	= 0;
	important	= 0;
	description	= "Atalante ist tot. Es tut mir Leid.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest12_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Atalante_Bosper))
	&& (Npc_IsDead(Warg_Atalante2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest12_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_00"); //Atalante ist tot. Es tut mir Leid.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_01"); //Nein! Sag, dass das nicht wahr ist!
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_02"); //Sie griff mich an, als ich ihr von dir erz�hlte.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_03"); //Meine Tochter! Was hast du mir angetan?!
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_04"); //Deine Tochter? Aber wie ...?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_05"); //(wahnsinnig) Du l�gst! Sie ist nicht tot. Sie will mich nur nicht wiedersehen, stimmt's?
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_06"); //Sie will ihren Tod blo� vort�uschen, weil ich sie so gedem�tigt habe!
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_07"); //Atalante, ich konnte dir doch nichts sagen!
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_08"); //Als ich von dir erfuhr, lie� ich dir alles zukommen, was ich geben konnte.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_09"); //Und doch wolltest du mir nicht glauben an jenem verh�ngnisvollen Tag.
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_10"); //So langsam durchschaue ich die Angelegenheit.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_11"); //Nein, gar nichts durchschaust du. Niemand, niemand will mich verstehen!
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_12"); //Und nun - hinfort mit dir, dass du dich mit meiner eigenen Tochter gegen mich verb�ndest!
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest12_15_13"); //Ist ja schon gut. Du wirst schon dar�ber hinwegkommen.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest12_11_14"); //Niemals!

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, LOG_SUCCESS);

	CurrentNQ += 1;

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Bosper_LehrlingQuest13 (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_LehrlingQuest13_Condition;
	information	= Info_Mod_Bosper_LehrlingQuest13_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich konnte Atalante nicht finden.";
};

FUNC INT Info_Mod_Bosper_LehrlingQuest13_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_BosperLehrling4))
	&& (Npc_IsDead(Warg_Atalante))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Atalante_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_LehrlingQuest13_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest13_15_00"); //Ich konnte Atalante nicht finden.
	AI_Output(self, hero, "Info_Mod_Bosper_LehrlingQuest13_11_01"); //(niedergeschlagen) Dann ist sie vielleicht doch nicht mehr im Wald. Was mache ich jetzt blo�?
	AI_Output(hero, self, "Info_Mod_Bosper_LehrlingQuest13_15_02"); //Es tut mir Leid.

	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, LOG_FAILED);
};

INSTANCE Info_Mod_Bosper_DragomirFelle (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_DragomirFelle_Condition;
	information	= Info_Mod_Bosper_DragomirFelle_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Felle sind von Dragomir. Nicht von mir.";
};

FUNC INT Info_Mod_Bosper_DragomirFelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Bosper))
	&& (Npc_HasItems(hero, ItMi_Wolfsfelle) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_DragomirFelle_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_DragomirFelle_15_00"); //Die Felle sind von Dragomir. Nicht von mir.

	B_GiveInvItems	(hero, self, ItMi_Wolfsfelle, 1);

	AI_Output(self, hero, "Info_Mod_Bosper_DragomirFelle_11_01"); //Gut. Wieviel will er?
	AI_Output(hero, self, "Info_Mod_Bosper_DragomirFelle_15_02"); //Er kassiert, wenn er vorbeikommt.
	AI_Output(self, hero, "Info_Mod_Bosper_DragomirFelle_11_03"); //Auch gut. Hier, etwas Gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, "Habe die Felle abgeliefert.");
	B_SetTopicStatus	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Bosper_Job (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Job_Condition;
	information	= Info_Mod_Bosper_Job_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was sind meine Aufgaben als dein Lehrling?";
};

FUNC INT Info_Mod_Bosper_Job_Condition()
{
	if (Mod_LehrlingBei == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Job_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Job_15_00"); //Was sind meine Aufgaben als dein Lehrling?
	AI_Output(self, hero, "Info_Mod_Bosper_Job_11_01"); //Bring mir alle Tierfelle die du findest. Ich Zahl dir f�r jedes Fell einen guten Preis.
	AI_Output(self, hero, "Info_Mod_Bosper_Job_11_02"); //Au�erdem kann ich dir beibringen wie du Pfeile, B�gen und Armbr�ste herstellst.

	Mod_PfeileSpitzen	=	0;
	Mod_PfeileSchnitzen	=	0;
};

INSTANCE Info_Mod_Bosper_Schnitzen (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Schnitzen_Condition;
	information	= Info_Mod_Bosper_Schnitzen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir bei Pfeile zu schnitzen (2 LP)";
};

FUNC INT Info_Mod_Bosper_Schnitzen_Condition()
{
	if (Mod_Schwierigkeit == 4)
	{
		Info_Mod_Bosper_Schnitzen.description = "Bring mir bei Pfeile zu schnitzen (200 Gold)";
	}
	else
	{
		Info_Mod_Bosper_Schnitzen.description = "Bring mir bei Pfeile zu schnitzen (2 LP)";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Job))
	&& (((hero.lp >= 2) && (Mod_Schwierigkeit != 4)) || ((Npc_HasItems(hero, ItMi_Gold) >= 200) && (Mod_Schwierigkeit == 4)))
	&& (Mod_PfeileSchnitzen	== 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Schnitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Schnitzen_15_00"); //Bring mir bei Pfeile zu schnitzen.
	AI_Output(self, hero, "Info_Mod_Bosper_Schnitzen_11_01"); //Ok. Zuerst solltest du dir ein Holzst�ck bei Thorben kaufen. Dieses nimmst du dann mit an eine Baums�ge und schnitzt es zu etwa 10 Pfeilen.
	AI_Output(self, hero, "Info_Mod_Bosper_Schnitzen_11_02"); //Dann f�gst du den Pfeil mit einer Pfeilspitze an einem Amboss zusammen und fertig ist dein Pfeil.

	if (Mod_Schwierigkeit != 4)
	{
		hero.lp -= 2;
	}
	else
	{
		Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	};

	Mod_PfeileSchnitzen	=	1;

	Log_CreateTopic	(TOPIC_MOD_PFEILE, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_PFEILE, "Um Pfeile herzustellen ben�tige ich Pfeilst�be. Diese kann ich mir aus �sten zurechts�gen.");
};

INSTANCE Info_Mod_Bosper_Spitzen (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Spitzen_Condition;
	information	= Info_Mod_Bosper_Spitzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wo kann ich lernen Pfeilspitzen zu schmieden?";
};

FUNC INT Info_Mod_Bosper_Spitzen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Job))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Spitzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_Spitzen_15_00"); //Wo kann ich lernen Pfeilspitzen zu schmieden?
	AI_Output(self, hero, "Info_Mod_Bosper_Spitzen_11_01"); //Geh zu Harad. Wenn er dich fragt, wieso er dich unterrichten solle, dann sage ihm, dass ich dich schicke.
};

INSTANCE Info_Mod_Bosper_OtherHunters (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_OtherHunters_Condition;
	information	= Info_Mod_Bosper_OtherHunters_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wo finde ich hier andere J�ger?";
};

FUNC INT Info_Mod_Bosper_OtherHunters_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_OtherHunters_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_OtherHunters_15_00"); //Wo finde ich hier andere J�ger?
	AI_Output(self, hero, "Info_Mod_Bosper_OtherHunters_11_01"); //Wenn du aus dem Osttor gehst, kommst du zu Orlans Taverne.
	AI_Output(self, hero, "Info_Mod_Bosper_OtherHunters_11_02"); //Da in der N�he ist das J�gerlager. Der Anf�hrer hei�t Dragomir.
	AI_Output(self, hero, "Info_Mod_Bosper_OtherHunters_11_03"); //Ihm kannst du einen sch�nen Gru� ausrichten, ich brauche wieder Felle. Jetzt zum Winter hin steigt die Nachfrage.
	AI_Output(hero, self, "Info_Mod_Bosper_OtherHunters_15_04"); //Mach ich doch.
};

INSTANCE Info_Mod_Bosper_Anschlagtafel (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Anschlagtafel_Condition;
	information	= Info_Mod_Bosper_Anschlagtafel_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich habe deinen Aushang an der Anschlagtafel gesehen ...";
};

FUNC INT Info_Mod_Bosper_Anschlagtafel_Condition()
{
	if (Mod_Anschlagtafel_Khorinis_Bosper == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Anschlagtafel_Info()
{
	B_Say	(hero, self, "$ANSCHLAGTAFEL01");

	if (Npc_HasItems(hero, ItAt_WolfFur) >= Mod_Anschlagtafel_Khorinis_Bosper_Wolffell)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= Mod_Anschlagtafel_Khorinis_Bosper_Zaehne)
	&& (Npc_HasItems(hero, ItAt_Claw) >= Mod_Anschlagtafel_Khorinis_Bosper_Krallen)
	&& (Npc_HasItems(hero, ItAt_WargFur) >= Mod_Anschlagtafel_Khorinis_Bosper_Wargfell)
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell)
	&& (Npc_HasItems(hero, ItAt_LurkerSkin) >= Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut)
	&& (Npc_HasItems(hero, ItAt_TrollFur) >= Mod_Anschlagtafel_Khorinis_Bosper_Trollfell)
	&& (Npc_HasItems(hero, ItAt_CrawlerPlate) >= Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) >= Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn)
	&& (Npc_HasItems(hero, ItMi_Ast) >= Mod_Anschlagtafel_Khorinis_Bosper_Ast)
	{
		Npc_RemoveInvItems	(hero, ItAt_WolfFur, Mod_Anschlagtafel_Khorinis_Bosper_Wolffell);
		Npc_RemoveInvItems	(hero, ItAt_Teeth, Mod_Anschlagtafel_Khorinis_Bosper_Zaehne);
		Npc_RemoveInvItems	(hero, ItAt_Claw, Mod_Anschlagtafel_Khorinis_Bosper_Krallen);
		Npc_RemoveInvItems	(hero, ItAt_WargFur, Mod_Anschlagtafel_Khorinis_Bosper_Wargfell);
		Npc_RemoveInvItems	(hero, ItAt_ShadowFur, Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell);
		Npc_RemoveInvItems	(hero, ItAt_LurkerSkin, Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut);
		Npc_RemoveInvItems	(hero, ItAt_TrollFur, Mod_Anschlagtafel_Khorinis_Bosper_Trollfell);
		Npc_RemoveInvItems	(hero, ItAt_CrawlerPlate, Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte);
		Npc_RemoveInvItems	(hero, ItAt_ShadowHorn, Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn);
		Npc_RemoveInvItems	(hero, ItMi_Ast, Mod_Anschlagtafel_Khorinis_Bosper_Ast);

		AI_Output(self, hero, "Info_Mod_Bosper_Anschlagtafel_11_00"); //Was? Zeig her ... Tats�chlich, alles dabei. Ausgesprochen gut gemacht.
		AI_Output(self, hero, "Info_Mod_Bosper_Anschlagtafel_11_01"); //Hier ist deine Entlohnung.

		B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Anschlagtafel_Khorinis_Bosper_Gold);

		AI_Output(self, hero, "Info_Mod_Bosper_Anschlagtafel_11_02"); //Hat mich gefreut mit dir Gesch�fte zu machen.

		if (Mod_Anschlagtafel_Khorinis_Bosper_Gold < 200)
		{
			B_GivePlayerXP	(300);
		}
		else if (Mod_Anschlagtafel_Khorinis_Bosper_Gold < 400)
		{
			B_GivePlayerXP	(400);
		}
		else if (Mod_Anschlagtafel_Khorinis_Bosper_Gold < 600)
		{
			B_GivePlayerXP	(500);
		}
		else
		{
			B_GivePlayerXP	(600);
		};

		Mod_Anschlagtafel_Khorinis_Bosper = 0;
		Mod_Anschlagtafel_Khorinis_Bosper_Cooldown = 3600;

		Npc_RemoveInvItems	(hero, ItWr_Anschlagtafel_Bosper, 1);
	}
	else
	{
		B_Say	(hero, self, "$ANSCHLAGTAFEL02");
	};
};

var int FellCounter;

INSTANCE Info_Mod_Bosper_MehrFelle (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_MehrFelle_Condition;
	information	= Info_Mod_Bosper_MehrFelle_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich hab hier ein paar Felle f�r dich ...";
};

FUNC INT Info_Mod_Bosper_MehrFelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_Job))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_MehrFelle_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_MehrFelle_15_00"); //Ich hab hier ein paar Felle f�r dich.

	CreateInvItems	(self, ItMi_Gold, 1000000);

	if (Npc_HasItems(hero, ItAt_SheepFur) > 0)
	|| (Npc_HasItems(hero, ItAt_SheepFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_SheepFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_ZiegenFur) > 0)
	|| (Npc_HasItems(hero, ItAt_ZiegenFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_ZiegenFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_WolfFur) > 0)
	|| (Npc_HasItems(hero, ItAt_WolfFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_WolfFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_WargFur) > 0)
	|| (Npc_HasItems(hero, ItAt_WargFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_WargFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_OrcdogFur) > 0)
	|| (Npc_HasItems(hero, ItAt_OrcdogFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_OrcdogFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_ShadowFur) > 0)
	|| (Npc_HasItems(hero, ItAt_ShadowFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_ShadowFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollFur) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollBlackFur) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur) > 0)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_PumaFur) > 0)
	|| (Npc_HasItems(hero, ItAt_PumaFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_PumaFur_Feuer) > 0)
	|| (Npc_HasItems(hero, ItAt_StonePumaFur) > 0)
	|| (Npc_HasItems(hero, ItAt_StonePumaFur_Rein) > 0)
	|| (Npc_HasItems(hero, ItAt_StonePumaFur_Feuer) > 0)
	{
		
		if (Npc_HasItems(hero, ItAt_Addon_KeilerFur) > 0)
		|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer) > 0)
		{
			AI_Output(self, hero, "Info_Mod_Bosper_MehrFelle_11_01"); //Das Fell von Keilern. Starke Biester sind das.

			FellCounter = Npc_HasItems(hero, ItAt_Addon_KeilerFur);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_KeilerFur) );
			B_GiveInvItems(hero, self, ItAt_Addon_KeilerFur, Npc_HasItems(hero, ItAt_Addon_KeilerFur));

			FellCounter = Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_KeilerFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_Addon_KeilerFur_Rein, Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein));

			FellCounter = Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_KeilerFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_Addon_KeilerFur_Feuer, Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer));
		};

		if (Npc_HasItems(hero, ItAt_SheepFur) > 0)
		|| (Npc_HasItems(hero, ItAt_SheepFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_SheepFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_02"); //Schafsfell? Du hast doch nicht etwa bei irgendeinem Bauern die Schafe auf der Weide abgeschlachtet?
			AI_Output (hero, self, "Info_Mod_Bosper_MehrFelle_15_03"); //W�rde mir nie im Traum einfallen ...

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_SheepFur) * Value_SheepFur) );
			B_GiveInvItems(hero, self, ItAt_SheepFur, Npc_HasItems(hero, ItAt_SheepFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_SheepFur_Rein) * Value_SheepFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_SheepFur_Rein, Npc_HasItems(hero, ItAt_SheepFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_SheepFur_Feuer) * Value_SheepFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_SheepFur_Feuer, Npc_HasItems(hero, ItAt_SheepFur_Feuer));
		};

		if (Npc_HasItems(hero, ItAt_ZiegenFur) > 0)
		|| (Npc_HasItems(hero, ItAt_ZiegenFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_ZiegenFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_04"); //Ziegenfelle, gute Ware ...

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_ZiegenFur) * Value_ZiegenFur) );
			B_GiveInvItems(hero, self, ItAt_ZiegenFur, Npc_HasItems(hero, ItAt_ZiegenFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_ZiegenFur_Rein) * Value_ZiegenFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_ZiegenFur_Rein, Npc_HasItems(hero, ItAt_ZiegenFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(hero, ItAt_ZiegenFur_Feuer) * Value_ZiegenFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_ZiegenFur_Feuer, Npc_HasItems(hero, ItAt_ZiegenFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_WolfFur) > 0)
		|| (Npc_HasItems(hero, ItAt_WolfFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_WolfFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_05"); //Wolfsfell, das ist gut...

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WolfFur) * Value_WolfFur) );
			B_GiveInvItems(hero, self, ItAt_WolfFur, Npc_HasItems(other, ItAt_WolfFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WolfFur_Rein) * Value_WolfFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_WolfFur_Rein, Npc_HasItems(other, ItAt_WolfFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WolfFur_Feuer) * Value_WolfFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_WolfFur_Feuer, Npc_HasItems(other, ItAt_WolfFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_WargFur) > 0)
		|| (Npc_HasItems(hero, ItAt_WargFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_WargFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_06"); //Fell von Wargen? Z�he Biester sind das ...

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WargFur) * Value_WargFur) );
			B_GiveInvItems(hero, self, ItAt_WargFur, Npc_HasItems(other, ItAt_WargFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WargFur_Rein) * Value_WargFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_WargFur_Rein, Npc_HasItems(other, ItAt_WargFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_WargFur_Feuer) * Value_WargFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_WargFur_Feuer, Npc_HasItems(other, ItAt_WargFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_PumaFur) > 0)
		|| (Npc_HasItems(hero, ItAt_PumaFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_PumaFur_Feuer) > 0)
		|| (Npc_HasItems(hero, ItAt_StonePumaFur) > 0)
		|| (Npc_HasItems(hero, ItAt_StonePumaFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_StonePumaFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_07"); //Pumafell? Feine Sache ...

			FellCounter = Npc_HasItems(hero, ItAt_PumaFur);
			FellCounter += Npc_HasItems(hero, ItAt_StonePumaFur);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_PumaFur) );
			B_GiveInvItems(hero, self, ItAt_PumaFur, Npc_HasItems(hero, ItAt_PumaFur));
			B_GiveInvItems(hero, self, ItAt_StonePumaFur, Npc_HasItems(hero, ItAt_StonePumaFur));

			FellCounter = Npc_HasItems(hero, ItAt_PumaFur_Rein);
			FellCounter += Npc_HasItems(hero, ItAt_StonePumaFur_Rein);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_PumaFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_PumaFur_Rein, Npc_HasItems(hero, ItAt_PumaFur_Rein));
			B_GiveInvItems(hero, self, ItAt_StonePumaFur_Rein, Npc_HasItems(hero, ItAt_StonePumaFur_Rein));

			FellCounter = Npc_HasItems(hero, ItAt_PumaFur_Feuer);
			FellCounter += Npc_HasItems(hero, ItAt_StonePumaFur_Feuer);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_PumaFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_PumaFur_Feuer, Npc_HasItems(hero, ItAt_PumaFur_Feuer));
			B_GiveInvItems(hero, self, ItAt_StonePumaFur_Feuer, Npc_HasItems(hero, ItAt_StonePumaFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_OrcdogFur) > 0)
		|| (Npc_HasItems(hero, ItAt_OrcdogFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_OrcdogFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_08"); //Fell von Orkhunden? Z�he Biester sind das ...

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_OrcdogFur) * Value_WargFur) );
			B_GiveInvItems(hero, self, ItAt_OrcdogFur, Npc_HasItems(other, ItAt_OrcdogFur));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_OrcdogFur_Rein) * Value_WargFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_OrcdogFur_Rein, Npc_HasItems(other, ItAt_OrcdogFur_Rein));

			B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_OrcdogFur_Feuer) * Value_WargFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_OrcdogFur_Feuer, Npc_HasItems(other, ItAt_OrcdogFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_ShadowFur) > 0)
		|| (Npc_HasItems(hero, ItAt_ShadowFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_ShadowFur_Feuer) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_09"); //Ah, sogar das Fell eines Schattenl�ufers - ist 'ne Menge wert.

			FellCounter = Npc_HasItems(hero, ItAt_ShadowFur);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_ShadowFur) );
			B_GiveInvItems(hero, self, ItAt_ShadowFur, Npc_HasItems(other, ItAt_ShadowFur));

			FellCounter = Npc_HasItems(hero, ItAt_ShadowFur_Rein);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_ShadowFur_Rein) );
			B_GiveInvItems(hero, self, ItAt_ShadowFur_Rein, Npc_HasItems(other, ItAt_ShadowFur_Rein));

			FellCounter = Npc_HasItems(hero, ItAt_ShadowFur_Feuer);

			B_GiveInvItems(self, hero, ItMi_Gold, (FellCounter * Value_ShadowFur_Feuer) );
			B_GiveInvItems(hero, self, ItAt_ShadowFur_Feuer, Npc_HasItems(other, ItAt_ShadowFur_Feuer));
		};
		
		if (Npc_HasItems(hero, ItAt_TrollFur) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollFur_Feuer) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollBlackFur) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Rein) > 0)
		|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Feuer) > 0)
		{
			if (Mod_TrollfellBosper == FALSE)
			{
				AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_10"); //Was zur H�lle ist DAS f�r ein Fell?
				AI_Output (hero, self, "Info_Mod_Bosper_MehrFelle_15_11"); //Das hab ich einem Troll �ber die Ohren gezogen.
				AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_12"); //Das ... das ist ein halbes Verm�gen wert ...

				Mod_TrollfellBosper == TRUE;
			}
			else //TRUE
			{
				AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_13"); //Schon wieder so ein riesiges Trollfell ... machst du Jagd auf die Viecher?
				AI_Output (hero, self, "Info_Mod_Bosper_MehrFelle_15_14"); //Wenn mir mal einer begegnet, nutze ich die Gelegenheit ...
			};
			
			if (Npc_HasItems(hero, ItAt_TrollFur) > 0)
			|| (Npc_HasItems(hero, ItAt_TrollFur_Rein) > 0)
			|| (Npc_HasItems(hero, ItAt_TrollFur_Feuer) > 0)
			{
				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollFur) * Value_TrollFur) );
				B_GiveInvItems(hero, self, ItAt_TrollFur, Npc_HasItems(other, ItAt_TrollFur));

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollFur_Rein) * Value_TrollFur_Rein) );
				B_GiveInvItems(hero, self, ItAt_TrollFur_Rein, Npc_HasItems(other, ItAt_TrollFur_Rein));

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollFur_Feuer) * Value_TrollFur_Feuer) );
				B_GiveInvItems(hero, self, ItAt_TrollFur_Feuer, Npc_HasItems(other, ItAt_TrollFur_Feuer));
			};
			
			if (Npc_HasItems(hero, ItAt_TrollBlackFur) > 0)
			|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Rein) > 0)
			|| (Npc_HasItems(hero, ItAt_TrollBlackFur_Feuer) > 0)
			{
				AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_15"); //Sogar das Fell eines schwarzen Trolls!

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollBlackFur) * Value_TrollBlackFur) );
				B_GiveInvItems(hero, self, ItAt_TrollBlackFur, Npc_HasItems(other, ItAt_TrollBlackFur));

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollBlackFur_Rein) * Value_TrollBlackFur_Rein) );
				B_GiveInvItems(hero, self, ItAt_TrollBlackFur_Rein, Npc_HasItems(other, ItAt_TrollBlackFur_Rein));

				B_GiveInvItems(self, hero, ItMi_Gold, (Npc_HasItems(other, ItAt_TrollBlackFur_Feuer) * Value_TrollBlackFur_Feuer) );
				B_GiveInvItems(hero, self, ItAt_TrollBlackFur_Feuer, Npc_HasItems(other, ItAt_TrollBlackFur_Feuer));
			};
		};
		
		AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_16"); //Gute Arbeit. Wenn du mehr hast, komm zu mir zur�ck ...
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Bosper_MehrFelle_11_17"); //Du wei�t doch - ich bin nur an Fellen von W�lfen, Schattenl�ufern und dergleichen interessiert ...
	};
};

INSTANCE Info_Mod_Bosper_HandelstJetzt (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_HandelstJetzt_Condition;
	information	= Info_Mod_Bosper_HandelstJetzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Handelst du jetzt mit mir?";
};

FUNC INT Info_Mod_Bosper_HandelstJetzt_Condition()
{
	if (Mod_LehrlingsStimmen == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_HandelstJetzt_Info()
{
	AI_Output(hero, self, "Info_Mod_Bosper_HandelstJetzt_15_00"); //Handelst du jetzt mit mir?
	AI_Output(self, hero, "Info_Mod_Bosper_HandelstJetzt_11_01"); //Meinetwegen.
	
	Log_CreateTopic	(TOPIC_MOD_HAENDLER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_STADT, "Bosper verkauft B�gen und Armbr�ste.");
};

INSTANCE Info_Mod_Bosper_Trade (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Trade_Condition;
	information	= Info_Mod_Bosper_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Bosper_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_HandelstJetzt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bosper_Trade_Info()
{
	Backup_Questitems();

	Npc_RemoveInvItems	(self, ItRw_Arrow, 100);
	Npc_RemoveInvItems	(self, ItRw_Bolt, 100);
	
	CreateInvItems	(self, ItRw_Arrow, 100);
	CreateInvItems	(self, ItRw_Bolt, 100);

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Bosper_Pickpocket (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_Pickpocket_Condition;
	information	= Info_Mod_Bosper_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Bosper_Pickpocket_Condition()
{
	C_Beklauen	(142, ItRw_Arrow, 50);
};

FUNC VOID Info_Mod_Bosper_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

	Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_BACK, Info_Mod_Bosper_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bosper_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bosper_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);
};

FUNC VOID Info_Mod_Bosper_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

		Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bosper_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bosper_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bosper_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bosper_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bosper_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bosper_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bosper_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bosper_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bosper_EXIT (C_INFO)
{
	npc		= Mod_531_NONE_Bosper_NW;
	nr		= 1;
	condition	= Info_Mod_Bosper_EXIT_Condition;
	information	= Info_Mod_Bosper_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bosper_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bosper_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};