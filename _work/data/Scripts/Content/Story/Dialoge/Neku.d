INSTANCE Info_Mod_Neku_Hi (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_Hi_Condition;
	information	= Info_Mod_Neku_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Neku_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neku_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_00"); //Du willst im Sumpf die Foki einsetzen?
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_01"); //Ja, warum?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_02"); //Die beiden Fokuspl�tze sind extrem gef�hrlich.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_03"); //Der N�rdlichere liegt vor einem alten Tempel. Der S�dlichere liegt nahe einer Felswand im Herzen des Sumpfes.
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_04"); //Vor einem Verfluchten, von D�monen belagerten, Zombies bewohnten und Geistern besessenen Tempel, nehme ich an?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_05"); //Ne, ein stinknormaler Tempel. Bis auf die Monster, die vor dem Tempel leben.
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_06"); //Was f�r Monster?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_07"); //Keine Ahnung. Ich habe sie nur von der Anh�he gesehen.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_08"); //Aufrechtgehende Gestalten, Klingen in den H�nden und Feuer in den Augen ...
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_09"); //Und was ist in der Mitte des Sumpfes so gef�hrliches?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_10"); //Das w�sste ich auch gerne.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_11"); //Silhouetten von seltsamen Gestalten tauchen zwischen den B�umen auf und verschwinden wieder zwischen ihnen ... man k�nnte glauben, es sind die B�ume selbst, die wandern ...
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_12"); //Na gut, ich werde aufpassen, wenn ich rein gehe.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_13"); //Das wirst du nicht m�ssen.
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_14"); //Warum nicht?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_15"); //Du wirst nicht reinkommen. Die Monster, die bei dem Tempel leben, haben eine Barrikade und einen Wachtrupp am Eingang des Sumpfes aufgestellt.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_16"); //Die sehen nicht gerade nach einem Empfangskomitee aus. Naja, trotzdem viel Gl�ck!

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Der Sumpf ist von einer Barrikade umgeben und der einzige Eingang wird von seltsamen Kriegern bewacht, die auch einen Tempel im Sumpf bei einem Fokusplatz bewachen. Der andere Fokusplatz im Sumpf wird von merkw�rdigen Gestalten besiedelt, die wandernden B�umen �hneln sollen. Mal sehen, wie ich dorthin komme ...");
};

INSTANCE Info_Mod_Neku_Giftdrache (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_Giftdrache_Condition;
	information	= Info_Mod_Neku_Giftdrache_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Neku_Giftdrache_Condition()
{
	if (Mod_NL_Jharkendar_DrachenSpawn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neku_Giftdrache_Info()
{
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_00"); //Hey, warte! Wenn du in den Sumpf gehst w�rde ich aufpassen.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_01"); //Wenn mich meine Augen nicht getr�gt haben, sah ich eine Echse ...
	AI_Output(hero, self, "Info_Mod_Neku_Giftdrache_15_02"); //(ungeduldig unterbricht) Ja, viele Echsenmenschen im Sumpf, das hatten wir glaube ich schon.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_03"); //(�rgerlich) Hmpf, nein, so lass mich doch ausreden. Also, ich sah eine Echse vom Himmel herabsteigen, die war mindestens f�nf Meter hoch.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_04"); //Sie ist irgendwo s�dlich in der N�he der Palisaden des Sumpfes gelandet.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_05"); //Seitdem kommen bei ung�nstigem Wind von dort immer wieder abscheuliche D�mpfe, die einem fast den Atem rauben.
};

INSTANCE Info_Mod_Neku_Pickpocket (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_Pickpocket_Condition;
	information	= Info_Mod_Neku_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Neku_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 400);
};

FUNC VOID Info_Mod_Neku_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

	Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_BACK, Info_Mod_Neku_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Neku_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Neku_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Neku_Pickpocket);
};

FUNC VOID Info_Mod_Neku_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Neku_Pickpocket);
};

INSTANCE Info_Mod_Neku_EXIT (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_EXIT_Condition;
	information	= Info_Mod_Neku_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Neku_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neku_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};