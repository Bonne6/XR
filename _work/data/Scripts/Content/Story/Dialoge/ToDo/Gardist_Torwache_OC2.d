INSTANCE Info_Mod_Torwache_Halt (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_Halt_Condition;
	information	= Info_Mod_Torwache_Halt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_Halt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaMon_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_Halt_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_Halt_08_00"); //HALT! Was wollt hier?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Torwache_SabitschDieb (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_SabitschDieb_Condition;
	information	= Info_Mod_Torwache_SabitschDieb_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_SabitschDieb_Condition()
{
	if (Mod_SabitschAmulettGeklaut == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_AL_01_SabitschDieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_SabitschDieb_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschDieb_08_00"); //Dreckige Diebe haben nichts in unserem Lager verloren.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschDieb_08_01"); //Begleiche erst deine Schuld bei Sabitsch, dann darfst du wieder hinein.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschDieb_08_02"); //1000 Goldm�nzen Strafe f�r den dreisten Diebstahl und das Amulett.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Ich konnte das Amulett stehlen, was Sabitsch jedoch kurz darauf bemerkte. Ich sollte es jetzt Dexter bringen und mir dann �berlegen, wie ich das Alte Lager nach dem Diebstahl wieder freundlich stimmen kann.");
};

INSTANCE Info_Mod_Torwache_SabitschMoerder (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_SabitschMoerder_Condition;
	information	= Info_Mod_Torwache_SabitschMoerder_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torwache_SabitschMoerder_Condition()
{
	if (Mod_SabitschTotPetze == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torwache_AL_01_SabitschMoerder))
	&& (!Npc_IsDead(Mod_962_STT_Scatty_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_SabitschMoerder_Info()
{
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschMoerder_08_00"); //Thorus Kumpel wurde diese Nacht in seiner H�tte get�tet.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschMoerder_08_01"); //Wir haben einen zuverl�ssigen Zeugen, der dich zu diesem Zeitpunkt in der N�he gesehen hat.
	AI_Output(self, hero, "Info_Mod_Torwache_SabitschMoerder_08_02"); //Bevor das nicht gekl�rt ist, kommst du ganz bestimmt nicht mehr ins Lager.

	B_LogEntry	(TOPIC_MOD_BDT_ORKS, "Verdammt ein Zeuge � vermutlich Scatty � hat ausgesagt, mich nachts bei der H�tte des Get�teten gesehen zu haben. Wenn ich nicht dauerhaft Hausverbot im Alten Lager haben will, so muss ich etwas unternehmen.");
};

INSTANCE Info_Mod_Torwache_EXIT (C_INFO)
{
	npc		= Mod_1130_GRD_Torwache_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_EXIT_Condition;
	information	= Info_Mod_Torwache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};