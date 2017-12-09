INSTANCE Info_Mod_Cedric_IR_Hi (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_Hi_Condition;
	information	= Info_Mod_Cedric_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_00"); //Welch ein finsterer, abscheulicher Ort. Hier scheint Innos ferner, als sonst irgendwo auf der Welt.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_01"); //Es ist unsere Aufgabe, als seine Stellvertreter die Insel  zu betreten und alle unheilige Brut f�r immer von diesem gottverlassenen Ort zu bannen.
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Hi_15_02"); //Ja, mal schauen, wer mitkommt. Ich glaube nicht, dass ein paar kampferprobte Gef�hrten zur Begleitung verfehlt w�ren.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_03"); //Ich werde hier bleiben und �ber das Schiff wachen.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_04"); //Zur Seite werden dir drei kampferprobte Paladine stehen, und Milten, wenn es dein Wunsch ist.

	if (Mod_DiegoDabei > 0)
	|| (Mod_LesterDabei > 0)
	|| (Mod_AngarDabei > 0)
	|| (Mod_NamibDabei > 0)
	|| (Mod_VatrasDabei > 0)
	|| (Mod_EthanDabei > 0)
	|| (Mod_RandolphDabei > 0)
	{
		AI_Output(hero, self, "Info_Mod_Cedric_IR_Hi_15_05"); //Und was ist dem den anderen an Bord?
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_06"); //Ich sagte bereits, es entspricht Innos Willen, dass seine Diener dieses Eiland seinem Segen zuf�hren.
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_07"); //Niemand anders besitzt den n�tigen Glauben und die St�rke.
		AI_Output(hero, self, "Info_Mod_Cedric_IR_Hi_15_08"); //Aber ...
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_09"); //(energisch) Ich diskutiere nicht dar�ber.
		AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_10"); //Nimm die Streiter, die dir zur Seite gestellt wurden und tue das, wof�r du herkamst.
	};

	AI_Output(self, hero, "Info_Mod_Cedric_IR_Hi_12_11"); //Was bei Innos ...?!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(PC_Friend_IR, "SHIP_CREW_CAPTAIN");

	Mod_IR_Keroloth = 1;
	Mod_IR_Marcos = 1;
	Mod_IR_Gerold = 1;
	Mod_IR_Milten = 1;

	B_StartOtherRoutine	(Mod_7443_KDF_Milten_IR, "FOLLOW");
	B_StartOtherRoutine	(Mod_7462_RIT_Gerold_IR, "FOLLOW");
	B_StartOtherRoutine	(Mod_7461_RIT_Marcos_IR, "FOLLOW");
	B_StartOtherRoutine	(Mod_7463_RIT_Keroloth_IR, "FOLLOW");
};

INSTANCE Info_Mod_Cedric_IR_Argez (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_Argez_Condition;
	information	= Info_Mod_Cedric_IR_Argez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_IR_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_IR_Argez_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_00"); //(au�er sich) Dieser Mann erdreistet sich als Blinder Passagier auf das k�nigliche Schiff zu kommen?!
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_01"); //Ein Schiff der Paladine, dass in heiliger Mission unterwegs ist?!
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Argez_15_02"); //Reg dich nicht auf, er steht auf unserer Seite ...
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_03"); //Achja, wieso sollte ich das annehmen?
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_04"); //Er k�nnte ein Spion des Feindes sein, der sich auf unser Schiff eingeschlichen hat, unsere heilige Mission zu sabotieren.
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Argez_15_05"); //Nein, er stand mir und den Magiern bereits hilfreich mit Rat und Tat zur Seite. Wir k�nnen ihm vertrauen.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Argez_12_06"); //(etwas ruhiger) Wer wei� ... Nun gut, aber ich werde ihn dennoch nicht aus den Augen lassen ... und jetzt geh deiner Aufgabe nach!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cedric_IR_Fertig (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_Fertig_Condition;
	information	= Info_Mod_Cedric_IR_Fertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cedric_IR_Fertig_Condition()
{
	if (Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cedric_IR_Fertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_00"); //Hey, ich habe geh�rt, dass du alles erledigt hast.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_01"); //F�r Gl�ckw�nsche gibt es ja w�hrend der Fahrt noch genug Zeit.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_02"); //K�nnen wir dann endlich wieder in See stechen?
	AI_Output(hero, self, "Info_Mod_Cedric_IR_Fertig_15_03"); //Ja, ich w�sste keinen Grund warum nicht.
	AI_Output(self, hero, "Info_Mod_Cedric_IR_Fertig_12_04"); //Gut, hier ist der Schl�ssel f�r die Kaj�te, hau dich ein wenig aufs Ohr, w�hrend ich die Segel setze.

	B_GiveInvItems	(self, hero, ItKe_Irdorath, 1);
};

INSTANCE Info_Mod_Cedric_IR_EXIT (C_INFO)
{
	npc		= Mod_7460_RIT_Cedric_IR;
	nr		= 1;
	condition	= Info_Mod_Cedric_IR_EXIT_Condition;
	information	= Info_Mod_Cedric_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cedric_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cedric_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};