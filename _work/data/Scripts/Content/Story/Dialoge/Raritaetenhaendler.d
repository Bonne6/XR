INSTANCE Info_Mod_Raritaetenhaendler_Hi (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Hi_Condition;
	information	= Info_Mod_Raritaetenhaendler_Hi_Info;
	permanent	= 0;
	important	= 1;
	trade		= 1;
};

FUNC INT Info_Mod_Raritaetenhaendler_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raritaetenhaendler_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Hi_04_00"); //Hallo Freund. Tritt n�her!
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Hi_15_01"); //Freund? Kennen wir uns?
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Hi_04_02"); //Noch nicht. Mein Name ist Finder. Ich handle mit Rarit�ten.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Hi_15_03"); //Rarit�ten. Das sind doch seltene Dinge.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Hi_04_04"); //Genau. Seltene, wunderliche, gar einmalige Sachen.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Hi_15_05"); //Dann lass mal sehen.
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich sehe hier 'ne kaputte Rune.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Hi))
	&& (Mod_JG_Finder == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune_15_00"); //Ich sehe hier 'ne kaputte Rune. Das Teil interessiert mich.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune_04_01"); //Aber gerne. F�r 500 kannst du sie haben.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune_15_02"); //Bist du verr�ckt? 500 Gold f�r diesen Klumpen Erz?
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune_15_03"); //Ist doch bestenfalls als Dekoration zu gebrauchen. Ich gebe dir 100.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune_04_04"); //Spinnst du? Das ist eine absolute Rarit�t. Nicht unter 400 zu haben.
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune01 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune01_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Also gut. Hier 400 M�nzen. Die pure Abzocke ist das.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune01_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune01_15_00"); //Also gut. Hier 400 M�nzen. Die pure Abzocke ist das.

	B_GiveInvItems	(hero, self, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune01_04_01"); //Angebot und Nachfrage ist das. Hier. Viel Vergn�gen.

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Habe dem Rarit�tenh�ndler 'ne halbe Teleportrune abgeschwatzt. Jetzt brauche ich den Rest vom Penner zur�ck. Sollte nicht allzu schwer sein.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Geschafft! Ich habe beide Teile. Vielleicht kann man die Rune reparieren. Am besten einen Fachmann fragen. Ob's hier einen Magier gibt? Mal fragen. Vielleicht Daniel, der handelt doch mit Magie.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune02 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune02_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Absolute Rarit�t? Schau mal, was ich hier habe.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 250)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	&& (Npc_HasItems(hero, ItMi_BrokenRune01) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune02_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune02_15_00"); //Absolute Rarit�t? Schau mal, was ich hier habe.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune02_04_01"); //Oh. Eine halbe Rune.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune02_15_02"); //Genau. Die liegen hier so in der Gegend rum.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune02_04_03"); //Also gut. Ich gehe auf 250 runter.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune02_15_04"); //Weil du's bist. Hier 250 Gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 250);

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Habe dem Rarit�tenh�ndler 'ne halbe Teleportrune abgeschwatzt. Jetzt brauche ich den Rest vom Penner zur�ck. Sollte nicht allzu schwer sein.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Geschafft! Ich habe beide Teile. Vielleicht kann man die Rune reparieren. Am besten einen Fachmann fragen. Ob's hier einen Magier gibt? Mal fragen. Vielleicht Daniel, der handelt doch mit Magie.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune03 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune03_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab aber nur 200 im Beutel. Mehr geht nicht.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune03_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune03_15_00"); //Ich hab aber nur 200 im Beutel. Mehr geht nicht.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune03_04_01"); //Dann kommen wir nicht ins Gesch�ft. Tut mir leid.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune03_15_02"); //Ich k�nnte dir noch einen Aquamarin dazugeben. Erstklassige Qualit�t.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	Npc_RemoveInvItems	(hero, ItMi_Aquamarine, 1);

	B_ShowGivenThings	("200 Gold und Aquamarin gegeben");

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune03_04_03"); //Abgemacht. Hier, die Rune.

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Habe dem Rarit�tenh�ndler 'ne halbe Teleportrune abgeschwatzt. Jetzt brauche ich den Rest vom Penner zur�ck. Sollte nicht allzu schwer sein.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Geschafft! Ich habe beide Teile. Vielleicht kann man die Rune reparieren. Am besten einen Fachmann fragen. Ob's hier einen Magier gibt? Mal fragen. Vielleicht Daniel, der handelt doch mit Magie.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune04 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune04_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nachfrage! Was hei�t hier Nachfrage? Diesen Schrott nimmt dir doch eh keiner ab.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 3)
	&& (Npc_HasItems(hero, ItFo_FishSoup) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune04_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune04_15_00"); //Nachfrage! Was hei�t hier Nachfrage? Diesen Schrott nimmt dir doch eh keiner ab.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune04_04_01"); //Denkst du. Fast jeder fragt mich, was es auf sich hat mit der Rune.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune04_15_02"); //Und du sagst nat�rlich: keine Ahnung. Hier. 200 Gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune04_04_03"); //Mein letztes Wort. 250. Ich muss auch leben. Und die Frau und die sieben Kinder ...
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune04_15_04"); //Hab aber nur 200. Ich geb dir drei Brote und drei Teller Suppe dazu. F�r die Familie ...

	Npc_RemoveInvItems	(hero, ItFo_Bread, 3);
	Npc_RemoveInvItems	(hero, ItFo_FishSoup, 3);

	B_ShowGivenThings	("3 Brote und 3 Teller Suppe gegeben");

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune04_04_05"); //Du bist ein Verbrecher. Hier. Die Rune.

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Habe dem Rarit�tenh�ndler 'ne halbe Teleportrune abgeschwatzt. Jetzt brauche ich den Rest vom Penner zur�ck. Sollte nicht allzu schwer sein.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Geschafft! Ich habe beide Teile. Vielleicht kann man die Rune reparieren. Am besten einen Fachmann fragen. Ob's hier einen Magier gibt? Mal fragen. Vielleicht Daniel, der handelt doch mit Magie.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_BrokenRune (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_BrokenRune_Condition;
	information	= Info_Mod_Raritaetenhaendler_BrokenRune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hallo noch mal.";
};

FUNC INT Info_Mod_Raritaetenhaendler_BrokenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune2))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_BrokenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_00"); //Hallo noch mal.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_BrokenRune_04_01"); //Was? Du schon wieder? Was willst Du?
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_02"); //Ich komme von Daniel. Er hat dir eine Adanosfigur verkauft.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_BrokenRune_04_03"); //Das mag sein. Ein sch�nes Teil. Ganz aus Aquamarin geschnitzt.

	B_GiveInvItems	(self, hero, ItMi_AdanosStatue, 1);

	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_04"); //Genau das m�chte ich kaufen. Du wei�t ja, als Dekoration ...
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_BrokenRune_04_05"); //Gewiss. 500 Gold ...
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_06"); //Nicht schon wieder. Das ist h�chstens 200 wert.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "Ich habe jetzt die Adanosfigur. Muss zum Magier zur�ck.");
};

INSTANCE Info_Mod_Raritaetenhaendler_Pickpocket (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Pickpocket_Condition;
	information	= Info_Mod_Raritaetenhaendler_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_80;
};

FUNC INT Info_Mod_Raritaetenhaendler_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 1000);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

	Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_BACK, Info_Mod_Raritaetenhaendler_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Raritaetenhaendler_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);
};

INSTANCE Info_Mod_Raritaetenhaendler_EXIT (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_EXIT_Condition;
	information	= Info_Mod_Raritaetenhaendler_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raritaetenhaendler_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raritaetenhaendler_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};