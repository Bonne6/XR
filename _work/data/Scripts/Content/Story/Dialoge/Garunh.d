INSTANCE Info_Mod_Garunh_Hi (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Hi_Condition;
	information	= Info_Mod_Garunh_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garunh_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_Orkring2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Garunh_Hi_18_00"); //Du sein Mensch von weit entfernten Ort.
	AI_Output(self, hero, "Info_Mod_Garunh_Hi_18_01"); //Ich berichte dir nicht nur von b�sen Orks, sondern auch von b�sen Menschen aus diesem Tal.
};

INSTANCE Info_Mod_Garunh_Orkring (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring_Condition;
	information	= Info_Mod_Garunh_Orkring_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was wei�t du �ber die b�sen Orks?";
};

FUNC INT Info_Mod_Garunh_Orkring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring_15_00"); //Was wei�t du �ber die b�sen Orks?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring_18_01"); //B�se Orks sind sehr abergl�ubig. Sie verg�ttern die  Macht des Erschaffers.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring_18_02"); //Er ist sehr stark, seitdem er im Tempel unter den Bergen war.
};

INSTANCE Info_Mod_Garunh_Orkring2 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring2_Condition;
	information	= Info_Mod_Garunh_Orkring2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer sind eigentlich die b�sen Menschen?";
};

FUNC INT Info_Mod_Garunh_Orkring2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring2_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring2_15_00"); //Wer sind eigentlich die b�sen Menschen?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_01"); //B�se Menschen, haben Waffen einer alten Schmiede gefunden.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_02"); //Waffen die nicht rosten und f�r Orks geschmiedet wurden.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_03"); //Sie liefern den Orks die Waffen und Orks bezahlen mit Artefakten unserer Kultur.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_04"); //Sie haben Ring von meinen Ahnen an die Menschen gegeben und Garunh muss ihn wieder zur�ckerlangen, um Ehre nicht zu beschmutzen.
};

INSTANCE Info_Mod_Garunh_Orkring3 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring3_Condition;
	information	= Info_Mod_Garunh_Orkring3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wie k�nnen wir die Orks daran hindern den Pass anzugreifen?";
};

FUNC INT Info_Mod_Garunh_Orkring3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring))
	&& (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring3_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring3_15_00"); //Wie k�nnen wir die Orks daran hindern den Pass anzugreifen?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring3_18_01"); //Wenn Mensch helfen Garunh, seinen Ring von b�sen Menschen zu holen, dann er auch St�rke von Orks schw�chen.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring3_18_02"); //B�se Menschen haben H�hle. Garunh begleiten dich zu ihr.

	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "Damit Garunh mir gegen die Orks am Pass hilft muss ich ihm zuerst helfen einen alten Ring von den Banditen zur�ckzuerobern. Er wird mich zu ihnen f�hren.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOBANDITEN");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Garunh_Orkring4 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring4_Condition;
	information	= Info_Mod_Garunh_Orkring4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garunh_Orkring4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring3))
	&& (Npc_GetDistToWP(self, "NORDOSTENLOCH_11") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring4_Info()
{
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring4_18_00"); //B�se Menschen befinden sich hinter H�tte im Berg. Eingang sein zu klein f�r Orks, deswegen sind Menschen hier sicher.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring4_18_01"); //Garunh muss hier warten und auf Erfolg von Mensch hoffen.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring4_15_02"); //Ich finde deinen Ring schon, halt mir einfach hier drau�en den R�cken frei.

	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "Wir sind bei der H�hle angekommen. Da der Eingang allerdings zu klein f�r Garunh ist, muss ich mich den Banditen alleine stellen.");
};

INSTANCE Info_Mod_Garunh_Orkring5 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring5_Condition;
	information	= Info_Mod_Garunh_Orkring5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die b�sen Menschen und ihr Anf�her sind tot.";
};

FUNC INT Info_Mod_Garunh_Orkring5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring))
	&& (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring5_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_00"); //Die b�sen Menschen und ihr Anf�her sind tot. Bei ihm habe ich auch deinen Ring gefunden.

	B_GiveInvItems	(hero, self, ItRi_Garunh, 1);

	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_01"); //Danke, Mensch, jetzt du haben meine Ehre gerettet. Ich will dir Geheimnis von Orks verraten.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_02"); //Vor vielen Jahren haben Orks in den Bergen gro�en Tempel gefunden.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_03"); //Der mutigste war Schamane Asek. Er sein der erste gewesen, der Tempel betreten hat.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_04"); //In der Artefakthalle fand er viele m�chtige Artefakte, doch keins interessierte ihn, au�er Stab des Erschaffers.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_05"); //Was soll das f�r ein Stab sein? Und wer ist der Erschaffer?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_06"); //Stab sein so stark wie Erschaffer und Erschaffer jeder sein, der Stab besitzt.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_07"); //Hei�t das, dass man mit ihm alles erschaffen kann, was man will?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_08"); //Sein g�ttliches Artefakt, nicht f�r Orks oder Menschen bestimmt.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_09"); //Asek k�nnen nur Tod erschaffen. Und das er haben gemacht, um sich und Tempel zu sch�tzen.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_10"); //Aber Asek wollte mehr. Er haben nicht nur lebende Orks im Tempel zu lebenden Toten gemacht, sondern auch tote Orks von Friedhof aufstehen lassen.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_11"); //Moment mal, soll das hei�en die Orks im Wald sind untote Orks?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_12"); //Ja, Asek nur haben ganz wenige am Leben gelassen. Nur Anf�hrer sind noch lebendig.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_13"); //Wo befindet sich der Tempel, in dem Asek sein Versteck hat?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_14"); //Das k�nnen dir nur lebender Ork-Anf�her sagen. Da du Sprache aber nicht kannst, brauchst du �bersetzer.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_15"); //Baro haben von Mensch erz�hlt, der Orks studiert hat. Am besten du gehen zu ihm.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_16"); //Wenn du wei�t, wo Asek ist, du k�nnen mich aufsuchen bei Zelt. Viel Erfolg, Mensch.

	B_GivePlayerXP	(250);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_EIS_ORKRING, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_EIS_UNTOTEORKS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_UNTOTEORKS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_UNTOTEORKS, "Garunh hat mir erz�hlt, was es mit den Orks auf sich hat. Offenbar hat ein Schamane namens Asek einen m�chtigen Stab in einem Tempel gefunden, mit dessen Hilfe er nahezu alle Orks in Untote verwandelt hat und zus�tzlich noch tote Orks hat auferstehen lassen. Um seinen Aufenthaltsort zu erfahren soll ich mit Baro sprechen, da er jemanden kennt, der die Sprache der Orks studiert hat. Danach muss ich einen Ork-Anf�hrer finden und die Informationen beschaffen.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Garunh_EXIT (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_EXIT_Condition;
	information	= Info_Mod_Garunh_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Garunh_EXIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};