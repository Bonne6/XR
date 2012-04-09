INSTANCE Info_Mod_HSBauer_05_Hi (C_INFO)
{
	npc		= Mod_7019_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_05_Hi_Condition;
	information	= Info_Mod_HSBauer_05_Hi_Info;
	permanent	= 1;
	important	= 0;
	description	= "Was ist das hier f�r 'ne Gegend?";
};

FUNC INT Info_Mod_HSBauer_05_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_05_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_15_00"); //Was ist das hier f�r 'ne Gegend?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_01"); //Maaan ... du siehst das alles viel zu eng, m'kay?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_15_02"); //...?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_03"); //Wei�t du, ich war auch mal so wie du, m'kay?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_04"); //Ich dachte wir sind alle nur ein Individuum auf dieser Welt ... aber in Wahrheit sind wir alle riesengro�e Individuen, m'kay?
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_05_05"); //Verstehst du die Message, die ich dir so r�berbringen will?

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);

	Info_AddChoice	(Info_Mod_HSBauer_05_Hi, "Aber wenn wir alle ein riesengro�es Individuum sind, woran misst du diese Gro�e?", Info_Mod_HSBauer_05_Hi_C);
	Info_AddChoice	(Info_Mod_HSBauer_05_Hi, "Ja ... ist klar.", Info_Mod_HSBauer_05_Hi_B);
	Info_AddChoice	(Info_Mod_HSBauer_05_Hi, "So sp�t ist es schon?", Info_Mod_HSBauer_05_Hi_A);
};

FUNC VOID Info_Mod_HSBauer_05_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_00"); //Aber wenn wir alle ein riesengro�es Individuum sind, woran misst du diese Gro�e?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_01"); //Du brauchst einen Ma�stab, um etwas gro� zu nennen, und wir k�nnen nicht alle gro�e Individuen sein, da wir gegenseitig der Ma�stab f�r uns selbst sind.
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_02"); //Also muss �riesengroߓ relativ auf den Durchschnitt sein, wodurch es aber so sein muss, dass der Gro�teil durchschnittliche Individuen sind und es ein paar gro�e und daf�r auch ein paar kleine gibt.
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_C_05_03"); //Aber ... �h ... wir sind alle ein riesengro�es Individuum, verstehst du?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_04"); //Nun du kannst auch nicht Individuum sagen, da wir unsere gesamte Welt nicht aus der Sicht des Individualismus ansehen d�rfen.
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_05"); //Abgesehen von dem inneren Drang des Menschen, in einer Gruppe Schutz und Geborgenheit zu suchen, liegt es auch in unserer Natur, wie Tiere Rudel zu bilden.
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_C_15_06"); //Letzten Endes bist auch du in einem solchen Rudel, und in einem �Rudel� geht es nicht um das Individuum sondern um das Wohl der Gesamtheit.
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_C_05_07"); //Dar�ber muss ich jetzt ein wenig nachdenken, mein Freund ... m'kay?

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);
};

FUNC VOID Info_Mod_HSBauer_05_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_B_15_00"); //Ja ... ist klar.
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_B_05_01"); //Sch�n, mein Freund. Du hast die Message, m'kay?
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_B_15_02"); //M'kay!
	AI_Output(self, hero, "Info_Mod_HSBauer_05_Hi_B_05_03"); //M'kay ...

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);
};

FUNC VOID Info_Mod_HSBauer_05_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_05_Hi_A_15_00"); //So sp�t ist es schon?

	Info_ClearChoices	(Info_Mod_HSBauer_05_Hi);
};

INSTANCE Info_Mod_HSBauer_05_Pickpocket (C_INFO)
{
	npc		= Mod_7019_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_05_Pickpocket_Condition;
	information	= Info_Mod_HSBauer_05_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_20;
};

FUNC INT Info_Mod_HSBauer_05_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 45);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);

	Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_BACK, Info_Mod_HSBauer_05_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HSBauer_05_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HSBauer_05_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);
};

FUNC VOID Info_Mod_HSBauer_05_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_HSBauer_05_Pickpocket);
};

INSTANCE Info_Mod_HSBauer_05_EXIT (C_INFO)
{
	npc		= Mod_7019_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_05_EXIT_Condition;
	information	= Info_Mod_HSBauer_05_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HSBauer_05_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_05_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};