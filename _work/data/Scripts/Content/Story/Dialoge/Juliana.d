INSTANCE Info_Mod_Juliana_Hi (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Hi_Condition;
	information	= Info_Mod_Juliana_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Juliana_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Juliana_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Juliana_Hi_16_01"); //(abwehrend) Was willst du?
};

INSTANCE Info_Mod_Juliana_WasLos (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_WasLos_Condition;
	information	= Info_Mod_Juliana_WasLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wieso so abweisend?";
};

FUNC INT Info_Mod_Juliana_WasLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Hi))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_WasLos_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_WasLos_15_00"); //Wieso so abweisend?
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_16_01"); //Ich hab echt andere Sorgen, als mich dumm anquatschen zu lassen.
	AI_Output(hero, self, "Info_Mod_Juliana_WasLos_15_02"); //Das interessiert mich jetzt aber.
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_16_03"); //(sp�ttisch) Du bist aber schlecht informiert. Die Klatschtanten posaunen es in jeder Gasse heraus!
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_16_04"); //Mein Mann ist gestern fr�h auf dem Weg zur Arbeit verschollen. Niemand wei�, wohin.
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_16_05"); //Und nun entschuldige mich.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_ENDRES, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_ENDRES, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana sorgt sich um das Verbleiben ihres Mannes. Sie hat mir zwar nicht ausdr�cklich aufgetragen, in dem Fall zu ermitteln, aber ich werde Augen und Ohren offen halten.");
};

INSTANCE Info_Mod_Juliana_Endres (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres_Condition;
	information	= Info_Mod_Juliana_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Endres ist tot.";
};

FUNC INT Info_Mod_Juliana_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_00"); //Endres ist tot.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_01"); //Seine Leiche ist ins Wasserversorgungssystem gelangt und von dort in den See gesp�lt worden.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_16_02"); //(schockiert) Nein! (Pause) Wie konnte das passieren?
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_03"); //Es sieht ganz nach Mord aus.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_04"); //EIch werde mich darum k�mmern, den �belt�ter zu finden. Daf�r muss ich dir ein paar Fragen stellen.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_16_05"); //(apathisch) Ja ... meinetwegen.

	Info_ClearChoices	(Info_Mod_Juliana_Endres);

	Info_AddChoice	(Info_Mod_Juliana_Endres, "Wer k�nnte ein Motiv haben, ihn zu t�ten?", Info_Mod_Juliana_Endres_B);
	Info_AddChoice	(Info_Mod_Juliana_Endres, "Was hat Endres in den letzten Wochen gemacht?", Info_Mod_Juliana_Endres_A);
};

FUNC VOID Info_Mod_Juliana_Endres_C()
{
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_C_16_00"); //Bevor du Untersuchungen anstellst, solltest du zuerst zu unserem Heiler gehen.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_C_16_01"); //Er kann dir sicher sagen, was ... Endres' Todesursache gewesen ist.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Endres war vor seinem Tod in ein Projekt verwickelt, f�r das er Erz aus einer Mine schaffen lie�. Die Sch�rfer sollen nicht gut auf ihn zu sprechen sein. Bevor ich jedoch zu ihnen gehe, soll ich mit dem Heiler reden.");

	B_StartOtherRoutine	(self, "HAUS");

	AI_Teleport	(Mod_7483_OUT_Endres_REL, "REL_CITY_244");
	B_StartOtherRoutine	(Mod_7483_OUT_Endres_REL, "ARZT");
	B_StartOtherRoutine	(Mod_7480_OUT_Wendel_REL, "START");
	B_StartOtherRoutine	(Mod_7481_OUT_Monteur_REL, "START");

	B_KillNpc	(Mod_7483_OUT_Endres_REL);

	Info_ClearChoices	(Info_Mod_Juliana_Endres);
};

FUNC VOID Info_Mod_Juliana_Endres_B()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_B_15_00"); //Wer k�nnte ein Motiv haben, ihn zu t�ten?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_B_16_01"); //(z�gerlich) Die Minenarbeiter sind unzufrieden mit ihrer Arbeit.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_B_16_02"); //Sie beschweren sich, wann sie nur k�nnen, und gaben Endres die Schuld an ihrer Situation.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_B_16_03"); //Ein paar sind dabei, denen ich ... so etwas Schreckliches zutrauen w�rde.

	Mod_Juliana_Endres_02 = 1;

	if (Mod_Juliana_Endres_01 == 1)
	{
		Info_Mod_Juliana_Endres_C();
	};
};

FUNC VOID Info_Mod_Juliana_Endres_A()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_A_15_00"); //Was hat Endres in den letzten Wochen gemacht?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_A_16_01"); //Er hatte eine gro�artige Idee zur Verbesserung der Wasserleitungen.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_A_16_02"); //Er fand heraus, dass Rohre aus Erz weder rosten noch giftige Stoffe ins Wasser abgeben, und veranlasste, dass eine kleine Mine in der N�he der Stadt zum Erzabbau benutzt wurde.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_A_16_03"); //Tags�ber verbrachte er die meiste Zeit dort, und nachts war er immer zu Hause.

	Mod_Juliana_Endres_01 = 1;

	if (Mod_Juliana_Endres_02 == 1)
	{
		Info_Mod_Juliana_Endres_C();
	};
};

INSTANCE Info_Mod_Juliana_Endres02 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres02_Condition;
	information	= Info_Mod_Juliana_Endres02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe geh�rt, du wirst erpresst.";
};

FUNC INT Info_Mod_Juliana_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres02_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres02_15_00"); //Ich habe geh�rt, du wirst erpresst.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres02_16_01"); //Ach ... ach, das ist nichts.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres02_15_02"); //Ich m�chte dich ein paar Sachen fragen. Wenn du unschuldig bist, hast du nichts zu bef�rchten.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres02_16_03"); //(zweifelnd) Wenn es hilft ...
};

INSTANCE Info_Mod_Juliana_Endres03 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres03_Condition;
	information	= Info_Mod_Juliana_Endres03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wo warst du, als Endres starb?";
};

FUNC INT Info_Mod_Juliana_Endres03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres03_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres03_15_00"); //Wo warst du, als Endres starb?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres03_16_01"); //Ich habe auf ihn gewartet ... im Haus.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres03_15_02"); //Gibt es jemanden, der das bezeugen kann?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres03_16_03"); //(langsam) Nein, ich glaube nicht.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana war zum betreffenden Zeitpunkt allein zu Hause. Das ist nat�rlich nicht so gut.");
};

INSTANCE Info_Mod_Juliana_Endres04 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres04_Condition;
	information	= Info_Mod_Juliana_Endres04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was h�ltst du von Wendel?";
};

FUNC INT Info_Mod_Juliana_Endres04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres04_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres04_15_00"); //Was h�ltst du von Wendel?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres04_16_01"); //Er gibt mit seinem Wissen an, aber er ist in Ordnung. Ruhiger Typ.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana h�lt Wendel f�r einen angeberischen, aber ruhigen Menschen.");
};

INSTANCE Info_Mod_Juliana_Endres05 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres05_Condition;
	information	= Info_Mod_Juliana_Endres05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wieso erpresst dich der Heiler?";
};

FUNC INT Info_Mod_Juliana_Endres05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres05_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres05_15_00"); //Wieso erpresst dich der Heiler?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_16_01"); //Er braucht wohl das Geld.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres05_15_02"); //Wieso l�sst du dich erpressen?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_16_03"); //Das kann ich nicht sagen.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres05_15_04"); //Na sch�n, aber das wirft ein schlechtes Licht auf dich.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_16_05"); //(Pause) Zwischen Endres und mir lief es nicht immer so gut.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_16_06"); //Ich war h�ufig w�tend auf ihn, weil ihm seine Arbeit so wichtig war. Wichtiger als ich ...
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_16_07"); //Aber ich h�tte ihn nie get�tet!

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana beteuert, Endres nicht umgebracht zu haben, auch wenn sie in letzter Zeit h�ufig w�tend auf ihn gewesen sei.");
};

INSTANCE Info_Mod_Juliana_Endres06 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres06_Condition;
	information	= Info_Mod_Juliana_Endres06_Info;
	permanent	= 0;
	important	= 0;
	description	= "Es gibt da noch etwas, das mich interessieren w�rde.";
};

FUNC INT Info_Mod_Juliana_Endres06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres06_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres06_15_00"); //Es gibt da noch etwas, das mich interessieren w�rde.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres06_15_01"); //Inwieweit warst du eigentlich in die Pl�ne des Heilers eingeweiht?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_16_02"); //Ich wusste es. Ich wusste, dass er ihn umbringen wollte, und ich war zu dem Zeitpunkt so w�tend auf Endres, dass ich ihn nicht hinderte.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_16_03"); //Als ich es bereute, war es schon zu sp�t. Nat�rlich hat der Heiler das als Druckmittel gegen mich verwendet.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres06_15_04"); //Was wollte er erpressen?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_16_05"); //Meine Verschwiegenheit. Er hat mich geliebt, wusstest du das?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_16_06"); //Er hat alles zerst�rt, an dem ich sonst gehangen habe, damit ich ihn als Mittelpunkt meines Lebens annehme.
};

INSTANCE Info_Mod_Juliana_Freudenspender (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Freudenspender_Condition;
	information	= Info_Mod_Juliana_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Freudenspender gegen den Kummer?";
};                       

FUNC INT Info_Mod_Juliana_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Juliana_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Freudenspender_15_00"); //Freudenspender gegen den Kummer?
	AI_Output(self, hero, "Info_Mod_Juliana_Freudenspender_16_01"); //Vielleicht ... wieso nicht? Danke.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Juliana_Pickpocket (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Pickpocket_Condition;
	information	= Info_Mod_Juliana_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Juliana_Pickpocket_Condition()
{
	C_Beklauen	(57, ItMi_Gold, 100);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

	Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_BACK, Info_Mod_Juliana_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Juliana_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);
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

INSTANCE Info_Mod_Juliana_EXIT (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_EXIT_Condition;
	information	= Info_Mod_Juliana_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Juliana_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Juliana_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};