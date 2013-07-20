INSTANCE Info_Mod_Elvrich_MT_Hi (C_INFO)
{
	npc		= Mod_7404_NONE_Elvrich_MT;
	nr		= 1;
	condition	= Info_Mod_Elvrich_MT_Hi_Condition;
	information	= Info_Mod_Elvrich_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvrich_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_00"); //Hey, du hier?
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_01"); //Das Gleiche wollte ich auch gerade sagen. Was hat dich hierher verschlagen?
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_02"); //Nun, das ist eine lange Geschichte ... die aber schnell erz�hlt ist.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_03"); //Wie ich dir ja damals berichtet hatte, bin ich zum Hafenviertel, um meine Freundin zu treffen.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_04"); //Da tauchte dieser miese D�monenkrieger auf und teleportierte mich in eines ihrer Lager.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_05"); //Man steckte mich in ihre Mine, wo ich bis zum Tod schuften sollte, wie die anderen armen Schweine, die sie aus der Stadt entf�hrt hatten und die jetzt in einem verlassenen Stollen verrotten.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_06"); //Da ich keine Lust hatte, genauso zu enden, habe ich die Verwirrung bei einem Einsturz zur Flucht genutzt.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_07"); //Ich setzte mich in dieses Lager hier ab, von welchem ein D�monenkrieger zwischen den Z�gen am Sumpfkrautst�ngel immer so viel geschw�rmt hat ... und ich habe es nicht bereut.
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_08"); //So, so.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_09"); //Ja, seitdem ich hier bin, habe ich erst den wahren Wert des Lebens erkannt.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_10"); //Es gibt immer genug Sumpfkraut zum Entspannen, und ich werde wegen meiner Kenntnisse in der Zimmerei respektiert und gesch�tzt.
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_11"); //Und deine Freundin?
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_12"); //Was?! Bleib mir mit dieser Hexe blo� weg ...
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_13"); //Ok, wenn du meinst, obwohl sie ja f�r deine Entf�hrung eigentlich nichts kann.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_14"); //Nein, du verstehst nicht ganz. Dieses Mistst�ck war es, das uns Kerle um den Verstand brachte und uns an die D�monenkrieger verriet.
	AI_Output(hero, self, "Info_Mod_Elvrich_MT_Hi_15_15"); //Ach so. Das macht die Abneigung nat�rlich nachvollziehbarer.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_16"); //Wie dem auch sei, so hat alles ein gutes Ende f�r mich genommen.
	AI_Output(self, hero, "Info_Mod_Elvrich_MT_Hi_24_17"); //Ich werde weiter Schr�nke zimmern, die St�ngel qualmen und mein Leben genie�en. Was will man mehr ...

	if (!Npc_KnowsInfo(hero, Info_Mod_Vatras_RealInfos))
	{
		B_LogEntry	(TOPIC_MOD_VERMISSTE, "Okay, damit w�re also das Schicksal der Entf�hrten gekl�rt und ich kann Vatras Bericht erstatten.");
	};

	Mod_WM_ElvrichImSumpf = 4;

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Elvrich_MT_EXIT (C_INFO)
{
	npc		= Mod_7404_NONE_Elvrich_MT;
	nr		= 1;
	condition	= Info_Mod_Elvrich_MT_EXIT_Condition;
	information	= Info_Mod_Elvrich_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elvrich_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};