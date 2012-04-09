INSTANCE Info_Mod_Larius_Hi (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Hi_Condition;
	information	= Info_Mod_Larius_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Larius_Hi_Condition()
{
	if (Mod_MitLawrenceGesprochen == 10)
	&& (Wld_IsTime(23,00,01,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_00"); //So, du bist also auf der Suche nach dem Erfinder?
	AI_Output(hero, self, "Info_Mod_Larius_Hi_15_01"); //Und du wirst mir jetzt sch�n sagen wo er ist!
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_02"); //(lacht) Haha. Du wirst ohnehin keine Gelegenheit mehr haben es jemandem weiterzusagen! Der Erfinder befindet sich in unserer Gewalt! 
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_03"); //Er arbeitet f�r unseren Herrn! Er wird uns helfen den Schl�fer zu r�chen und ihn wieder zu beleben!
	AI_Output(hero, self, "Info_Mod_Larius_Hi_15_04"); //Du hast keine Ahnung wer ich bin, oder?
	AI_Output(self, hero, "Info_Mod_Larius_Hi_01_05"); //Du bist gleich TOT! Jetzt M�nner!

	AI_UnequipArmor	(Mod_1730_MIL_Lawrence_NW);
	CreateInvItems	(Mod_1730_MIL_Lawrence_NW, ItAr_LariusRobe, 1);
	AI_EquipArmor	(Mod_1730_MIL_Lawrence_NW, ItAr_LariusRobe);

	AI_UnequipArmor	(self);
	CreateInvItems	(self, ItAr_LariusRobe, 1);
	AI_EquipArmor	(self, ItAr_LariusRobe);

	AI_UnequipArmor	(Mod_594_NONE_Lutero_NW);
	CreateInvItems	(Mod_594_NONE_Lutero_NW, ItAr_LariusRobe, 1);
	AI_EquipArmor	(Mod_594_NONE_Lutero_NW, ItAr_LariusRobe);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1730_MIL_Lawrence_NW, "ANGRIFF");
	B_StartOtherRoutine	(Mod_594_NONE_Lutero_NW, "ANGRIFF");

	AI_Teleport	(Mod_1730_MIL_Lawrence_NW, "WP_LAWRENCE");
	AI_Teleport	(Mod_594_NONE_Lutero_NW, "WP_LUTERO");

	Mod_MitLawrenceGesprochen = 11;

	B_Attack	(self, hero, AR_GuildEnemy, 0);
	//B_Attack	(Mod_1730_MIL_Lawrence_NW, hero, AR_GuildEnemy, 0);
	//B_Attack	(Mod_594_NONE_Lutero_NW, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Larius_Ornament (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_Ornament_Condition;
	information	= Info_Mod_Larius_Ornament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kannst du mir etwas zum Gr�nder der Stadt erz�hlen?";
};

FUNC INT Info_Mod_Larius_Ornament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Larius_Ornament_Info()
{
	AI_Output(hero, self, "Info_Mod_Larius_Ornament_15_00"); //Kannst du mir etwas zum Gr�nder der Stadt erz�hlen?
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_01"); //Jemand, der sich f�r die Geschichte von Khorinis interessiert? Das gibt es nicht oft.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_02"); //Gut, ich will dir erz�hlen, was ich �ber ihn wei�.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_03"); //Er hat die Stadt gegr�ndet und wollte es zu seinem Refugium machen. Er soll ein Prediger Adanos gewesen sein.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_04"); //Die Bev�lkerung der Stadt jedoch hat sich stark Innos zugewendet.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_05"); //Er war unzufrieden hier und ging �ber den Pass im Norden nach Relendel.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_06"); //Einige sagen, dass er dort die Stadt Khorata gegr�ndet hat, welche ganz und gar dem einen Gott huldigt.
	AI_Output(hero, self, "Info_Mod_Larius_Ornament_15_07"); //Interessant.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_08"); //Ich hoffe, ich konnte dir helfen.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_09"); //Wenn du noch mehr Informationen zu ihm ben�tigst, dann sprich in Khorata mal mit Anselm. Er ist dort der Stadthalter.
	AI_Output(self, hero, "Info_Mod_Larius_Ornament_01_10"); //Du findest die Stadt oben im Norden der Insel. Noch ein ganzes St�ck n�rdlich der Ausgrabungsstelle der Wassermagier ist der Pass.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Der Priester scheint Khorinis verlassen und in Relendel die Stadt Khorata gegr�ndet zu haben. Sicher befindet sich das Ornamentst�ck dort. Ich sollte mich mal mit Anselm unterhalten. Khorata liegt im Norden der Insel und ist durch einen Pass n�rdlich der Ausgrabungsstelle zu finden.");
};

INSTANCE Info_Mod_Larius_EXIT (C_INFO)
{
	npc		= Mod_591_NONE_Larius_NW;
	nr		= 1;
	condition	= Info_Mod_Larius_EXIT_Condition;
	information	= Info_Mod_Larius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Larius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Larius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};