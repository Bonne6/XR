INSTANCE Info_Mod_Lukor_Hi (C_INFO)
{
	npc		= Mod_7266_GUR_BaalLukor_OGY;
	nr		= 1;
	condition	= Info_Mod_Lukor_Hi_Condition;
	information	= Info_Mod_Lukor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lukor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_00"); //Da ist ja der ungl�ubige Narr, der meinen Meister verbannt hat.
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_15_01"); //Was, du lebst auch noch?
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_02"); //(irre) Verbannt magst du ihn haben. Aber vorher wurde mir noch ein Teil seiner Macht �bertragen.
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_15_03"); //Was, wovon sprichst du?
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_04"); //(durchgeknallt) Lauter ungl�ubige Narren, alle folgen sie fremden G�tzen, G�ttern oder dem schlichten Mammon. Sie alle werden b��en, mit ihrem Blute.
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_15_05"); //(leise zu sich selbst) Kommt mir irgendwie bekannt vor.
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_31_06"); //(wie besessen) Ich w�hrenddessen habe meditiert, Tage und Wochen, unaufh�rlich, und gelernt, M�chte freizusetzen und zu nutzen, die weit �ber die eines gew�hnlichen Magiers oder gar K�mpfers hinausgehen.

	Info_ClearChoices	(Info_Mod_Lukor_Hi);

	Info_AddChoice	(Info_Mod_Lukor_Hi, "Na und, der Schl�fer war ja sowieso nur ein mickriger Diener eben eines Magiers.", Info_Mod_Lukor_Hi_C);
	Info_AddChoice	(Info_Mod_Lukor_Hi, "Hmm, ich glaube, meine Waffe zwischen deinen Schulterbl�ttern (...)", Info_Mod_Lukor_Hi_B);
	Info_AddChoice	(Info_Mod_Lukor_Hi, "Ja, ja, ich lass dich dann mal weiter meditieren.", Info_Mod_Lukor_Hi_A);
};

FUNC VOID Info_Mod_Lukor_Hi_D()
{
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_D_31_00"); //(ohne die Worte zu beachten) Und nun traf ich endlich auf Verb�ndete, Diener, die ihrem Meister und Sch�pfer auch weiterhin treu ergeben sind.
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_D_31_01"); //(verwirrt) Ja, mein Meister ... (�berrascht feststellend) Und hier der Ungl�ubige, der ihn verbannte ...
	AI_Output(self, hero, "Info_Mod_Lukor_Hi_D_31_02"); //(im Wahn) Mit deinem Blute werde ich den Altar nun tr�nken. Stirb!
	
	Info_ClearChoices	(Info_Mod_Lukor_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Lukor_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_C_15_00"); //Na und, der Schl�fer war ja sowieso nur ein mickriger Diener eben eines Magiers.
	
	Info_Mod_Lukor_Hi_D();
};

FUNC VOID Info_Mod_Lukor_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_B_15_00"); //Hmm, ich glaube, meine Waffe zwischen deinen Schulterbl�ttern k�nnte dich wieder schnell auf den Boden zur�ckholen.

	Info_Mod_Lukor_Hi_D();
};

FUNC VOID Info_Mod_Lukor_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lukor_Hi_A_15_00"); //Ja, ja, ich lass dich dann mal weiter meditieren. Manch einer hat Jahrzehnte gebraucht, bis er die Erleuchtung fand ...

	Info_Mod_Lukor_Hi_D();
};