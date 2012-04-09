INSTANCE Info_Mod_Wirt_Hi (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Hi_Condition;
	information	= Info_Mod_Wirt_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wirt_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wirt_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wirt_Hi_14_00"); //Komm n�her, Fremder! Trink einen mit uns, ist heute alles umsonst!

	CreateInvItems	(self, ItFo_Beer, 3);

	B_GiveInvItems	(self, hero, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);
};

INSTANCE Info_Mod_Wirt_Spender (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Spender_Condition;
	information	= Info_Mod_Wirt_Spender_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer ist der wohlt�tige Spender?";
};

FUNC INT Info_Mod_Wirt_Spender_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wirt_Spender_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Spender_15_00"); //Wer ist der wohlt�tige Spender?
	AI_Output(self, hero, "Info_Mod_Wirt_Spender_14_01"); //Matteo! Sein Gesch�ft l�uft gut, und er hat sich kr�ftig verguckt! (lacht dr�hnend)

	Info_ClearChoices	(Info_Mod_Wirt_Spender);

	Info_AddChoice	(Info_Mod_Wirt_Spender, "Den Tratsch muss ich mir nicht antun.", Info_Mod_Wirt_Spender_B);
	Info_AddChoice	(Info_Mod_Wirt_Spender, "Erz�hl mehr.", Info_Mod_Wirt_Spender_A);
};

FUNC VOID Info_Mod_Wirt_Spender_B()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Spender_B_15_00"); //Den Tratsch muss ich mir nicht antun.

	Info_ClearChoices	(Info_Mod_Wirt_Spender);
};

FUNC VOID Info_Mod_Wirt_Spender_A()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Spender_A_15_00"); //Erz�hl mehr.
	AI_Output(self, hero, "Info_Mod_Wirt_Spender_A_14_01"); //(verschw�rerisch) Valentine aus dem Oberen Viertel ist seine Angebetete. Er hat mir verraten, dass er sich mit ihr verloben will.

	Mod_Wirt_Freibier = 1;

	Info_ClearChoices	(Info_Mod_Wirt_Spender);
};

INSTANCE Info_Mod_Wirt_Bild (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Bild_Condition;
	information	= Info_Mod_Wirt_Bild_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was erz�hlt man sich sonst so?";
};

FUNC INT Info_Mod_Wirt_Bild_Condition()
{
	if (Mod_Wirt_Freibier == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_Bild_Info()
{
	Mod_Wirt_Freibier = 2;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wirt_Bild2 (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Bild2_Condition;
	information	= Info_Mod_Wirt_Bild2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wirt_Bild2_Condition()
{
	if (Mod_Wirt_Freibier == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_Bild2_Info()
{
	AI_Output(self, hero, "Info_Mod_Wirt_Bild2_14_00"); //(lacht) Und Wilfried, kennst du den? Halt dich fern von ihm.
};

INSTANCE Info_Mod_Wirt_Wilfried (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Wilfried_Condition;
	information	= Info_Mod_Wirt_Wilfried_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was ist mit Wilfried?";
};

FUNC INT Info_Mod_Wirt_Wilfried_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wirt_Bild2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_Wilfried_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_Wilfried_15_00"); //Was ist mit Wilfried?
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_14_01"); //Tagaus, tagein h�r ich Geschichten �ber ihn.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_14_02"); //Ich glaube kaum, dass es jemanden in Khorinis gibt, den er noch nicht beschissen hat.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_14_03"); //Ganz recht, dass er jetzt einsam in seiner H�tte im Hafenviertel schmort!
	AI_Output(hero, self, "Info_Mod_Wirt_Wilfried_15_04"); //Werd ich mir merken.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_14_05"); //Ach, da h�tte ich doch fast das Stadtgespr�ch schlechthin vergessen, den Untergang der Minna, einem Fischkutter aus Myrtana!
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_14_06"); //Muss ein Spektakel gewesen sein, die ganzen Toten trieben im Wasser, und alle wollten sie sehen.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_14_07"); //Es soll sogar ein weltber�hmter Maler an Deck gewesen sein, tja.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_14_08"); //Wenn du noch nicht mit Moe gesprochen hast, solltest du das nachholen, der wei� sicher noch mehr dar�ber.
	AI_Output(hero, self, "Info_Mod_Wirt_Wilfried_15_09"); //Danke f�r das Gespr�ch.
	AI_Output(self, hero, "Info_Mod_Wirt_Wilfried_14_10"); //Einen noch!

	CreateInvItems	(self, ItFo_Beer, 3);

	B_GiveInvItems	(self, hero, ItFo_Beer, 1);

	B_UseItem	(hero, ItFo_Beer);
	B_UseItem	(self, ItFo_Beer);
};

INSTANCE Info_Mod_Wirt_WacholderDieb (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_WacholderDieb_Condition;
	information	= Info_Mod_Wirt_WacholderDieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wei�t du etwas �ber den Diebstahl bei Coragon?";
};

FUNC INT Info_Mod_Wirt_WacholderDieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_WacholderDieb))
	&& (Npc_KnowsInfo(hero, Info_Mod_Wirt_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_WacholderDieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_15_00"); //Wei�t du etwas �ber den Diebstahl bei Coragon?
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_14_01"); //Selbst wenn, wieso sollte ich dir was sagen?
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_15_02"); //Weil ich dir vielleicht Geld anbieten k�nnte.
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_14_03"); //Dann w�rde ich 200 Goldst�cke verlangen.

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Der Wirt will f�r Informatinen 200 Goldst�cke.");
};

INSTANCE Info_Mod_Wirt_WacholderDieb_Pay (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_WacholderDieb_Pay_Condition;
	information	= Info_Mod_Wirt_WacholderDieb_Pay_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier ist das Gold. Nun erz�hl mir was du wei�t.";
};

FUNC INT Info_Mod_Wirt_WacholderDieb_Pay_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wirt_WacholderDieb))
	&& (Npc_HasItems(hero, ItMi_Gold) > 199)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wirt_WacholderDieb_Pay_Info()
{
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_Pay_15_00"); //Hier ist das Gold. Nun erz�hl mir was du wei�t.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_Pay_14_01"); //Am Tag des Diebstahls lungerte die ganze Zeit ein Typ namens Rukhar vor Coragons Taverne herum.
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_Pay_14_02"); //Der treibt sich normalerweise immer bei Orlans Taverne 'rum und bes�uft sich. Sehr merkw�rdig, oder?
	AI_Output(hero, self, "Info_Mod_Wirt_WacholderDieb_Pay_15_03"); //Mag sein. Danke f�r den Tipp!
	AI_Output(self, hero, "Info_Mod_Wirt_WacholderDieb_Pay_14_04"); //(grinst) Wenn du mal wieder Infos brauchst dann wei�t du ja bei wem du sie bekommst!

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Rukhar, welcher sich normalerweise in der Taverne von Orlan aufh�lt, soll am Tag des Diebstahls vor Coragons Kneipe herumgelungert sein. Ich sollte mal zu ihm gehen und �berpr�fen, ob diese Information die 200 Goldst�cke wert war.");
};

INSTANCE Info_Mod_Wirt_Pickpocket (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_Pickpocket_Condition;
	information	= Info_Mod_Wirt_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Wirt_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 350);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);

	Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_BACK, Info_Mod_Wirt_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wirt_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wirt_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);
};

FUNC VOID Info_Mod_Wirt_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Wirt_Pickpocket);
};

INSTANCE Info_Mod_Wirt_EXIT (C_INFO)
{
	npc		= Mod_1076_VLK_Wirt_NW;
	nr		= 1;
	condition	= Info_Mod_Wirt_EXIT_Condition;
	information	= Info_Mod_Wirt_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wirt_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wirt_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};