var int BerichtCounter;

INSTANCE Info_Mod_Dragomir_Hi (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Hi_Condition;
	information	= Info_Mod_Dragomir_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Dragomir_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dragomir_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Dragomir_Hi_12_01"); //Hi.
};

INSTANCE Info_Mod_Dragomir_Jagdgebiete (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Jagdgebiete_Condition;
	information	= Info_Mod_Dragomir_Jagdgebiete_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich bin bei allen J�gern gewesen.";
};

FUNC INT Info_Mod_Dragomir_Jagdgebiete_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nandor_WoelfeTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gaan_Dragomir))
	&& (Npc_KnowsInfo(hero, Info_Mod_Grom_Dragomir))
	&& (Npc_KnowsInfo(hero, Info_Mod_Grimbald_Erzbrocken))
	&& (Npc_HasItems(hero, ItMi_Erzbrocken_Seltsam) == 1)
	&& (Npc_HasItems(hero, ItWr_NandorToDragomir) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_15_00"); //Ich bin bei allen J�gern gewesen.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_12_01"); //Und, was sagen sie?

	Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	
	Info_AddChoice	(Info_Mod_Dragomir_Jagdgebiete, "Nandor ...", Info_Mod_Dragomir_Jagdgebiete_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_Jagdgebiete, "Grom ...", Info_Mod_Dragomir_Jagdgebiete_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_Jagdgebiete, "Grimbald ...", Info_Mod_Dragomir_Jagdgebiete_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_Jagdgebiete, "Gaan ...", Info_Mod_Dragomir_Jagdgebiete_Gaan);
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Nandor()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Nandor_15_00"); //Nandor gab mir diesen Brief hier f�r dich.

	B_GiveInvItems	(hero, self, ItWr_NandorToDragomir, 1);

	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Nandor_15_01"); //Au�erdem haben wir eine Gruppe W�lfe get�tet, die sich ziemlich unnormal verhalten haben.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Nandor_12_02"); //Zeig mal her.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Nandor_12_03"); //Hm, gut. Was war mit den W�lfen?
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Nandor_15_04"); //Nandor meinte, dass ihre Augen wirkten, wie die eines Toten. Au�erdem haben sie sich einfach anders als andere W�lfe verhalten.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Nandor_12_05"); //Gut, danke.

	BerichtCounter += 1;

	if (BerichtCounter == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_00"); //So, wie ich sehe hast du alle J�ger befragt, nicht schlecht. Es geh�rt schon was dazu, hier durch die W�lder zu streifen.
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_01"); //Hier, nimm das als Belohnung f�r deine M�hen, es ist etwas besonderes.

		CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Ruestung, 1);
		B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Ruestung, 1);

		B_GivePlayerXP	(500);

		if (Mod_AnzahlNebengilden < MaxNebengilden)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_02"); //Wenn du willst, werde ich dich jetzt in unsere Reihen aufnehmen.
		};

		B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Ich habe Dragomir von den J�gern berichtet.");
		B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_SUCCESS);		

		Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	};
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Grom()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grom_15_00"); //Grom h�lt sich immer noch bei den S�ldnern auf, ihm ist aber zu Ohren gekommen, dass die Feldr�uber den S�ldnern wohl ordentlich �rger bereiten.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Grom_12_01"); //Feldr�uber? (lacht kurz auf) L�stige Biester sind das, aber zum Gl�ck ziemlich harmlos f�r einen fortgeschrittenen K�mpfer.

	BerichtCounter += 1;

	if (BerichtCounter == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_00"); //So, wie ich sehe hast du alle J�ger befragt, nicht schlecht. Es geh�rt schon was dazu, hier durch die W�lder zu streifen.
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_01"); //Hier, nimm das als Belohnung f�r deine M�hen, es ist etwas besonderes.

		CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Ruestung, 1);
		B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Ruestung, 1);

		B_GivePlayerXP	(500);

		if (Mod_AnzahlNebengilden < MaxNebengilden)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_02"); //Wenn du willst, werde ich dich jetzt in unsere Reihen aufnehmen.
		};

		B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Ich habe Dragomir von den J�gern berichtet.");
		B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_SUCCESS);		

		Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	};
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Grimbald()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_15_00"); //Grimbald ist fasziniert von dem Troll und hat von dort aus einen hervorragenden Blick �bers Tal. Er hat einen merkw�rdigen Erzbrocken bei einer Gruppe Snapper gefunden, die den Schwarzen Troll angegriffen haben.
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_15_01"); //Er hat ihn mir f�r dich mitgegeben, vielleicht kannst du etwas damit anfangen.

	B_GiveInvItems	(hero, self, ItMi_Erzbrocken_Seltsam, 1);

	if (Npc_KnowsInfo(hero, Info_Mod_Grimbald_NandorGrom))
	{
		AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_15_02"); //Ach ja. Und da oben im Wald geht auch was ab.
	};

	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_12_03"); //Merkw�rdiges Zeug, das wirkt auf mich ganz und gar nicht gut. Wenn ich es nicht besser w�sste, w�rde ich sagen, dass von diesem Erz nichts gutes kommt.
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_15_04"); //(skeptisch) Du meinst, der Klumpen Erz dort ist b�se?
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Grimbald_12_05"); //He, was gibt es da zu lachen! Aber ja, so in etwa k�nnte man es auch ausdr�cken ... Nimm den Brocken am besten wieder, vielleicht kennst du jemanden, der mehr dar�ber herausfinden kann.

	B_GiveInvItems	(self, hero, ItMi_Erzbrocken_Seltsam, 1);

	Mod_JG_GrimbaldTeacher = 1;

	BerichtCounter += 1;

	if (BerichtCounter == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_00"); //So, wie ich sehe hast du alle J�ger befragt, nicht schlecht. Es geh�rt schon was dazu, hier durch die W�lder zu streifen.
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_01"); //Hier, nimm das als Belohnung f�r deine M�hen, es ist etwas besonderes.

		CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Ruestung, 1);
		B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Ruestung, 1);

		B_GivePlayerXP	(500);

		if (Mod_AnzahlNebengilden < MaxNebengilden)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_02"); //Wenn du willst, werde ich dich jetzt in unsere Reihen aufnehmen.
		};

		B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Ich habe Dragomir von den J�gern berichtet.");
		B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_SUCCESS);		

		Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	};
};

FUNC VOID Info_Mod_Dragomir_Jagdgebiete_Gaan()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Gaan_15_00"); //Gaan beobachtet weiter den Pass, h�lt die Wiese dort aber sehr geeignet f�r die Jagd. Ein paar Snapper hat er auch gesehen.
	AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Gaan_12_01"); //Snapper? Nichts besonderes in der Gegend.
	AI_Output(hero, self, "Info_Mod_Dragomir_Jagdgebiete_Gaan_15_03"); //Nein, wirklich nicht ...

	BerichtCounter += 1;

	if (BerichtCounter == 4)
	{
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_00"); //So, wie ich sehe hast du alle J�ger befragt, nicht schlecht. Es geh�rt schon was dazu, hier durch die W�lder zu streifen.
		AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_01"); //Hier, nimm das als Belohnung f�r deine M�hen, es ist etwas besonderes.

		CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Ruestung, 1);
		B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Ruestung, 1);

		B_GivePlayerXP	(500);

		if (Mod_AnzahlNebengilden < MaxNebengilden)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Jagdgebiete_Fertig_12_02"); //Wenn du willst, werde ich dich jetzt in unsere Reihen aufnehmen.
		};

		B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Ich habe Dragomir von den J�gern berichtet.");
		B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_SUCCESS);		

		Info_ClearChoices	(Info_Mod_Dragomir_Jagdgebiete);
	};
};

INSTANCE Info_Mod_Dragomir_Aufnahme (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Aufnahme_Condition;
	information	= Info_Mod_Dragomir_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich will J�ger werden.";
};

FUNC INT Info_Mod_Dragomir_Aufnahme_Condition()
{
	if (BerichtCounter == 4)
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Aufnahme_15_00"); //Ich will J�ger werden.
	AI_Output(self, hero, "Info_Mod_Dragomir_Aufnahme_12_01"); //Hiermit bist du auch als J�ger aufgenommen.

	Mod_AnzahlNebengilden += 1;

	J�ger_Dabei = TRUE;

	Mod_DragomirsLager = Wld_GetDay();

	B_G�ttergefallen(2, 2);

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry_NS	(TOPIC_MOD_NEBENGILDEN, "Ich bin jetzt ein Mitglied der Waldl�ufer.");
};

INSTANCE Info_Mod_Dragomir_ToDoChapter1 (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_ToDoChapter1_Condition;
	information	= Info_Mod_Dragomir_ToDoChapter1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du noch mehr f�r mich zu tun?";
};

FUNC INT Info_Mod_Dragomir_ToDoChapter1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Jagdgebiete))
	&& (J�ger_Dabei == TRUE)
	&& (Kapitel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_ToDoChapter1_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_00"); //Hast du noch mehr f�r mich zu tun?
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_01"); //Ja, h�tte ich. Wahrscheinlich hast du dich ein wenig gewundert, dass die Feldr�uber bei den S�ldnern so aufdringlich waren, oder?
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_02"); //Nunja, ein wenig.
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_03"); //Nun, dass kommt davon, dass wir ihrer Population ... sagen wir mal ein bisschen unterst�tzt haben.
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_04"); //Aha.
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_05"); //Ja, die Bauern haben immer mehr Wald abgebrannt und die Tiere get�tet um ihre Felder auszuweiten. Das konnten wir einfach nicht mehr guthei�en.
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_06"); //Was habt ihr gemacht?
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_07"); //Wir haben unter anderem Feldr�ubereier in ihren Nistpl�tzen versteckt und die Herde ein wenig vermehrt.
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_08"); //Und was habe ich damit zu tun?
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_09"); //Nun, ich h�tte hier noch ein paar und das bisschen �rger, das sie den S�ldnern zur Zeit bereiten, reicht einfach noch nicht.
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_10"); //Also soll ich ...
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_11"); //Genau. Hier, du nimm diesen Trank ein, bevor du in ihr Nest gehst. Damit werden sie dich am Geruch nicht von ihren Artgenossen unterscheiden k�nnen und nicht angreifen.

	CreateInvItems	(self, ItPo_Feldraeubertrank, 1);
	B_GiveInvItems	(self, hero, ItPo_Feldraeubertrank, 1);

	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_12"); //Dann legst du in ihrem Nest diesen Eimer voller Eier ab. Das d�rften noch ein paar Hundert von den Viechern sein, die in den n�chsten Tagen schl�pfen m�ssten.

	CreateInvItems	(self, ItMi_Feldraeubereier, 1);
	B_GiveInvItems	(self, hero, ItMi_Feldraeubereier, 1);

	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_15_13"); //Oha. Ich hoffe f�r dich, dass der Trank funktioniert.
	AI_Output(self, hero, "Info_Mod_Dragomir_ToDoChapter1_12_14"); //Was denkst du denn wie wir das beim letzten Mal gemacht haben, he?

	Info_ClearChoices	(Info_Mod_Dragomir_ToDoChapter1);

	Info_AddChoice	(Info_Mod_Dragomir_ToDoChapter1, "In Ordnung, ich mach's.", Info_Mod_Dragomir_ToDoChapter1_Ja);
	Info_AddChoice	(Info_Mod_Dragomir_ToDoChapter1, "Ich glaub, ich lass es lieber. So ein wiederliches Zeug ...", Info_Mod_Dragomir_ToDoChapter1_Nein);
};

FUNC VOID Info_Mod_Dragomir_ToDoChapter1_Ja()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_Ja_15_00"); //In Ordnung, ich mach's.

	Log_CreateTopic	(TOPIC_MOD_JG_BUGS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_BUGS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_BUGS, "Ich soll f�r Dragomir einen Eimer mit Feldr�ubereiern in der Feldr�ubrh�hle nahe Onars Hof ausleeren.");

	Bug_Mission = TRUE;

	Info_ClearChoices	(Info_Mod_Dragomir_ToDoChapter1);
};

FUNC VOID Info_Mod_Dragomir_ToDoChapter1_Nein()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_ToDoChapter1_Nein_15_00"); //Ich glaub, ich lass es lieber. So ein wiederliches Zeug ...

	Npc_RemoveInvItems	(hero, ItPo_Feldraeubertrank, 1);

	Npc_RemoveInvItems	(hero, ItMi_Feldraeubereier, 1);

	B_ShowGivenThings	("Trank und Eimer mit Feldr�ubereiern gegeben");

	Info_ClearChoices	(Info_Mod_Dragomir_ToDoChapter1);
};	

INSTANCE Info_Mod_Dragomir_EimerLeer (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_EimerLeer_Condition;
	information	= Info_Mod_Dragomir_EimerLeer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Der Eimer ist in ihrem Nest.";
};

FUNC INT Info_Mod_Dragomir_EimerLeer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_ToDoChapter1))
	&& (Mod_EimerAusgeleert == TRUE)
	&& (Bug_Mission == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_EimerLeer_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_EimerLeer_15_00"); //Der Eimer ist in ihrem Nest.
	AI_Output(self, hero, "Info_Mod_Dragomir_EimerLeer_12_01"); //Sehr gut. Hier, nimm das als Belohnung.

	B_GivePlayerXP	(100);

	CreateInvItems	(self, ItMi_Gold, 100);
	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_JG_BUGS, LOG_SUCCESS);

	B_G�ttergefallen(2, 1);	
};

INSTANCE Info_Mod_Dragomir_BurnedLager (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_BurnedLager_Condition;
	information	= Info_Mod_Dragomir_BurnedLager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragomir_BurnedLager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Jagdgebiete))
	&& (Mod_Drago == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_BurnedLager_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_12_00"); //Ah, du. Endlich. Ich dachte schon, hier w�rde sich niemand hinwagen, au�er diesen wiederlichen Viechern aus dem Wald. Sag mal, kannst du f�r mich was erledigen?

	Wld_SendUntrigger	("DRAGOMIRSFEUER");
	Wld_SendUntrigger	("DRAGOMIRSMOKE");
	
	Info_ClearChoices	(Info_Mod_Dragomir_BurnedLager);
	
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Nein, daf�r habe ich jetzt keine Zeit.", Info_Mod_Dragomir_BurnedLager_C);
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Was soll ich f�r dich tun?", Info_Mod_Dragomir_BurnedLager_B);
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Was macht ihr hier eigentlich in dieser Wildnis?", Info_Mod_Dragomir_BurnedLager_A);
};

FUNC VOID Info_Mod_Dragomir_BurnedLager_C()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_BurnedLager_C_15_00"); //Nein, daf�r habe ich jetzt keine Zeit.
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_C_12_01"); //Dann hinfort mit dir und st�r uns nicht bei der Arbeit.		

	Mod_Drago = 3;

	Info_ClearChoices	(Info_Mod_Dragomir_BurnedLager);
};

FUNC VOID Info_Mod_Dragomir_BurnedLager_B()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_BurnedLager_B_15_00"); //Was soll ich f�r dich tun?
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_B_12_01"); //Gut, h�r zu. Die Waldl�ufer und Druiden haben im Minental gerade eine Art Versammlung. Richte ihnen aus, wie es um uns steht und bitte sie, uns Verst�rkung zu schicken.
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_B_12_02"); //Hier, auf der Karte habe ich ihren Aufenthaltsort f�r dich markiert. Beeil dich.

	B_GiveInvItems	(self, hero, ItWr_EremitenCamp, 1);

	Mod_Drago = 4;

	B_LogEntry	(TOPIC_MOD_JG_LAGER, "Dragomir hat mir erz�hlt, dass das Lager von Schwarzmagiern und Banditen �berfallen wurde. Er bat mich bei den Druiden und Waldl�ufern im Minental Verst�rkung anzufordern.");

	Info_ClearChoices	(Info_Mod_Dragomir_BurnedLager);
};

FUNC VOID Info_Mod_Dragomir_BurnedLager_A()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_BurnedLager_A_15_00"); //Was macht ihr hier eigentlich in dieser Wildnis?
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_A_12_01"); //Wir mussten hierhin fl�chten. Einige Schwarzmagier griffen uns an, unterst�tzt wurden sie dazu noch von Banditen.
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_A_12_02"); //Wir k�nnen von Gl�ck reden, dass sie sich in dieser Gegend nicht so gut auskennen, sonst w�ren wir schon l�ngst �berw�ltigt worden. Aber lange werden sie nichtmehr brauchen, uns aufzusp�ren.
	AI_Output(self, hero, "Info_Mod_Dragomir_BurnedLager_A_12_03"); //Du siehst, die Situation ist ernst, hilfst du uns nun?

	Info_ClearChoices	(Info_Mod_Dragomir_BurnedLager);
	
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Nein, daf�r habe ich jetzt keine Zeit.", Info_Mod_Dragomir_BurnedLager_C);
	Info_AddChoice	(Info_Mod_Dragomir_BurnedLager, "Was soll ich f�r dich tun?", Info_Mod_Dragomir_BurnedLager_B);
};

INSTANCE Info_Mod_Dragomir_WillQuestDoch (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_WillQuestDoch_Condition;
	information	= Info_Mod_Dragomir_WillQuestDoch_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Dragomir_WillQuestDoch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_BurnedLager))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_Drago == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_WillQuestDoch_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragomir_WillQuestDoch_12_00"); //Hast du dich doch noch dazu entschlossen, uns zu helfen?
	
	Info_ClearChoices	(Info_Mod_Dragomir_WillQuestDoch);
	
	Info_AddChoice	(Info_Mod_Dragomir_WillQuestDoch, "Nein, daf�r habe ich jetzt keine Zeit.", Info_Mod_Dragomir_BurnedLager_C);
	Info_AddChoice	(Info_Mod_Dragomir_WillQuestDoch, "Was soll ich f�r dich tun?", Info_Mod_Dragomir_BurnedLager_B);
};

INSTANCE Info_Mod_Dragomir_HilfeII (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_HilfeII_Condition;
	information	= Info_Mod_Dragomir_HilfeII_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bei Adanos! Was war hier los?";
};

FUNC INT Info_Mod_Dragomir_HilfeII_Condition()
{
	if (Mod_JG_DragoHilfe2 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_HilfeII_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_00"); //Bei Adanos! Was war hier los?
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_01"); //Ich wei� es nicht! Die Meute kam aus dem dunklen Wald. Und das waren nicht die Ersten.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_02"); //Hat einer der Feinde �berlebt, den man ausfragen kann.
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_03"); //Ich glaub nicht. Es r�hrt sich keiner mehr.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_04"); //Hm. Es hat was mit einem Khorgor zu tun. Scheinbar ein irrer Magier. Mehr wissen wir nicht.
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_05"); //Aber warum wir J�ger und Waldl�ufer? Wir geh�ren doch zu den Harmlosesten auf der Insel.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_06"); //Wir wissen es nicht genau. Aber wir werden diesen Khorgor erwischen.
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_07"); //Dein Wort in Adanos Ohr! Und wie geht's weiter?
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_08"); //Keine Ahnung. Ich sollte euch nur unterst�tzen, wenn n�tig.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_09"); //Ich gehe zur�ck ins Minental. Habe da noch einiges zu erledigen.
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_10"); //Adanos mit dir! Ich halte hier die Stellung.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_11"); //Wer k�mmert sich um Nandor und Ruga?
	AI_Output(self, hero, "Info_Mod_Dragomir_HilfeII_12_12"); //Ich lass die Kr�uterhexe kommen.
	AI_Output(hero, self, "Info_Mod_Dragomir_HilfeII_15_13"); //Gut. Und viel Gl�ck noch.

	B_LogEntry	(TOPIC_MOD_JG_DRAGOMIRHILFE2, "Hier war der Kampf in vollem Gange, als ich eintraf. Mit M�he haben wir gesiegt. Wild ist gefallen, Nandor und Ruga sind verletzt. Ich muss das Cyrco berichten.");

	B_StartOtherRoutine	(Mod_1937_JGR_Nandor_NW, "KO");
	B_StartOtherRoutine	(Mod_749_MIL_Ruga_NW, "KO");

	B_KillNpc	(Mod_7413_JG_Wild_NW);
};

INSTANCE Info_Mod_Dragomir_Untier (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Untier_Condition;
	information	= Info_Mod_Dragomir_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ist dir in letzter Zeit etwas Ungew�hnliches begegnet?";
};

FUNC INT Info_Mod_Dragomir_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Untier_15_00"); //Ist dir in letzter Zeit etwas Ungew�hnliches begegnet?
	AI_Output(self, hero, "Info_Mod_Dragomir_Untier_12_01"); //Hmm, ja, vor ein paar Tagen liefen hier einige dieser D�monenmagier durch die Gegend und haben ihre finsteren Rituale durchgef�hrt.
	AI_Output(self, hero, "Info_Mod_Dragomir_Untier_12_02"); //Der Boden wies zun�chst ungew�hnliche Ver�nderungen auf, aber ...
	AI_Output(hero, self, "Info_Mod_Dragomir_Untier_15_03"); //Ja, das hatte ich schon.
};

INSTANCE Info_Mod_Dragomir_WhoAreYou (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_WhoAreYou_Condition;
	information	= Info_Mod_Dragomir_WhoAreYou_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer seid ihr?";
};

FUNC INT Info_Mod_Dragomir_WhoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_WhoAreYou_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WhoAreYou_15_00"); //Wer seid ihr?
	AI_Output(self, hero, "Info_Mod_Dragomir_WhoAreYou_12_01"); //Wir sind J�ger in den W�ldern vor Khorinis und verkaufen unsere Beute meist an die H�ndler in der Stadt. Hier haben wir eines unserer Lager.
};

INSTANCE Info_Mod_Dragomir_LohntEsSich (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_LohntEsSich_Condition;
	information	= Info_Mod_Dragomir_LohntEsSich_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lohnt sich die Jagd hier?";
};

FUNC INT Info_Mod_Dragomir_LohntEsSich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_LohntEsSich_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_LohntEsSich_15_00"); //Lohnt sich die Jagd hier?
	AI_Output(self, hero, "Info_Mod_Dragomir_LohntEsSich_12_01"); //Oh ja. In den W�ldern hier wimmelt es von Tieren. Man darf sich nur nicht zu weit hinein wagen.
	AI_Output(hero, self, "Info_Mod_Dragomir_LohntEsSich_15_02"); //Warum nicht?
	AI_Output(self, hero, "Info_Mod_Dragomir_LohntEsSich_12_03"); //W�rdest du laufende Skelette und verr�ckte Goblins als jagbare Tiere ansehen?
	AI_Output(hero, self, "Info_Mod_Dragomir_LohntEsSich_15_04"); //Eigentlich nicht.
	AI_Output(self, hero, "Info_Mod_Dragomir_LohntEsSich_12_05"); //Na also.
};

INSTANCE Info_Mod_Dragomir_WerBistDu (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_WerBistDu_Condition;
	information	= Info_Mod_Dragomir_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Und wer bist du?";
};

FUNC INT Info_Mod_Dragomir_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WerBistDu_15_00"); //Und wer bist du?
	AI_Output(self, hero, "Info_Mod_Dragomir_WerBistDu_12_01"); //Ich hei�e Dragomir und bin der Anf�hrer dieses Lagers.
};

INSTANCE Info_Mod_Dragomir_MitmachenPre (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_MitmachenPre_Condition;
	information	= Info_Mod_Dragomir_MitmachenPre_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kann ich mich den J�gern anschlie�en?";
};

FUNC INT Info_Mod_Dragomir_MitmachenPre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_MitmachenPre_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_MitmachenPre_15_00"); //Kann ich mich den J�gern anschlie�en?
	AI_Output(self, hero, "Info_Mod_Dragomir_MitmachenPre_12_01"); //Geh�rst du einer Gilde an?
	AI_Output(hero, self, "Info_Mod_Dragomir_MitmachenPre_15_02"); //Bis jetzt noch nicht.
	AI_Output(self, hero, "Info_Mod_Dragomir_MitmachenPre_12_03"); //Dann komm wieder, wenn du Mitglied einer Gilde bist. Hast ja noch nichts auf den Rippen. Bei uns geht's manchmal ruppig zu.
};

INSTANCE Info_Mod_Dragomir_Bosper (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Bosper_Condition;
	information	= Info_Mod_Dragomir_Bosper_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich soll dich von Bosper gr��en. Er braucht neue Felle.";
};

FUNC INT Info_Mod_Dragomir_Bosper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bosper_OtherHunters))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Bosper_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Bosper_15_00"); //Ich soll dich von Bosper gr��en. Er braucht neue Felle.
	AI_Output(self, hero, "Info_Mod_Dragomir_Bosper_12_01"); //Ach ja. Ich hab hier einen Stapel. K�nntest du ...

	B_GiveInvItems	(self, hero, ItMi_Wolfsfelle, 1);

	AI_Output(hero, self, "Info_Mod_Dragomir_Bosper_15_02"); //Die Ausliefern? Wenn ich dir damit einen Gefallen tue, gerne.
	AI_Output(self, hero, "Info_Mod_Dragomir_Bosper_12_03"); //Sag ihm, wir rechnen ab, wenn ich in die Stadt komme.
	AI_Output(hero, self, "Info_Mod_Dragomir_Bosper_15_04"); //Bin schon unterwegs.

	Log_CreateTopic	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BOSPER_FELLLIEFERUNG, "Ich soll die Felle von Dragomir dem Bosper bringen. Das bringt sicher Punkte f�r die Aufnahme.");
};

INSTANCE Info_Mod_Dragomir_AllesKlar (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_AllesKlar_Condition;
	information	= Info_Mod_Dragomir_AllesKlar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Und kommt ihr zurecht?";
};

FUNC INT Info_Mod_Dragomir_AllesKlar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_AllesKlar_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_AllesKlar_15_00"); //Und kommt ihr zurecht?
	AI_Output(self, hero, "Info_Mod_Dragomir_AllesKlar_12_01"); //Es reicht zum �berleben.
};

INSTANCE Info_Mod_Dragomir_Mitmachen (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Mitmachen_Condition;
	information	= Info_Mod_Dragomir_Mitmachen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kann ich bei euch mitmachen?";
};

FUNC INT Info_Mod_Dragomir_Mitmachen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_WhoAreYou))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Mitmachen_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Mitmachen_15_00"); //Kann ich bei euch mitmachen?
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_01"); //Das kann ich nicht alleine entscheiden. Aber wo du gerade fragst, ich h�tte da etwas, was du f�r mich tun k�nntest.
	AI_Output(hero, self, "Info_Mod_Dragomir_Mitmachen_15_02"); //Um was geht es?
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_03"); //Einige J�ger von uns haben sich �ber das Land verteilt und suchen gute Jagdgebiete. Ich m�chte, dass du bei ihnen vorbeischaust und sie fragst, wie es bei ihnen aussieht.
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_04"); //Dann m�ssen sie nicht den ganzen Weg hin und her rennen.
	AI_Output(hero, self, "Info_Mod_Dragomir_Mitmachen_15_05"); //Wo halten sich die J�ger auf?
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_06"); //Es sind insgesamt vier J�ger unterwegs. Gaan, Nandor, Grimbald und Grom.
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_07"); //Gaan h�lt sich am Pass zum Minental auf, Grom m�sstest du auf Onars Hof bei den S�ldnern finden, er wollte sich dort umh�ren.
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_08"); //Nandor ist in den dunklen Wald gegangen. Soweit ich weiss, befindet sich dort irgendwo einer dieser Steinkreise, such dort nach ihm.
	AI_Output(self, hero, "Info_Mod_Dragomir_Mitmachen_12_09"); //Grimbald ist an einem See, in der N�he der H�hle des schwarzen Trolles. Er wollte sich das Biest mal ansehen. Falls er die Begegnung �berlebt hat, findest du ihn bestimt noch dort.

	Log_CreateTopic	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_JAGDGEBIETE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Dragomir hat mich gebeten die vier J�ger Gaan, Nandor, Grimbald und Grom aufzusuchen. Gaan befindet sich am Pass zum Minental, Grom ist auf Onars Hof, Nandor ist im dunklen Wald in der N�he eines Steinkreises und Grimbald ist an einem See in der n�he des schwarzen Trolls.");
};

INSTANCE Info_Mod_Dragomir_WoIst (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_WoIst_Condition;
	information	= Info_Mod_Dragomir_WoIst_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wo finde ich ...";
};

FUNC INT Info_Mod_Dragomir_WoIst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Jagdgebiete))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_WoIst_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_15_00"); //Wo finde ich ...

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

FUNC VOID Info_Mod_Dragomir_WoIst_BACK()
{
	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);
};

FUNC VOID Info_Mod_Dragomir_WoIst_Nandor()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_Nandor_15_00"); //... Nandor?
	AI_Output(self, hero, "Info_Mod_Dragomir_WoIst_Nandor_12_01"); //Nandor ist im dunklen Wald, irgendwo in der N�he eines Steinkreises.

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

FUNC VOID Info_Mod_Dragomir_WoIst_Grom()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_Grom_15_00"); //... Grom?
	AI_Output(self, hero, "Info_Mod_Dragomir_WoIst_Grom_12_01"); //Er ist auf Onars Hof bei den S�ldnern.

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

FUNC VOID Info_Mod_Dragomir_WoIst_Grimbald()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_Grimbald_15_00"); //... Grimbald?
	AI_Output(self, hero, "Info_Mod_Dragomir_WoIst_Grimbald_12_01"); //Grimbald ist beim See in der N�he des schwarzen Trolls.

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

FUNC VOID Info_Mod_Dragomir_WoIst_Gaan()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_WoIst_Gaan_15_00"); //... Gaan?
	AI_Output(self, hero, "Info_Mod_Dragomir_WoIst_Gaan_12_01"); //Gaan ist am Pass zum Minental.

	Info_ClearChoices	(Info_Mod_Dragomir_WoIst);

	Info_AddChoice	(Info_Mod_Dragomir_WoIst, DIALOG_BACK, Info_Mod_Dragomir_WoIst_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Nandor", Info_Mod_Dragomir_WoIst_Nandor);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grom", Info_Mod_Dragomir_WoIst_Grom);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Grimbald", Info_Mod_Dragomir_WoIst_Grimbald);
	Info_AddChoice	(Info_Mod_Dragomir_WoIst, "Gaan", Info_Mod_Dragomir_WoIst_Gaan);
};

INSTANCE Info_Mod_Dragomir_Pedro (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Pedro_Condition;
	information	= Info_Mod_Dragomir_Pedro_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du einen Feuer Novizen gesehen?";
};

FUNC INT Info_Mod_Dragomir_Pedro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Isgaroth_Pedro))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Parlan_Ring_Zurueck))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Pedro_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Pedro_15_00"); //Hast du einen Feuer Novizen gesehen?
	AI_Output(self, hero, "Info_Mod_Dragomir_Pedro_12_01"); //Nat�rlich hab ich einen Feuer Novizen gesehen. Ich seh jeden Tag einen.
	AI_Output(hero, self, "Info_Mod_Dragomir_Pedro_15_02"); //Hast du heute auch schon einen gesehen.
	AI_Output(self, hero, "Info_Mod_Dragomir_Pedro_12_03"); //Klar, dich.
	AI_Output(hero, self, "Info_Mod_Dragomir_Pedro_15_04"); //Und au�er mir?
	AI_Output(self, hero, "Info_Mod_Dragomir_Pedro_12_05"); //Ach ja, jetzt erinnere ich mich. Vorhin ist ein Novize in die Taverne gerannt. Er schien es ziemlich eilig zu haben.
	AI_Output(hero, self, "Info_Mod_Dragomir_Pedro_15_06"); //Danke.
	AI_output(self, hero, "Info_Mod_Dragomir_Pedro_12_07"); //Kein Problem.

	B_LogEntry	(TOPIC_MOD_PARLAN_FEUERRING, "Dragomir hat gesehen wie Pedro in die Taverne gerannt ist.");
};

INSTANCE Info_Mod_Dragomir_Orlan (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Orlan_Condition;
	information	= Info_Mod_Dragomir_Orlan_Info;
	permanent	= 0;
	important	= 0;
	description	= "Orlan sagt, dass kein Novize in seine Taverne gegangen ist.";
};

FUNC INT Info_Mod_Dragomir_Orlan_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Pedro))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Orlan_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Orlan_15_00"); //Orlan sagt, dass kein Novize in seine Taverne gegangen ist.
	AI_Output(self, hero, "Info_Mod_Dragomir_Orlan_12_01"); //Dann hat wohl einer von uns beiden gelogen.
	AI_Output(hero, self, "Info_Mod_Dragomir_Orlan_15_02"); //Ich sch�tze mal du hast mich angelogen.
	AI_Output(self, hero, "Info_Mod_Dragomir_Orlan_12_03"); //Na warte, sowas muss ich mir nicht gefallen lassen.

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
};

INSTANCE Info_Mod_Dragomir_Niederlage (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Niederlage_Condition;
	information	= Info_Mod_Dragomir_Niederlage_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragomir_Niederlage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Orlan))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Niederlage_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Niederlage_12_00"); //Ok, Ok, ich hab gelogen.
			AI_Output(hero, self, "Info_Mod_Dragomir_Niederlage_15_01"); //Also sagst du mir jetzt wo Pedro ist oder muss ich nochmal?
			AI_Output(self, hero, "Info_Mod_Dragomir_Niederlage_12_02"); //Jaja. Wenn du dem Weg hier folgst findest auf der rechten Seite etwas abgelegen ein Lager. Dort h�lt er sich versteckt.

			B_LogEntry	(TOPIC_MOD_PARLAN_FEUERRING, "Pedro h�lt sich in einem Lager versteckt, dass sich hinter dem Lager von Dragomir befindet.");

			B_G�ttergefallen(1, 1);
		}
		else if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Dragomir_Niederlage_12_03"); //Das n�chste mal solltest du es dir zweimal �berlegen bevor du mich als L�gner bezeichnest.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
		AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Dragomir_Plage (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Plage_Condition;
	information	= Info_Mod_Dragomir_Plage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du als Waldl�ufer hast doch bestimmt Kenntnis �ber die Fauna und Flora, auch die von Gew�ssern.";
};

FUNC INT Info_Mod_Dragomir_Plage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_Plage))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Plage_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_00"); //Du als Waldl�ufer hast doch bestimmt Kenntnis �ber die Fauna und Flora, auch die von Gew�ssern.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_01"); //Ja, da bist du bei mir richtig. Worum geht es?
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_02"); //Nun, aus dem See im Neuen Lager entsteigen lauter W�rmer und Krabben, die die gesamte Umgebung heimsuchen.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_03"); //Der See im Neuen Lager?! So weit ich mich erinnere soll dort doch ein Staudamm errichtet worden sein.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_04"); //Und die urspr�ngliche Tierwelt habt ihr dort bestimmt auch ordentlich dezimiert, stimmt�s?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_05"); //Es w�rde mich wundern, wenn man dort noch einen einzigen Lurker finden w�rde.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_06"); //(verlegen) Ohh, �hh, nun ... aber woher ...?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_07"); //Wie t�richt doch die Menschen sind. Verheeren ihre Umgebung und glauben, dass dies unges�hnt bliebe.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_08"); //Was meinst du, wie es kommt, dass sich so viele Sumpfhaie und Blutfliegen gerade im Sumpf finden?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_09"); //Herrliche stehende Gew�sser, wo sich die Eier der Sumpffliegen und die Sporen der Sumpfhaie zu Larven entwickeln k�nnen ... und vor allem ohne ihre Fressfeinde, die Lurker.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_10"); //Ihr keilt den See in einen Staudamm ein und rottet die Lurker aus?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_11"); //Geschieht auch ganz recht, ihr seid selbst schuld, an dem, was nun mit dem See passiert.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_12"); //Aber kann man denn gar nichts machen, um das was geschieht zu stoppen?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_13"); //Tjaa ... ihr m�sstet zumindest den Schaden, welchen ihr an der Tierwelt des Sees begangen habt, wieder beheben.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_14"); //Das hie�e ja aber, die Lurker wieder ...
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_15"); //Ganz genau.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_16"); //Wie sollte das zu schaffen sein?
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_17"); //Ich kann schlecht ein ausgewachsenes Tier ins Lager schleifen ... und die Brutsaison ist schon um, sodass es keine Lurkereier mehr gibt.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_18"); //Deine Kenntnis �ber die Brutzeiten der Lurker �berrascht mich ...
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_19"); //Tja, nun ...
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_20"); //Sie scheint aber nicht vollkommen zu sein.
	AI_Output(hero, self, "Info_Mod_Dragomir_Plage_15_21"); //Wie, was meinst du damit?
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_22"); //Zwar haben die Lurker im Minental und nahe Khorinis schon gebr�tet, das stimmt ... aber die ihre Artgenossen im Norden der Insel, genannt Relendel, sind da einige Wochen sp�ter dran.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_23"); //Wenn du Gl�ck hast, findest du dort nahe dem See noch einige Eier.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_24"); //Wenn du zumindest drei davon in einer Lurkerh�hle beim See des Neuen Lagers ablegst, so sollte sich der Zustand eures Gew�ssers in nicht allzu langer Zeit wieder normalisieren.
	AI_Output(self, hero, "Info_Mod_Dragomir_Plage_12_25"); //Ich hoffe aber, dass dieser Zwischenfall dir und den anderen S�ldnern eine Lehre von Dauer sein wird.

	B_LogEntry	(TOPIC_MOD_NL_PLAGE, "Dragomir meinte, dass ich beim See in Relendel noch Lurkereier finden k�nnte. Wenn ich drei davon in der Lurkerh�hle im Neuen Lager deponiere, m�sste die Plage bald Geschichte sein. Die Eier werden sich vermutlich in einer H�hle im gro�e See befinden. Die Stelle, wo ich tauchen muss, wird sicher durch Lurker am Strand angezeigt.");

	Mod_NL_JeremiahHasEier = 3;

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Dragomir_Leichengase (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Leichengase_Condition;
	information	= Info_Mod_Dragomir_Leichengase_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich brauche deine Hilfe.";
};

FUNC INT Info_Mod_Dragomir_Leichengase_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Caine_Leichengase4))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lobart_Leichengase2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hyglas_Leichengase))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_Leichengase_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_00"); //Ich brauche deine Hilfe.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_01"); //Wobei?
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_02"); //Ich hab hier einen Sack voll Kr�uter, die ich einen Troll verf�ttern muss.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_03"); //(lacht herzhaft) Du willst einem Troll dieses Gem�se verf�ttern?
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_04"); //Wir sprechen schon von dem gleichen Wesen, oder?
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_05"); //Drei Meter gro�, ziemlich haarig, Mundgeruch wie Beliars Arsch ... und warte, da war doch noch was. Ach ja, FLEISCHFRESSER!
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_06"); //Wenn der Troll das Zeug einfach fressen w�rde, br�uchte ich wohl kaum deine Hilfe.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_07"); //Was soll der ganze Schei� �berhaupt? Ach lass stecken, ich will�s gar nicht wissen.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_08"); //Wenn du wirklich willst, dass ein Troll dieses Gr�nzeug frisst dann schmier es kr�ftig mit Moleratfett ein!
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_09"); //Die Biester lieben den Gestank von diesem ranzigen Teufelszeug.

	if (J�ger_Dabei == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_10"); //Danke.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_15_11"); //Warum nicht gleich so? Danke.
		AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_12"); //Was soll der Mist?
		AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_12_13"); //Mit einem Danke kann ich mich in der Taverne nicht betrinken, um das Gespr�ch das wir eben hatten zu vergessen.

		Info_ClearChoices	(Info_Mod_Dragomir_Leichengase);

		if (Npc_HasItems(hero, ItMi_Gold) >= 50)
		{
			Info_AddChoice	(Info_Mod_Dragomir_Leichengase, "Hier hast du 50 Goldst�cke.", Info_Mod_Dragomir_Leichengase_B);
		};
		Info_AddChoice	(Info_Mod_Dragomir_Leichengase, "", Info_Mod_Dragomir_Leichengase_A);
	};

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_SL_LEICHENGASE, "Dragomir meinte, es reiche den Beutel mit der Kr�utermischung mit Moleratfett einzureiben.");
};

FUNC VOID Info_Mod_Dragomir_Leichengase_B()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_B_15_00"); //Hier hast du 50 Goldst�cke.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_B_12_01"); //Naja, eine leichte Amnesie wird ich mir damit wohl leisten k�nnen. Man sieht sich.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_B_12_02"); //Ach warte. Ich hab hier noch etwas altes Moleratfett, was bei mir eh nur vor sich hinfault.

	B_GiveInvItems	(self, hero, ItMi_MoleratLubric_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_B_12_03"); //Je mehr es stinkt, desto lieber ist's den Viechern.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_B_12_04"); //Aber pass auf, so ein St�ck Molerattschimmel r�umt selbst den st�rksten Troll aus! (lacht herzhaft)

	Info_ClearChoices	(Info_Mod_Dragomir_Leichengase);
};

FUNC VOID Info_Mod_Dragomir_Leichengase_A()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_Leichengase_A_15_00"); //Ich brauche deine Hilfe.
	AI_Output(self, hero, "Info_Mod_Dragomir_Leichengase_A_12_01"); //Wobei?

	Info_ClearChoices	(Info_Mod_Dragomir_Leichengase);
};

INSTANCE Info_Mod_Dragomir_AlterMann (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_AlterMann_Condition;
	information	= Info_Mod_Dragomir_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wegen altem Mann im Wald fragen.";
};

FUNC INT Info_Mod_Dragomir_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragomir_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_00"); //Ahh, du meinst den alten Mann des Waldes. Ja, etwas wei� ich �ber ihn.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_01"); //Er soll Jahrhunderte alt sein und die Tiere des Waldes Rund um Khorata beh�ten.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_02"); //Zwar sagt man, er sei blind, jedoch gleichzeitig auch magisch begabt.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_03"); //Mehr f�llt mir gerade nicht ein. Vielleicht wei� ein anderer mehr.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Von dem ersten Waldl�ufer erfuhr ich nicht viel Neues. Der alte Mann des Waldes, beh�tet die Tiere, er ist uralt, blind und magisch begabt. Vielleicht wei� ein anderer Waldl�ufer mehr.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_04"); //Der alte Mann des Waldes? Ja, ich h�rte er solle einst ein Diener Adanos gewesen sein.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_05"); //Wobei unklar ist, ob er ein Waldl�ufer war wie wir, ein Magier des Wassers, oder ein Verwandlungsmagier.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_06"); //Seine magischen F�higkeiten, wie auch seine starke Bindung zur Tier- und Pflanzenwelt zeugen davon, dass er von allem etwas hat.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Beim 2ten Waldl�ufer erfuhr ich auch nicht viel wissenswertes. Der alte Mann des Waldes soll Adanos und der Sch�pfung verbunden sein, allem voran der Tier und Pflanzenwelt.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_07"); //Tja, viel kann ich dir nicht �ber ihn verraten.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_08"); //Das Problem besteht auch darin, dass er mit keinem Menschen spricht, nicht mal mit uns, auch, wenn wir eigentlich �hnliche Ziele verfolgen.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_09"); //Allein mit den Tieren des Waldes unterh�lt er sich.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_10"); //Tja, wenn ich ein Keiler w�re, k�nnte ich dir bestimmt mehr �ber ihn verraten.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, das k�nnte ein wichtiger Hinweis gewesen sein. Der alte Mann des Waldes meidet Menschen g�nzlich, spricht nur mit Tieren.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_11"); //Der alte Mann des Waldes? Nun, er soll in enger Beziehung zur Tier- und Pflanzenwelt stehen.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_12"); //Man sagt, er leite Rudeltiere wie Keiler, oder W�lfe dazu an, den Wald gegen Eindringlinge zu besch�tzen.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_13"); //Selbst, so sagt man, f�nde man ihn h�ufig in Gestalt eines gr�nen Wolfes vor.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Er soll vor allem auch gr��ere Rudeltiere wie Keiler und W�lfe dazu anleiten den Wald gegen Eindringlinge zu besch�tzen.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_14"); //Du interessierst dich f�r Geschichten �ber den alten Mann des Waldes?
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_15"); //Nun, viel wei� ich nicht �ber diesen mystischen Kauz.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_16"); //Er soll sich meistens im dunklen Wald aufhalten, aber auch immer in der N�he von Gew�ssern, wie Seen.
		AI_Output(self, hero, "Info_Mod_Dragomir_AlterMann_12_17"); //Selten hat ihn jemand zu Gesicht bekommen ...

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Man findet ihn h�chst wahrscheinlich im dichten Wald Khorata�s in der N�he eines Sees.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Dragomir_Pickpocket (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_Pickpocket_Condition;
	information	= Info_Mod_Dragomir_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Dragomir_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 140);
};

FUNC VOID Info_Mod_Dragomir_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);

	Info_AddChoice	(Info_Mod_Dragomir_Pickpocket, DIALOG_BACK, Info_Mod_Dragomir_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Dragomir_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Dragomir_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Dragomir_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Dragomir_Pickpocket);
};

FUNC VOID Info_Mod_Aabid_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

		Info_AddChoice	(Info_Mod_Aabid_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Aabid_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Aabid_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Aabid_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Aabid_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Aabid_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Aabid_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Aabid_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Aabid_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Aabid_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Dragomir_EXIT (C_INFO)
{
	npc		= Mod_759_NONE_Dragomir_NW;
	nr		= 1;
	condition	= Info_Mod_Dragomir_EXIT_Condition;
	information	= Info_Mod_Dragomir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bis dann.";
};

FUNC INT Info_Mod_Dragomir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dragomir_EXIT_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragomir_EXIT_15_00"); //Bis dann.

	AI_StopProcessInfos	(hero);
};