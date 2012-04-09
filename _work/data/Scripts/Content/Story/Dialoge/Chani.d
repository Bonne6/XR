INSTANCE Info_Mod_Chani_Hi (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Hi_Condition;
	information	= Info_Mod_Chani_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Chani_Hi_Condition()
{
	if (Mod_Chani_Abenteurer == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Chani_Hi_16_00"); //Und S��er, wie w�re es mir uns beiden?
	AI_Output(hero, self, "Info_Mod_Chani_Hi_15_01"); //�hh, ein andermal.
};

INSTANCE Info_Mod_Chani_Woher (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Woher_Condition;
	information	= Info_Mod_Chani_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du kommst doch aus der Kolonie.";
};

FUNC INT Info_Mod_Chani_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Chani_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Chani_Woher_15_00"); //Du kommst doch aus der Kolonie.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_16_01"); //H�r mal S��er, wenn du mit mir reden willst, musst du mich zumindest auf ein Getr�nk einladen ... aber kein billiges Bier oder irgendeinen Seemannsfusel.
};

FUNC VOID Info_Mod_Chani_Woher_Story(var C_Item itm)
{
	B_GiveInvItems	(hero, self, itm, 1);
	CreateInvItems	(self, itm, 2);

	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_00"); //Das h�rt sich doch gut an.

	B_UseItem	(self, itm);

	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_01"); //(leicht angetrunken) Sehr sch�n, da wird�s mir doch gleich angenehm warm um die Brust.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_02"); //Aber wo waren wir stehen geblieben ... ja, genau, die verlauste Kolonie. Daran m�chte ich gar nicht denken.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_03"); //Dauernd in dieses eklige kalte Gem�uer eingepfercht, mit diesem s�uselnden Tattergreis. Der Schl�fer erwache ... so ein Schwachsinn.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_04"); //Habe die Gelegenheit genutzt, als der Alte abgekratzt ist, und mich kurz darauf mit Viran und Harlok hierher durchgeschlagen.
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Story_15_05"); //Naja, das ist hier aber auch nicht gerade ein sch�ner Ort.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_06"); //Tausend mal besser als dort.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_07"); //Hier habe ich wenigstens meine Freiheit, kann wie vor der Zeit in der Kolonie meinen K�rper verkaufen, wie es mir gerade gef�llt, habe Spa� und vor allem klingendes Geld.
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Story_15_08"); //Bist du deshalb in der Kolonie gelandet?
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_09"); //Ja, genau. Der dreckige Stadthalter hat mich denunziert, als ich auf den s�dlichen Inseln meinem Gewerbe nachging.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_10"); //Dabei war er einer meiner besten Kunden.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_11"); //Hat wohl eine Pr�mie bei diesem Schwein Rhobar bekommen daf�r, dass sie ein weiteres Weibsbild f�r die Kolonie gefunden haben.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_12"); //Vielleicht war ich ihm auch zu gef�hrlich geworden, f�r seinem untadeligen Ruf ... Scheinheiliges Pack.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_13"); //Wenn ich k�nnte, w�rde ich ein Rasiermesser nehmen und ihnen ihre ...
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Story_15_14"); //(unterbricht) Ja, ich habe verstanden. Es war interessant deine Geschichte zu erfahren.
	AI_Output(self, hero, "Info_Mod_Chani_Woher_Story_16_15"); //Ja, genug geredet. Ich trinke noch mal einen Schluck, um in Stimmung zu kommen.

	B_UseItem	(self, itm);

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Chani_Woher_Wacholder (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Woher_Wacholder_Condition;
	information	= Info_Mod_Chani_Woher_Wacholder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier hast du einen starken Schluck Wacholder.";
};

FUNC INT Info_Mod_Chani_Woher_Wacholder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Chani_Woher))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Chani_Woher_Wein))
	&& (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Woher_Wacholder_Info()
{
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Wacholder_15_00"); //Hier hast du einen starken Schluck Wacholder.

	Info_Mod_Chani_Woher_Story(ItFo_Booze);
};

INSTANCE Info_Mod_Chani_Woher_Wein (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_Woher_Wein_Condition;
	information	= Info_Mod_Chani_Woher_Wein_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier hast du eine gute Flasche Wein.";
};

FUNC INT Info_Mod_Chani_Woher_Wein_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Chani_Woher))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Chani_Woher_Wacholder))
	&& (Npc_HasItems(hero, ItFo_Wine) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Chani_Woher_Wein_Info()
{
	AI_Output(hero, self, "Info_Mod_Chani_Woher_Wein_15_00"); //Hier hast du eine gute Flasche Wein.

	Info_Mod_Chani_Woher_Story(ItFo_Wine);
};

INSTANCE Info_Mod_Chani_EXIT (C_INFO)
{
	npc		= Mod_1623_OUT_Chani_REL;
	nr		= 1;
	condition	= Info_Mod_Chani_EXIT_Condition;
	information	= Info_Mod_Chani_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Chani_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Chani_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};