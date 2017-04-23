INSTANCE Info_Mod_Tondral_GotoTempel (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_GotoTempel_Condition;
	information	= Info_Mod_Tondral_GotoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du wirst am Tempel erwartet.";
};

FUNC INT Info_Mod_Tondral_GotoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_GotoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Tondral_GotoTempel_15_00"); //Du wirst am Tempel erwartet.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TEMPEL");
};

INSTANCE Info_Mod_Tondral_Ken (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Ken_Condition;
	information	= Info_Mod_Tondral_Ken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tondral_Ken_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_AtTondral))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Ken_Info()
{
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_00"); //Da bist du ja. Ich habe schon bef�rchtet, dass Talas dich nicht findet.
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_01"); //Hat er auch nicht. Ich bin wegen eines Mannes namens Ken hierher gekommen.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_02"); //Das ist typisch f�r Talas. Ich werde mit ihm sprechen m�ssen. Aber wer zum Teufel ist Ken?
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_03"); //Obwohl � das kannst du mir sp�ter erz�hlen. Schau dir das hier mal an.

	B_ShowGivenThings	("Schriftst�ck erhalten");

	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_04"); //Das ist interessant. Ich glaube, es ist ein Teleportzauber.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_05"); //Wohin f�hrt er deiner Meinung nach?
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_06"); //Wahrscheinlich zu einem Ort namens Gelato.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_07"); //Gelato? Nie davon geh�rt.
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_08"); //Kann ich den Zauber haben?
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_09"); //Bist du von Sinnen? Wir werden die Spruchrolle erforschen m�ssen!

	Info_ClearChoices	(Info_Mod_Tondral_Ken);

	Info_AddChoice	(Info_Mod_Tondral_Ken, "Ich bitte dich. Es ist wichtig.", Info_Mod_Tondral_Ken_B);
};

FUNC VOID Info_Mod_Tondral_Ken_B()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_B_15_00"); //Ich bitte dich. Es ist wichtig.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_B_13_01"); //Was willst du denn damit?
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_B_15_02"); //Es geht um einen Auftrag. Mehr darf ich nicht verraten. Es ist wichtig.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_B_13_03"); //Na gut, ich denke, ich muss dir vertrauen. Hier hast du die Spruchrolle.

	B_GiveInvItems	(self, hero, ItSc_Teleport_Eisgebiet, 1);

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Ich habe nun den Teleportzauber. Ich muss das Risiko eingehen ihn zu benutzen.");

	VMG_Second = 4;

	Info_ClearChoices	(Info_Mod_Tondral_Ken);
};

INSTANCE Info_Mod_Tondral_Thys (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Thys_Condition;
	information	= Info_Mod_Tondral_Thys_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tondral_Thys_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Thys))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Thys_Info()
{
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_13_00"); //Ich habe dich schon erwartet. Wie ist es gelaufen?
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_15_01"); //Es war so, wie ich gedacht habe. Ich wurde nach Gelato teleportiert.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_13_02"); //Das ist gro�artig! Hattest du Schwierigkeiten?
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_15_03"); //Nein, es lief alles gut.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_13_04"); //Schade, dass du die Rolle verbraucht hast. Wir werden uns auf die Suche nach weiteren Zaubern machen m�ssen. Was das wieder kosten wird ...

	B_StartOtherRoutine	(Mod_2012_PSINOV_Talas_MT, "START");

	Info_ClearChoices	(Info_Mod_Tondral_Thys);

	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Hier habt ihr 1000 Goldm�nzen. Finanziert damit eure Grabungen.", Info_Mod_Tondral_Thys_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Hier habt ihr 100 Goldm�nzen. Finanziert damit eure Grabungen.", Info_Mod_Tondral_Thys_B);
	};
	Info_AddChoice	(Info_Mod_Tondral_Thys, "Ja, das wird nicht billig.", Info_Mod_Tondral_Thys_A);
};

FUNC VOID Info_Mod_Tondral_Thys_C()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_C_15_00"); //Hier habt ihr 1000 Goldm�nzen. Finanziert damit eure Grabungen.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_C_13_01"); //Tausend Dank! Hier, nimm diesen Heiltrank als Dank.

	B_GiveInvItems	(self, hero, ItPo_Health_02, 1);

	AI_Output(hero, self, "Info_Mod_Tondral_Thys_C_15_02"); //Ich danke dir. Ich muss mich jetzt auf den Weg machen.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_C_13_03"); //Pass auf dich auf.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Ich habe mit Baal Tondral gesprochen und seine weiteren Ausgrabungen finanziert. Er hat sich mit einem Heiltrank erkenntlich gezeigt. Ich sollte jetzt zur�ck zu Ferco gehen.");

	B_GivePlayerXP	(500);

	VMG_Second = 12;

	Info_ClearChoices	(Info_Mod_Tondral_Thys);
};

FUNC VOID Info_Mod_Tondral_Thys_B()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_B_15_00"); //Hier habt ihr 100 Goldm�nzen. Finanziert damit eure Grabungen.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_B_13_01"); //Vielen Dank! Hier, nimm diesen Heiltrank als Dank.

	B_GiveInvItems	(self, hero, ItPo_Health_01, 1);

	AI_Output(hero, self, "Info_Mod_Tondral_Thys_B_15_02"); //Ich danke dir. Ich muss mich jetzt auf den Weg machen.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_B_13_03"); //Pass auf dich auf.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Ich habe mit Baal Tondral gesprochen und seine weiteren Ausgrabungen finanziert. Er hat sich mit einem Heiltrank erkenntlich gezeigt. Ich sollte jetzt zur�ck zu Ferco gehen.");

	VMG_Second = 12;

	B_GivePlayerXP	(250);

	Info_ClearChoices	(Info_Mod_Tondral_Thys);
};

FUNC VOID Info_Mod_Tondral_Thys_A()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_A_15_00"); //Ja, das wird nicht billig.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_A_13_01"); //Willst du nicht ein wenig dazu beitragen?

	Info_ClearChoices	(Info_Mod_Tondral_Thys);

	Info_AddChoice	(Info_Mod_Tondral_Thys, "Nein.", Info_Mod_Tondral_Thys_D);
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Hier habt ihr 1000 Goldm�nzen. Finanziert damit eure Grabungen.", Info_Mod_Tondral_Thys_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Hier habt ihr 100 Goldm�nzen. Finanziert damit eure Grabungen.", Info_Mod_Tondral_Thys_B);
	};
};

FUNC VOID Info_Mod_Tondral_Thys_D()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_D_15_00"); //Nein.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_D_13_01"); //Du bist nicht rein. Du gehst besser.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Ich sollte jetzt zur�ck zu Ferco gehen.");

	VMG_Second = 12;

	Info_ClearChoices	(Info_Mod_Tondral_Thys);
};

INSTANCE Info_Mod_Tondral_Woher (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Woher_Condition;
	information	= Info_Mod_Tondral_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Erz�hl mir was von deiner Geschichte?";
};

FUNC INT Info_Mod_Tondral_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Woher_15_00"); //Erz�hl mir was von deiner Geschichte?
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_01"); //Man hat mich in die Kolonie geworfen, weil ich zwei B�cher �ber die G�tter geschrieben habe.
	AI_Output(hero, self, "Info_Mod_Tondral_Woher_15_02"); //Und was war daran so schlimm?
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_03"); //Nun, es scheint ihnen nicht gefallen zu haben, dass ich meine Meinung zu den G�ttern ge�u�ert habe.
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_04"); //Ich hab mich dann etwas abgesondert bei den H�tten vor dem Neuen Lager niedergelassen, bis ich dann von der Bruderschaft geh�rt habe.
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_05"); //Der Schl�fer war f�r mich eine alternative zu den �brigen G�ttern und somit wurde ich hier aufgenommen.
};

INSTANCE Info_Mod_Tondral_Buch (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Buch_Condition;
	information	= Info_Mod_Tondral_Buch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du noch Exemplare der B�cher?";
};

FUNC INT Info_Mod_Tondral_Buch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tondral_Woher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Buch_Info()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Buch_15_00"); //Hast du noch Exemplare der B�cher?
	AI_Output(self, hero, "Info_Mod_Tondral_Buch_13_01"); //Nicht hier, aber du kannst zu meiner alten H�tte gehen, dort m�sste noch jeweils ein Buch zu finden sein.
};

INSTANCE Info_Mod_Tondral_EXIT (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_EXIT_Condition;
	information	= Info_Mod_Tondral_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tondral_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tondral_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};