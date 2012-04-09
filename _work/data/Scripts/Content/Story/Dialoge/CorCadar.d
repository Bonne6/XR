INSTANCE Info_Mod_Cadar_Hi (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Hi_Condition;
	information	= Info_Mod_Cadar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cadar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cadar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cadar_Hi_02_00"); //Ah, ein neues Gesicht in unserem Sumpf. Sei mir willkommen.
	AI_Output(self, hero, "Info_Mod_Cadar_Hi_02_01"); //Ich bin Cor Cadar, geistiger Anf�hrer unserer Gemeinschaft.
};

INSTANCE Info_Mod_Cadar_Eroberung_02 (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Eroberung_02_Condition;
	information	= Info_Mod_Cadar_Eroberung_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cadar_Eroberung_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Eroberung_01))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Eroberung_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Cadar_Eroberung_02_02_00"); //Ich stelle euch einige Novizenr�cke bereit. Ihr gebt vor, Bartholo Sumpfkraut zu liefern, und geht in das Lager.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cadar_Asylanten (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Asylanten_Condition;
	information	= Info_Mod_Cadar_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie sehen die Pl�ne der Bruderschaft f�r die Zukunft aus?";
};

FUNC INT Info_Mod_Cadar_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_00"); //Wie sehen die Pl�ne der Bruderschaft f�r die Zukunft aus?
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_01"); //(verdutzt) Pl�ne? Die Zukunft selbst wird uns zeigen, was sie f�r uns bereith�lt.
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_02"); //Solange werden wir weiter ein normales Leben f�hren: Wir bauen Sumpfkraut an, rauchen ab und zu einen und tauschen uns �ber unsere spirituellen Erfahrungen aus.
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_03"); //Ihr habt also nicht vor, das Minental zu verlassen?
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_04"); //Nein.
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_05"); //Und wie steht ihr zu den anderen Gruppierungen im Minental?
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_06"); //Alle, die mit uns Handel treiben wollen, sind willkommene G�ste.
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_07"); //Allerdings habe ich geh�rt, dass das Alte Lager viel von seinem vormaligen Status eingeb��t hat, und die Beziehungen zum neuen Lager waren nie so ausgepr�gt, wie wir es uns w�nschten.
	AI_Output(hero, self, "Info_Mod_Cadar_Asylanten_15_08"); //Danke f�r die Auskunft.
	AI_Output(self, hero, "Info_Mod_Cadar_Asylanten_02_09"); //M�ge der Schl�f... M�gen die Sterne dir g�nstig stehen.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Von der Bruderschaft geht kaum eine Gefahr aus. Die Templer und Novizen sind gl�cklich mit ihrem derzeitigen Leben und hegen keinen Groll gegen eine andere Gruppierung.");
};

INSTANCE Info_Mod_Cadar_Woher (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Woher_Condition;
	information	= Info_Mod_Cadar_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wie bist du zum geistlichen F�hrer der Bruderschaft geworden?";
};

FUNC INT Info_Mod_Cadar_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Cadar_Woher_15_00"); //Wie bist du zum geistlichen F�hrer der Bruderschaft geworden?
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_01"); //Bevor ich in die Barriere geworfen wurde war ich ein Feuermagier des K�nigs.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_02"); //Allerdings habe ich mich auch f�r andere Magierichtungen interessiert. Besonders von der Orkmagie war ich sehr angetan, doch als Gegenleistung musste ich sie unterst�tzen.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_03"); //Irgendwann haben sie dann rausgefunden, dass ich die Orks unterst�tze und haben mich in die Barriere geworfen.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_04"); //Ich bin dann zur Bruderschaft gegangen um diese Art der Magie ebenfalls zu lernen und wurde bald darauf Cor Kaloms Stellvertreter.
	AI_Output(self, hero, "Info_Mod_Cadar_Woher_02_05"); //Nach seinem und Y'Berions Tod war ich der h�hste Guru im Lager und wurde deshalb zum geistlichen F�hrer der Bruderschaft.
};

INSTANCE Info_Mod_Cadar_Lehrer (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Lehrer_Condition;
	information	= Info_Mod_Cadar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir was beibringen?";
};

FUNC INT Info_Mod_Cadar_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Hi))
	&& ((Templer_Dabei == 1)
	|| (Guru_Dabei == 1))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Cadar_Lehrer_02_01"); //Ich kann dir zeigen, wie du aus deiner Erfahrung mehr wissen sch�pfst, welches du nutzen kannst um weitere F�higkeiten zu erlernen.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SUMPF, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SUMPF, "Cor Cadar kann mir helfen mehr Wissen aus meiner Erfahrung zu sch�pfen.");
};

INSTANCE Info_Mod_Cadar_SchnellesLernen_Perk (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_SchnellesLernen_Perk_Condition;
	information	= Info_Mod_Cadar_SchnellesLernen_Perk_Info;
	permanent	= 1;
	important	= 0;
	description	= "Perk: Schnelles Lernen (5 LP)";
};

FUNC INT Info_Mod_Cadar_SchnellesLernen_Perk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Lehrer))
	&& (SchnellesLernen_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cadar_SchnellesLernen_Perk_Info()
{
	if (hero.lp > 4)
	{
		AI_Output(self, hero, "Info_Mod_Cadar_SchnellesLernen_Perk_02_00"); //Nun wirst du mehr Wissen aus deiner Erfahrung sch�pfen k�nnen. Nutze dieses Wissen weise.

		SchnellesLernen_Perk = TRUE;

		hero.lp -= 5;
	}
	else
	{
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
};

INSTANCE Info_Mod_Cadar_Pickpocket (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_Pickpocket_Condition;
	information	= Info_Mod_Cadar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Cadar_Pickpocket_Condition()
{
	C_Beklauen	(111, ItMi_Gold, 1100);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);

	Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_BACK, Info_Mod_Cadar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cadar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cadar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);
};

FUNC VOID Info_Mod_Cadar_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Cadar_Pickpocket);
};

INSTANCE Info_Mod_Cadar_EXIT (C_INFO)
{
	npc		= Mod_2005_GUR_CorCadar_MT;
	nr		= 1;
	condition	= Info_Mod_Cadar_EXIT_Condition;
	information	= Info_Mod_Cadar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cadar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cadar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};