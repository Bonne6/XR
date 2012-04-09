INSTANCE Info_Mod_Riordian_Hi (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_Hi_Condition;
	information	= Info_Mod_Riordian_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riordian_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_Hi_10_00"); //Du traust dir ganz sch�n was zu.
	AI_Output(self, hero, "Info_Mod_Riordian_Hi_10_01"); //H�tte nicht gedacht dich nochmal wieder zu sehen.
};

INSTANCE Info_Mod_Riordian_IrrlichtBekommen (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_IrrlichtBekommen_Condition;
	information	= Info_Mod_Riordian_IrrlichtBekommen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_IrrlichtBekommen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_IrrlichtBekommen_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_10_00"); //Ich habe das hier im Tempel entdeckt.

	B_GiveInvItems	(self, hero, ItAm_Addon_WispDetector, 1);

	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_10_01"); //Es scheint, als k�nne man damit ein Irrlicht rufen, welches einem Gegenst�nde sucht.
	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_10_02"); //Dir ist es bestimmt von gr��erem Nutzen als mir.
	AI_Output(self, hero, "Info_Mod_Riordian_IrrlichtBekommen_10_03"); //Ich werde versuchen etwas mehr dar�ber herauszufinden, vielleicht l�sst sich das Aufgabenfeld des Irrlichtes erweitern, so dass es mehr Gegenst�nde finden kann oder sogar f�r dich k�mpfen.
};

INSTANCE Info_Mod_Riordian_PortalOeffnen (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_PortalOeffnen_Condition;
	information	= Info_Mod_Riordian_PortalOeffnen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nefarius meint, du h�ttest etwas f�r mich?";
};

FUNC INT Info_Mod_Riordian_PortalOeffnen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Komplett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_PortalOeffnen_Info()
{
	AI_Output(hero, self, "Info_Mod_Riordian_PortalOeffnen_15_00"); //Nefarius meint, du h�ttest etwas f�r mich?
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_10_01"); //Ja. Ich hab die Sprache der Erbauer durch die Schriften und Zeichen an den W�nden lernen k�nnen.
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_10_02"); //Da du das Portal als erster durchschreiten wirst, sobald es ge�ffnet ist, solltest du zumindest die Grundlagen dieser Sprache beherrschen.
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_10_03"); //Also h�re gut zu.

	hero.lp += 5;

	B_TeachPlayerTalentForeignLanguage (self, hero, LANGUAGE_1);

	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_10_04"); //Also, es es ganz einfach. Ein G ist ein O, ein T ist ein H ist ein I ist ein C.
	AI_Output(self, hero, "Info_Mod_Riordian_PortalOeffnen_10_05"); //Wenn du das mal kapiert hast, ist der Rest eigentlich logisch ...

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Riordian_TempelDicht (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht_Condition;
	information	= Info_Mod_Riordian_TempelDicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_TempelDicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Argibast))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht_10_00"); //Adanos sei dank. W�rst du nicht gekommen, w�ren wir alle verloren gewesen.

	B_LogEntry	(TOPIC_MOD_BEL_ADANOS, "Die Untoten sind besiegt und die Wasserkrieger vorerst sicher.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_ADANOS, LOG_SUCCESS);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Riordian_TempelDicht2 (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht2_Condition;
	information	= Info_Mod_Riordian_TempelDicht2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was ist passiert?";
};

FUNC INT Info_Mod_Riordian_TempelDicht2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht2_Info()
{
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_00"); //Was ist passiert?
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_10_01"); //Es war ein Tag wie jeder. Wir gingen alle unserem Tagwerk nach, bis pl�tzlich Kampfger�usche von drau�en zu uns reindrangen.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_10_02"); //Wir wollten nachsehen, was los war, doch dann telepotierten sich f�nf extrem m�chtige Gardisten in den Portalraum und fegten alles nieder und nahmen die anderen Wassermagier gefangen.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_10_03"); //Ich entkam im letzen Moment nach drau�en und dann versiegelte sich der Eingang. Dann kamst du zu uns und hast geholfen die Gegner zu besiegen.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_04"); //Gibt es eine M�glichkeit den Eingang zu �ffnen. Es ist sehr dringend. Khorinis Existenz steht auf dem Spiel.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_10_05"); //Der Eingang ist magisch verschlossen. man bekommt ihn nicht ohne weiteres auf.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_06"); //Was muss ich tun um in den Tempel zu gelangen?
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_10_07"); //Nun, wenn ich mich recht entsinne gibt es eine Art magischen Schl�ssel um die T�r zu �ffnen. Jedoch habe ich keine Ahnung, wo sich dieser befindet.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_08"); //Wei�t du wirklich nicht wo der Schl�ssel sein kann?
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_10_09"); //(nachdenklich) Hmmmm. Den Standort kennen nur Vatras und Saturas. Gehe am besten zu vatras in die Stadt und frage ihn um Rat.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_10_10"); //Beeil dich aber, die Zeit dr�ngt!
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht2_15_11"); //Ich werde sofort aufbrechen.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht2_10_12"); //Viel Gl�ck!

	Log_CreateTopic	(TOPIC_MOD_BEL_TEMPEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_TEMPEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_TEMPEL, "Um in den Portaltempel zu kommen muss ich einen magischen Schl�ssel finden. Den Standort kennen jedoch nur Vatras und Saturas. Ich sollte Vatras in der Stadt aufsuchen um mir Informationen zu holen.");
};

INSTANCE Info_Mod_Riordian_TempelDicht3 (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht3_Condition;
	information	= Info_Mod_Riordian_TempelDicht3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe den Schl�ssel.";
};

FUNC INT Info_Mod_Riordian_TempelDicht3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_TempelDicht))
	&& (Npc_HasItems(hero, ItKe_MagicTempelKey) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht3_Info()
{
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht3_15_00"); //Ich habe den Schl�ssel. Wir k�nnen den Eingang �ffnen.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht3_10_01"); //(erfreut) Sehr gut. Gib mir den Schl�ssel, damit ich den Eingang �ffnen kann.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht3_15_02"); //Hier hast du ihn.

	B_GiveInvItems	(hero, self, ItKe_MagicTempelKey, 1);

	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht3_10_03"); //Geh nun beiseite damit ich den Eingang �ffnen kann.
	
	B_SetTopicStatus	(TOPIC_MOD_BEL_TEMPEL, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATTEMPEL");
};

INSTANCE Info_Mod_Riordian_TempelDicht4 (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_TempelDicht4_Condition;
	information	= Info_Mod_Riordian_TempelDicht4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_TempelDicht4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht3))
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_PORTALTEMPEL_03") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_TempelDicht4_Info()
{
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht4_10_00"); //Das Tor �ffnet sich. Wir m�ssen die Anderen retten.
	AI_Output(hero, self, "Info_Mod_Riordian_TempelDicht4_15_01"); //Ich gehe vor. Sorge daf�r, dass uns niemand von hinten �berrascht.
	AI_Output(self, hero, "Info_Mod_Riordian_TempelDicht4_10_02"); //Gut, geh voran.
	
	Wld_SendTrigger	("EVT_PORTAL_EINGANG_TOR_01");

	Wld_InsertNpc	(GardeInnos_4098_Danae,	"PORTAL");
};

INSTANCE Info_Mod_Riordian_EXIT (C_INFO)
{
	npc		= Mod_771_KDW_Riordian_NW;
	nr		= 1;
	condition	= Info_Mod_Riordian_EXIT_Condition;
	information	= Info_Mod_Riordian_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Riordian_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riordian_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};