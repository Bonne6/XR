INSTANCE Info_Mod_Torwache_AL_01_Halt (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_Halt_Condition;
	information	= Info_Mod_Torwache_AL_01_Halt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_Halt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_00"); //(unfreundlich, abweisend) Was willst du hier?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_15_01"); //Ich w�rde gerne etwas von euch wissen.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_02"); //Um was handelt es sich?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_15_03"); //Ich habe einige Gardisten getroffen.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_04"); //Ja und?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_15_05"); //Sie befanden sich nicht im alten Lager.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_06_06"); //Dann waren sie wohl gerade au�erhalb. Jetzt mal im Ernst, was willst du hier eigentlich?

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Kennst du sie zuf�llig?", Info_Mod_Torwache_AL_01_Halt_D);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Was machen die dort drau�en eigentlich?", Info_Mod_Torwache_AL_01_Halt_C);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Ein paar eurer Gardisten haben einige Waldl�ufer �berfallen (...)", Info_Mod_Torwache_AL_01_Halt_B);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Ich wurde in den W�ldern von diesen Gardisten �berfallen.", Info_Mod_Torwache_AL_01_Halt_A);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_D()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_D_15_00"); //Kennst du sie zuf�llig?
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_D_06_01"); //Nein.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_C()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_C_15_00"); //Was machen die dort drau�en eigentlich?
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_C_06_01"); //Und du meinst, ich w�rde es dir, einem dahergelaufenen Abenteurer, einfach so sagen? Komm, zieh Leine.
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_C_15_02"); //Es h�tte ja sein k�nnen, dass ...
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_C_06_03"); //H�r mal, selbst wenn ich etwas dar�ber w�sste, w�rde ich es dir nicht sagen.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_C_06_04"); //Und wehe ich bekomme mit, dass du hier andere Gardisten oder einen der Erzbarone damit bel�stigst!

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_B()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_B_15_00"); //Ein paar eurer Gardisten haben einige Waldl�ufer �berfallen und get�tet.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_B_06_01"); //Haben sie? Ich kenne sie nicht. Wusste nichteinmal, dass sich hier �berhaupt Waldl�ufer aufhalten.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_B_06_02"); //Wo befindet sich eigentlich ihr Lager?

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Das geht dich nichts an.", Info_Mod_Torwache_AL_01_Halt_F);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Weiss ich nicht.", Info_Mod_Torwache_AL_01_Halt_E);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_F()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_F_15_00"); //Das geht dich nichts an.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_01"); //Oh doch. Es sollen ja schlie�lich unsere Leute gewesen sein, die es angegriffen haben.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_02"); //Vielleicht sollte wir uns die Sachlage einmal ... anschauen.
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_F_15_03"); //Das ist nicht n�tig. Au�erdem wurde nicht das Lager angegriffen, sondern die Waldl�ufer auf offener Fl�che get�tet.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_04"); //Dann verschwinde mit deinen haltlosen Anschuldigungen.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_05"); //Warscheinlich wurden sie von einem Rudel W�lfe zerfetzt und nun soll die Schuld in unsere Schuhe geschoben werden.
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_F_15_06"); //Aber ...
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_F_06_07"); //Ich habe gesagt du sollst verschwinden. Und wehe ich h�re noch einmal was von diesem Unsinn!

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_E()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_E_15_00"); //Weiss ich nicht.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_E_06_01"); //L�gner.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_A()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_A_15_00"); //Ich wurde in den W�ldern von diesen Gardisten �berfallen.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_A_06_01"); //Hey, Leute, habt ihr das gerade geh�rt? Hehe. Ich hoffe doch, sie sind nicht ohne Gold abgezogen.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Sie haben mir alles abgenommen, was ich bei mir hatte!", Info_Mod_Torwache_AL_01_Halt_H);
	Info_AddChoice	(Info_Mod_Torwache_AL_01_Halt, "Ich habe sie get�tet ...", Info_Mod_Torwache_AL_01_Halt_G);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_H()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_H_15_00"); //Sie haben mir alles abgenommen, was ich bei mir hatte!
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_H_06_01"); //Und was willst du jetzt tun?
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_H_15_02"); //Ich m�chte die Sachen wieder zur�ck.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_H_06_03"); //Tr�um weiter.

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);
};

FUNC VOID Info_Mod_Torwache_AL_01_Halt_G()
{
	AI_Output(hero, self, "Info_Mod_Torwache_AL_01_Halt_G_15_00"); //Ich habe sie get�tet ...
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Halt_G_06_01"); //Was hast du? Daf�r bezahlst du!

	Info_ClearChoices	(Info_Mod_Torwache_AL_01_Halt);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Torwache_AL_01_SabitschDieb (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_SabitschDieb_Condition;
	information	= Info_Mod_Torwache_AL_01_SabitschDieb_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_SabitschDieb_Condition()
{
	if (Mod_SabitschAmulettGeklaut == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_SabitschDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_SabitschDieb_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschDieb_06_00"); //Dreckige Diebe haben nichts in unserem Lager verloren.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschDieb_06_01"); //Begleiche erst deine Schuld bei Sabitsch, dann darfst du wieder hinein.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschDieb_06_02"); //1000 Goldm�nzen Strafe f�r den dreisten Diebstahl und das Amulett.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Ich konnte das Amulett stehlen, was Sabitsch jedoch kurz darauf bemerkte. Ich sollte es jetzt Dexter bringen und mir dann �berlegen, wie ich das Alte Lager nach dem Diebstahl wieder freundlich stimmen kann.");
};

INSTANCE Info_Mod_Torwache_AL_01_SabitschMoerder (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_SabitschMoerder_Condition;
	information	= Info_Mod_Torwache_AL_01_SabitschMoerder_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_SabitschMoerder_Condition()
{
	if (Mod_SabitschTotPetze == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_SabitschMoerder))
	&& (!Npc_IsDead(Mod_962_STT_Scatty_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_SabitschMoerder_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschMoerder_06_00"); //Thorus Kumpel wurde diese Nacht in seiner H�tte get�tet.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschMoerder_06_01"); //Wir haben einen zuverl�ssigen Zeugen, der dich zu diesem Zeitpunkt in der N�he gesehen hat.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_SabitschMoerder_06_02"); //Bevor das nicht gekl�rt ist, kommst du ganz bestimmt nicht mehr ins Lager.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Verdammt ein Zeuge � vermutlich Scatty � hat ausgesagt, mich nachts bei der H�tte des Get�teten gesehen zu haben. Wenn ich nicht dauerhaft Hausverbot im Alten Lager haben will, so muss ich etwas unternehmen.");
};

INSTANCE Info_Mod_Torwache_AL_01_Kapitel3 (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_Kapitel3_Condition;
	information	= Info_Mod_Torwache_AL_01_Kapitel3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_AL_01_Kapitel3_Condition()
{
	if (Kapitel == 3)
	&& (Gardist_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_AL_01_Kapitel3_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Kapitel3_06_00"); //Hey, jeder Mensch, der unser Lager aufsucht, muss wissen, dass wir ab jetzt nachts die Tore verschlie�en.
	AI_Output(self, hero, "Info_Mod_Torwache_AL_01_Kapitel3_06_01"); //Es treiben sich viele Orks in letzter Zeit herum und wir wollen kein Risiko eingehen.
};

INSTANCE Info_Mod_Torwache_AL_01_EXIT (C_INFO)
{
	npc		= Mod_1129_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_AL_01_EXIT_Condition;
	information	= Info_Mod_Torwache_AL_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_AL_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_AL_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};