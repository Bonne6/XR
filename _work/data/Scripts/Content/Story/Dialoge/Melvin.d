INSTANCE Info_Mod_Melvin_Hi (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Hi_Condition;
	information	= Info_Mod_Melvin_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melvin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melvin_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_08_00"); //Hey, du, du ... Was willst du hier?

	Info_ClearChoices	(Info_Mod_Melvin_Hi);

	Info_AddChoice	(Info_Mod_Melvin_Hi, "Das Lager hier ausr�uchern, wonach sieht's denn sonst aus?", Info_Mod_Melvin_Hi_B);
	Info_AddChoice	(Info_Mod_Melvin_Hi, "Ich sehe mich nur um.", Info_Mod_Melvin_Hi_A);
};

FUNC VOID Info_Mod_Melvin_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_B_15_00"); //Das Lager hier ausr�uchern, wonach sieht's denn sonst aus?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_B_08_01"); //Genau das hab' ich bef�rchtet. Los, M�nner, macht ihn kalt!

	Info_ClearChoices	(Info_Mod_Melvin_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Melvin_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_A_15_00"); //Ich sehe mich nur um.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_08_01"); //Das ist aber schlecht. Wir, �h, wollen lieber nicht entdeckt werden.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_08_02"); //Das hei�t, weil du jetzt ja wei�t, wo wir zu finden sind, musst du unser Komplize werden. Sonst k�nntest du uns ja verpfeifen.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_08_03"); //Und das wiederum bedeutet, dass du dem Bauern sein Korn stehlen musst.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_A_08_04"); //Das brauchen wir n�mlich. Verstanden, �h, oder gibt's noch Fragen?

	Info_ClearChoices	(Info_Mod_Melvin_Hi);

	Info_AddChoice	(Info_Mod_Melvin_Hi, "Was wollt ihr denn damit anstellen?", Info_Mod_Melvin_Hi_D);
	Info_AddChoice	(Info_Mod_Melvin_Hi, "Woher bekomme ich das Korn?", Info_Mod_Melvin_Hi_C);
};

FUNC VOID Info_Mod_Melvin_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_D_15_00"); //Was wollt ihr denn damit anstellen?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_08_01"); //Das brauchen wir f�r, naja, f�rn Mittel, das wir uns basteln wollen. (Pause) Wir wollen uns halt ein bisschen Freudenspender selbst machen, kapiert?
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_D_15_02"); //Mit Korn ...?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_08_03"); //Ja, genau, mit Korn. Wir haben da so ein Rezept gefunden.
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_08_04"); //Alle anderen Zutaten haben wir schon, Skavengerdung, Schnaps und drei Fliegenpilze.
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_D_15_05"); //Und ihr meint, dass das funktioniert?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_D_08_06"); //�h, sicher. Halluzinationen garantiert, steht auf dem Rezept.

	Mod_REL_Korndiebe += 1;

	if (Mod_REL_Korndiebe == 1)
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);

		Info_AddChoice	(Info_Mod_Melvin_Hi, "Woher bekomme ich das Korn?", Info_Mod_Melvin_Hi_C);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);
	};
};

FUNC VOID Info_Mod_Melvin_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Hi_C_15_00"); //Woher bekomme ich das Korn?
	AI_Output(self, hero, "Info_Mod_Melvin_Hi_C_08_01"); //Alles, was wir brauchen, steht bei Erhard im Haus. Drei S�cke sollten reichen.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_KORNDIEBE, "Der R�uber Melvin braucht drei S�cke Korn aus dem Haus des Bauern Erhard f�r ein omin�ses Mittel, das in der Wirkung Freudenspender �hneln soll.");

	Mod_REL_Korndiebe += 1;

	if (Mod_REL_Korndiebe == 1)
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);

		Info_AddChoice	(Info_Mod_Melvin_Hi, "Was wollt ihr denn damit anstellen?", Info_Mod_Melvin_Hi_D);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melvin_Hi);
	};
};

INSTANCE Info_Mod_Melvin_Korndiebe (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Korndiebe_Condition;
	information	= Info_Mod_Melvin_Korndiebe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Der Bauer hat kein Korn mehr.";
};

FUNC INT Info_Mod_Melvin_Korndiebe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Erhard_Korndiebe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Korndiebe_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Korndiebe_15_00"); //Der Bauer hat kein Korn mehr.
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe_08_01"); //Nein, wie ist das m�glich? M�ssen wir jetzt bis zur n�chsten Ernte warten? Was sollen wir so lange machen?
	AI_Output(hero, self, "Info_Mod_Melvin_Korndiebe_15_02"); //Sucht einfach ein neues Rezept.
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe_08_03"); //Ja, das ist gut. (laut) Jungs, habt ihr das geh�rt? Wir suchen nach einem anderen Rezept!

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Melvin_Korndiebe2 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Korndiebe2_Condition;
	information	= Info_Mod_Melvin_Korndiebe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe das Korn.";
};

FUNC INT Info_Mod_Melvin_Korndiebe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_HasItems(hero, ItMi_Kornballen) == 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Erhard_Korndiebe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Korndiebe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Korndiebe2_15_00"); //Ich habe das Korn.

	B_GiveInvItems	(hero, self, ItMi_Kornballen, 3);

	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe2_08_01"); //Sehr gut. �h, wir werden dann also jetzt den Trank brauen.
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe2_08_02"); //Wenn du morgen wiederkommst, kannst du auch einen Schluck haben.

	B_LogEntry	(TOPIC_MOD_KHORATA_KORNDIEBE, "Ich habe das Korn gestohlen und kann mir einen Teil des Trankes als Belohnung abholen, wenn ich das n�chste Mal vorbei komme.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_G�ttergefallen(3, 1);

	Mod_REL_MelvinTrank = Wld_GetDay();

	CurrentNQ += 1;

	Mod_REL_Korndiebe = 3;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Melvin_Korndiebe3 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Korndiebe3_Condition;
	information	= Info_Mod_Melvin_Korndiebe3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melvin_Korndiebe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Korndiebe2))
	&& (Wld_GetDay() > Mod_REL_MelvinTrank)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Korndiebe3_Info()
{
	AI_Output(self, hero, "Info_Mod_Melvin_Korndiebe3_08_00"); //Hier ist das gute Zeug. Ist ein bisschen stark geworden, glaube ich, wir haben es noch nicht probiert.

	B_GiveInvItems	(self, hero, ItPo_FreudenspenderSuppe, 1);
};

INSTANCE Info_Mod_Melvin_Frauenkleider (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Frauenkleider_Condition;
	information	= Info_Mod_Melvin_Frauenkleider_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was tr�gst du denn da?";
};

FUNC INT Info_Mod_Melvin_Frauenkleider_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Elvira_Frauenkleider))
	&& (Mod_REL_Frauenkleider == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Frauenkleider_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_00"); //Was tr�gst du denn da?
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_08_01"); //Des Diebes neue Kleider. H�bsch, nicht?
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_02"); //Ja, schon, aber die Eigent�merin h�tte die Kleider gern zur�ck.
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_08_03"); //(entsetzt) Nein! Ich habe sie mir, �h, hart erarbeitet! Das sind jetzt meine!
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_04"); //Meinst du nicht, du machst dich damit zum Gesp�tt der Leute?
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_08_05"); //Wieso? Sind doch sch�ne Kleider!
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_06"); //(zu sich selbst) Da f�llt mir was ein. Gleich mal notieren.
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider_15_07"); //(laut) Wei� auch nicht, wie ich darauf gekommen bin.
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider_08_08"); //Siehst du. �h.

	B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Vielleicht l�sst Melvin von den Kleidern, wenn seine Kameraden ihn auslachen.");
};

INSTANCE Info_Mod_Melvin_Frauenkleider2 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Frauenkleider2_Condition;
	information	= Info_Mod_Melvin_Frauenkleider2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Brauchst du die Kleider noch?";
};

FUNC INT Info_Mod_Melvin_Frauenkleider2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Frauenkleider))
	&& (Mod_REL_Frauenkleider01 == 1)
	&& (Mod_REL_Frauenkleider02 == 1)
	&& (Mod_REL_Frauenkleider03 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melvin_Frauenkleider2_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider2_15_00"); //Brauchst du die Kleider noch?
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider2_08_01"); //Ich habe mir �berlegt, dass ich, �h, doch lieber wieder 'ne Hose anziehe. Ist irgendwie bequemer.
	AI_Output(self, hero, "Info_Mod_Melvin_Frauenkleider2_08_02"); //Mach mit den Kleidern, was du willst.

	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, ItAr_BDT_M_01);

	B_GiveInvItems	(self, hero, ItMi_Kleiderkoffer, 1);

	AI_Output(hero, self, "Info_Mod_Melvin_Frauenkleider2_15_03"); //Das werde ich.

	B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Ich muss Elvira nun ihre Kleider zur�ck bringen.");
};

INSTANCE Info_Mod_Melvin_Schutzbeduerftig (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Schutzbeduerftig_Condition;
	information	= Info_Mod_Melvin_Schutzbeduerftig_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Du zitterst ja. Ist dir kalt?";
};                       

FUNC INT Info_Mod_Melvin_Schutzbeduerftig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
	&& (Mod_Jim_Schutz < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Schutzbeduerftig_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig_15_00"); //Du zitterst ja. Ist dir kalt?
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig_08_01"); //(bibbernd) Kalt? �h, nein. Du w�rdest auch b-b-bibbern, wenn du die N�chte hier miterleben w�rdest.
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig_15_02"); //Was ist denn los?
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig_08_03"); //Vom Friedhof her kommt ein Gest�hne und Gejammere, das noch sch-schlimmer ist als bei meiner, �h, Gro�mutter.
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig_08_04"); //Wahrscheinlich brechen die Zombies allesamt aus ihren Gr�bern und planen, wie sie uns am besten auffressen k�nnen!
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig_15_05"); //Das denke ich auch.
};

INSTANCE Info_Mod_Melvin_Schutzbeduerftig2 (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Schutzbeduerftig2_Condition;
	information	= Info_Mod_Melvin_Schutzbeduerftig2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Der Friedhof ist wieder still.";
};                       

FUNC INT Info_Mod_Melvin_Schutzbeduerftig2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Schutzbeduerftig))
	&& (Mod_Jim_Schutz == 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Schutzbeduerftig2_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig2_15_00"); //Der Friedhof ist wieder still.
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig2_08_01"); //Ah. Oh. �h, danke. Hast du die Invasionsarmee aus Zombies ganz allein besiegt?
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig2_15_02"); //Selbstredend.
	AI_Output(self, hero, "Info_Mod_Melvin_Schutzbeduerftig2_08_03"); //Respekt, Mann. So einen wie, �h, dich, k�nnte ich gut in meiner Truppe gebrauchen.
	AI_Output(hero, self, "Info_Mod_Melvin_Schutzbeduerftig2_15_04"); //Lass mal gut sein.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Melvin_Bierhexen (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Bierhexen_Condition;
	information	= Info_Mod_Melvin_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Ich h�tte da eine kurze Frage an dich.";
};                       

FUNC INT Info_Mod_Melvin_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_Bierhexen2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Bierhexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_00"); //Ich h�tte da eine kurze Frage an dich.
	AI_Output(self, hero, "Info_Mod_Melvin_Bierhexen_08_01"); //Na klar, �h, wenn's schnell geht.
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_02"); //Hat einer von euch auf Erhards Gerste gepinkelt?
	AI_Output(self, hero, "Info_Mod_Melvin_Bierhexen_08_03"); //H�? Ich will das doch klauen, wieso sollte ich dann draufpinkeln?
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_04"); //Keine Ahnung. Irgendeiner hat's jedenfalls getan.
	AI_Output(hero, self, "Info_Mod_Melvin_Bierhexen_15_05"); //Und der Braumeister hat aus dem Korn Bier gebraut.
	AI_Output(self, hero, "Info_Mod_Melvin_Bierhexen_08_06"); //Ist ja eklig! Hey, Jungs, hat einer von euch auf die Gerste vom Braumeister gepisst?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Melvin_Freudenspender (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Freudenspender_Condition;
	information	= Info_Mod_Melvin_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Ich hab hier Freudenspender ...";
};                       

FUNC INT Info_Mod_Melvin_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Melvin_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Melvin_Freudenspender_15_00"); //Ich hab hier Freudenspender ...
	AI_Output(self, hero, "Info_Mod_Melvin_Freudenspender_08_01"); //Mensch, wie geil! Ich, �h, w�rd wohl was nehmen.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Melvin_Pickpocket (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_Pickpocket_Condition;
	information	= Info_Mod_Melvin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Melvin_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 250);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);

	Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_BACK, Info_Mod_Melvin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Melvin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Melvin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);
};

FUNC VOID Info_Mod_Melvin_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Melvin_Pickpocket);
};

INSTANCE Info_Mod_Melvin_EXIT (C_INFO)
{
	npc		= Mod_7505_BDT_Melvin_REL;
	nr		= 1;
	condition	= Info_Mod_Melvin_EXIT_Condition;
	information	= Info_Mod_Melvin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Melvin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melvin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};