INSTANCE Info_Mod_Cassia_Hi (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Hi_Condition;
	information	= Info_Mod_Cassia_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_Hi_16_00"); //Was willst du hier?
};

INSTANCE Info_Mod_Cassia_Irdorath (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath_Condition;
	information	= Info_Mod_Cassia_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich plane eine Seereise mit dem Schiff der Paladine zu einer Insel des �blen Magiers Xeres.";
};

FUNC INT Info_Mod_Cassia_Irdorath_Condition()
{
	if (Diebe_Dabei)
	&& (Mod_Irdorath == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath_15_00"); //Ich plane eine Seereise mit dem Schiff der Paladine zu einer Insel des �blen Magiers Xeres.
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath_15_01"); //Zu diesem Anlass suche ich f�hige Leute f�r meine Mannschaft und wollte fragen, ob du vielleicht dazu bereit w�rest mitzukommen?
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_16_02"); //Du er�ffnest mir auf das Schiff der Paladine zu gehen, �ber das weite Meer zu segeln und die Exklave eines finsteren Magiers aufzusuchen?
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath_15_03"); //Nun, es war ja nur eine Fra ...
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_16_04"); //(unterbricht) Und du sollst unter dem Schutz der hiesigen Magier stehen und damit auch deine Mission mit allen Beteiligten ...
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_16_05"); //Hmm, es w�re in der Tat keine schlechte Gelegenheit um die finstere Kanalisation zu verlassen.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_16_06"); //Wenn du es w�nscht, werde ich mit dir die Insel dieses gef�hrlichen Magiers aufzusuchen.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath_16_07"); //(halblaut) Denn Gefahr verspricht in dem Fall auch Gewinn.
};

INSTANCE Info_Mod_Cassia_Irdorath2 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath2_Condition;
	information	= Info_Mod_Cassia_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dann werde Mitglied meiner Crew und begleite mich auf dieser Reise.";
};

FUNC INT Info_Mod_Cassia_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath2_15_00"); //Dann werde Mitglied meiner Crew und begleite mich auf dieser Reise.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath2_16_01"); //Nichts lieber als das. Ich werde bei dem Schiff auf den Aufbruch unserer Exkursion warten.

	Mod_CrewCount += 1;

	Mod_CassiaDabei = 1;

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Mit Cassia habe ich eine f�hige und geschickte Meisterin des Degens mit an Bord, die sich mehr als nur ihrer Haut zu erwehren wei�.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cassia_Irdorath3 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath3_Condition;
	information	= Info_Mod_Cassia_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Tut mir leid, aber es scheint das wir zu viele sind.";
};

FUNC INT Info_Mod_Cassia_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_CassiaDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath3_15_00"); //Tut mir leid, aber es scheint das wir zu viele sind. Ich kann dich doch nicht mitnehmen.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath3_16_01"); //Schade. Ich gehe dann wieder zur�ck. Du wei�t wo du mich findest, wenn doch noch ein Platz frei werden sollte.

	Mod_CassiaDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cassia_Irdorath4 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Irdorath4_Condition;
	information	= Info_Mod_Cassia_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich kann dich doch mitnehmen.";
};

FUNC INT Info_Mod_Cassia_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_CassiaDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Irdorath4_15_00"); //Ich kann dich doch mitnehmen. Es hat sich noch ein Platz auf dem Schiff gefunden.
	AI_Output(self, hero, "Info_Mod_Cassia_Irdorath4_16_01"); //Sehr gut, ich bin dann wieder am Hafen.

	Mod_CassiaDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cassia_Aufnahme (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Aufnahme_Condition;
	information	= Info_Mod_Cassia_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Na, wer bist du denn?";
};

FUNC INT Info_Mod_Cassia_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hanna_Meldor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_00"); //Na, wer bist du denn?
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_16_01"); //Ich? Ich bin die Chefin der Diebe. 
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_02"); //Hier bin ich also gelandet.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_16_03"); //Wieso bist du hier? Hanna w�rde niemals einem Fremden Zutritt gew�hren.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_04"); //Sumpfkrautmeldor schickt mich, er meinte, ich sei ein anst�ndiger Kerl und aus mir k�nnte noch was werden.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_16_05"); //Hmm... Was hast du gemacht, um sein Vertrauen zu gewinnen? Normalerweise traut er niemandem �ber den Weg.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_06"); //Ich hab ihm den Knast erspart, indem ich sein Krautp�ckchen versteckt habe, bevor sich die Miliz ihn vorgekn�pft hat.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_16_07"); //Das wird immer schlimmer. Sehr schwer heutzutage als Dieb �ber die Runden zu kommen.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_16_08"); //Jeder schaut dem anderen auf die Finger und dann rennen sie wegen den kleinsten Verd�chten direkt zu Lord Andre.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_09"); //Was ist hier eigentlich los?
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_16_10"); //Bevor ich dir das erz�hle muss ich wissen, ob ich dir vertrauen kann.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_16_11"); //Willst du in meine Diebesgilde beitreten? Entscheide zwischen Reichtum und Tod.
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_15_12"); //Was? Du willst mich t�ten, wenn ich euch nicht beitrete?
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_16_13"); //Ja, mir wird keine andere M�glichkeit bleiben.

	Info_ClearChoices	(Info_Mod_Cassia_Aufnahme);
	
	if (Mod_AnzahlNebengilden < MaxNebengilden)
	&& (hero.guild != GIL_PAL)
	{
		Info_AddChoice	(Info_Mod_Cassia_Aufnahme, "Nun gut, ich wollte schon immer ein flinker Dieb werden.", Info_Mod_Cassia_Aufnahme_Ja);
	};
	Info_AddChoice	(Info_Mod_Cassia_Aufnahme, "Dann versuch's doch!", Info_Mod_Cassia_Aufnahme_Nein);
};

FUNC VOID Info_Mod_Cassia_Aufnahme_Ja()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_Ja_15_00"); //Nun gut, ich wollt schon immer ein flinker Dieb werden.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Ja_16_01"); //Ich nehme dich herzlich in unseren Reihen auf.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Ja_16_02"); //Von einem flinken und guten Dieb bist du noch weit entfernt. Als erstes musst du dich beweisen, indem du mir 2000 Goldm�nzen bringst.
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Ja_16_03"); //Ich werde dir den Taschendiebstahl lehren. Dann mach ich dich mit denn anderen Dieben vertraut.

	Mod_AnzahlNebengilden += 1;

	Diebe_Dabei = TRUE;

	B_GivePlayerXP	(100);

	B_G�ttergefallen(3, 2);

	B_SetTopicStatus	(TOPIC_MOD_MELDOR_HANNA, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_DIEB_GOLD, LOG_MISSION);
	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_GOLD, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_NEBENGILDEN, TOPIC_MOD_DIEB_GOLD, "Ich geh�re nun zu den Dieben.", "Cassia will, dass ich 2000 Goldm�nzen bringe. Sie will mir dazu den Taschendiebstahl beibringen.");

	Info_ClearChoices	(Info_Mod_Cassia_Aufnahme);
};

FUNC VOID Info_Mod_Cassia_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Aufnahme_Nein_15_00"); //Dann versuch's doch!
	AI_Output(self, hero, "Info_Mod_Cassia_Aufnahme_Nein_16_01"); //Meldor hat einen Fehler begangen und ich werde ihn jetzt ausbessern.

	Info_ClearChoices	(Info_Mod_Cassia_Aufnahme);

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_MELDOR_HANNA, LOG_FAILED);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Cassia_Goldmuenzen (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Goldmuenzen_Condition;
	information	= Info_Mod_Cassia_Goldmuenzen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier hast du dein Gold.";
};

FUNC INT Info_Mod_Cassia_Goldmuenzen_Condition()
{
	if (Diebe_Dabei == TRUE)
	&& (Npc_HasItems(hero, ItMi_Gold) > 1999)
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKPOCKET) == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Goldmuenzen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Goldmuenzen_15_00"); //Hier hast du dein Gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 2000);

	AI_Output(self, hero, "Info_Mod_Cassia_Goldmuenzen_16_01"); //Wahrhaftig, du bist besser, als ich angenommen hatte. Du hast nun das Recht alles zu wissen. Frag mich ruhig.

	B_SetTopicStatus	(TOPIC_MOD_DIEB_GOLD, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	B_G�ttergefallen(3, 1);
};

INSTANCE Info_Mod_Cassia_WasNun (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_WasNun_Condition;
	information	= Info_Mod_Cassia_WasNun_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was nun?";
};

FUNC INT Info_Mod_Cassia_WasNun_Condition()
{
	if (Diebe_Dabei == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_WasNun_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_00"); //Was nun?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_01"); //Da du grad fragst, Attila wurde das letzte Mal von der Miliz geschnappt als er seinen Job machen wollte.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_02"); //Wir m�ssen ihn da rausholen.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_03"); //Und wie hast du dir das vorgestellt?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_04"); //Wir schleusen dich in die Miliz ein. Du wirst Attila zur Flucht verhelfen und noch versuchen herauszufinden, wer die Miliz auf Meldor hetzt.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_05"); //Was? Das soll ich machen? Wenn die mich ertappen werden sie mich t�ten.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_06"); //Ich wei�. Du hast diesen Weg gew�hlt, aber du hast eine Chance, da rauszukommen, und ohne Attila wird die Situation immer unertr�glicher.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_07"); //Ich sehe ich hab schon wieder keine Wahl.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_08"); //Du hattest die Wahl und hast dich f�r diesen Weg entschieden.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_09"); //Und wie soll ich in die Miliz reinkommen?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_10"); //Mach dir dar�ber keine Sorgen, wir haben schon Vorgeplant. Ramirez ist ein gesuchter Dieb. Wenn du ihnen Ramirez bringst, werden sie dich sofort aufnehmen.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_11"); //Blo� das Problem w�re, dass du schnell handeln musst. Sie werden ihn bestimmt nicht lange leben lassen.
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_15_12"); //Wenn ich es nicht schaffe?
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_13"); //Dann wirst du schuldig gesprochen f�r Attila's und Ramirez' Tod.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_14"); //Bevor wir noch mehr Zeit verschwenden mach dich bereit und komm sp�ter nochmal her.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_16_15"); //Dann wirst du mit Ramirez in die Kaserne gehen.	

	Log_CreateTopic	(TOPIC_MOD_DIEB_ATTILA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ATTILA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Cassia will, dass ich Attila aus dem Gef�ngnis befreie. Dazu soll ich der Miliz beitreten, in dem ich ihnen Ramirez ausliefere.");
};

INSTANCE Info_Mod_Cassia_WasNun_Ramirez (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_WasNun_Ramirez_Condition;
	information	= Info_Mod_Cassia_WasNun_Ramirez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich bin bereit die Aufgabe anzunehmen.";
};

FUNC INT Info_Mod_Cassia_WasNun_Ramirez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_WasNun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_WasNun_Ramirez_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_WasNun_Ramirez_15_00"); //Ich bin bereit die Aufgabe anzunehmen.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_Ramirez_16_01"); //Du �berrascht mich schon wieder, aber leider haben wir Probleme.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_Ramirez_16_02"); //Ramirez vertraut dir nicht. Er denkt du seist nicht gut genug, um diese Aufgabe zu meistern.
	AI_Output(self, hero, "Info_Mod_Cassia_WasNun_Ramirez_16_03"); //Am besten du redest mit ihm.

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Ich wollte den Auftrag von Cassia beginnen, doch sie hat mir mitgeteilt, dass Ramirez mir nicht vertraut. Ich muss ihn wohl erst �berzeugen.");
};

INSTANCE Info_Mod_Cassia_RamirezDabei (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_RamirezDabei_Condition;
	information	= Info_Mod_Cassia_RamirezDabei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich konnte Ramirez �berzeugen, ...";
};

FUNC INT Info_Mod_Cassia_RamirezDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Bandenchef))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_RamirezDabei_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_RamirezDabei_15_00"); //Ich konnte Ramirez �berzeugen, indem ich Attila's Job �bernommen und eine Bande im Hafenviertel ausgeschaltet habe.
	AI_Output(self, hero, "Info_Mod_Cassia_RamirezDabei_16_01"); //Wenn du Attila's Job erfolgreich ausf�hren konntest, dann wirst du damit bestimmt keine Probleme haben.
	AI_Output(hero, self, "Info_Mod_Cassia_RamirezDabei_15_02"); //Ich wollte dir Bescheid geben das wir gehen.
	AI_Output(self, hero, "Info_Mod_Cassia_RamirezDabei_16_03"); //Gut, viel Gl�ck!

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Ich habe Cassia Bescheid gegeben. Dann nichts wie los. Ramirez wird jetzt mit mir zu Lord Andre gehen.");
};

INSTANCE Info_Mod_Cassia_Elvira (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Elvira_Condition;
	information	= Info_Mod_Cassia_Elvira_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_Elvira_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_WelcomeBack))
	&& (Wld_GetDay()-1 > Mod_Diebe_Andre_Day)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Fuego_Unruhen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Elvira_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_00"); //Ahh, da bist du ja wieder ... gerade richtig f�r einen Auftrag.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_01"); //Worum geht es? Wieder eine Truhe in Khorinis auszur�umen?
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_02"); //Nein, nach dem gro�en Coup von zuletzt m�ssen wir hier erst mal einige Zeit vorsichtiger sein, da die Wachen nun viel aufmerksamer sind ... zumindest die n�chste Zeit �ber.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_03"); //Was ist dann geplant?
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_04"); //Nun, wir haben unsere F�hler etwas ausgestreckt.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_05"); //Jesper hat einen kleinen Ausflug nach Khorata gemacht und sich da ein bisschen umgeh�rt.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_06"); //Zwar scheint die Stadt ziemlich pleite zu sein ... die Leute sind jedoch sehr abergl�ubisch.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_07"); //Und mit so etwas ist immer viel Geld zu machen.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_08"); //Soll ich sie etwa mit Gruselgeschichten erschrecken und ihnen damit ihr Gold abnehmen?
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_09"); //Nein, das brauchst du gar nicht ... das haben schon die Magier des Feuers f�r uns gemacht.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_10"); //Das Gold ist sch�n in einer Truhe gelagert.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_11"); //Diese ist jedoch leider durch ein gutes Schloss gesichert.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_12"); //Wie Jesper herausbekommen hat, tr�gt die Feuermagierin Elvira den Schl�ssel bei sich.
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira_15_13"); //Ok, und ich darf ihn ihr nun abnehmen.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_14"); //Gut, so weit hast du also mitgedacht.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_15"); //Ob es nun �ber Taschendiebstahl ist, oder �ber einen anderen Weg.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_16"); //Es ist nie von Nachteil sich bei den richtigen Leuten nach Informationen umzuh�ren. Auch diese Tugend sollte ein Dieb stets pflegen.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_17"); //Jedenfalls sind in der Truhe gesch�tzte 1000 Goldm�nzen und eine wertvolle Innosstatue, die wir bestimmt zu einem guten Preis loswerden k�nnen.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira_16_18"); //Sobald du alles hast, meld dich bei mir.

	Log_CreateTopic	(TOPIC_MOD_DIEB_ELVIRA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_ELVIRA, "Diesmal darf ich nach Khorata und der Feuermagierin Elvira den Schl�ssel f�r die Goldtruhe der Erw�hlten Innos� abnehmen. Cassia meinte, dass es nicht Schaden k�nnte sich bei den passenden Leuten umzuh�ren.");
};

INSTANCE Info_Mod_Cassia_Elvira2 (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Elvira2_Condition;
	information	= Info_Mod_Cassia_Elvira2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe den Inhalt der Truhe.";
};

FUNC INT Info_Mod_Cassia_Elvira2_Condition()
{
	if (Npc_HasItems(hero, ItMi_InnosStatue_REL) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Elvira2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_15_01"); //Ich habe den Inhalt der Truhe. Hier die Statue ...

	B_GiveInvItems	(hero, self, ItMi_InnosStatue_REL, 1);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_16_02"); //Sehr sch�n. Und das Gold?

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);

	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Cassia_Elvira2, "Leider waren nur 200 Goldst�cke drinnen.", Info_Mod_Cassia_Elvira2_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		Info_AddChoice	(Info_Mod_Cassia_Elvira2, "Ich habe 500 Goldst�cke darin gefunden.", Info_Mod_Cassia_Elvira2_B);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Info_AddChoice	(Info_Mod_Cassia_Elvira2, "Hier die 1000 Goldst�cke.", Info_Mod_Cassia_Elvira2_A);
	};
};

FUNC VOID Info_Mod_Cassia_Elvira2_C()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_C_15_00"); //Leider waren nur 200 Goldst�cke drinnen.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_16_01"); //Willst du mich zum Narren halten? Da wollen wir doch gleich mal nachsehen, B�rschchen ...

	if (Npc_HasItems(hero, ItMi_Gold) >= 800)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_16_02"); //Aha .. hab ich�s mir doch gedacht ... die Taschen voller Gold.
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_16_03"); //Die restlichen M�nzen aus der Truhe nehm ich dann mal auch an mich.

		B_GiveInvItems	(hero, self, ItMi_Gold, 800);

		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_16_04"); //Achja, hier deine Belohnung.

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_16_05"); //F�r deinen miserablen Versuch mich zu t�uschen hast du wirklich nicht mehr verdient.

		B_GivePlayerXP	(400);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_16_06"); //Was, kaum ein Goldst�ck in deinen Taschen?
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_16_07"); //Arme Wurst ... wann hast du das letzte Mal jemanden erfolgreich beklaut?
		AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_C_16_08"); //Na ja, hier paar Goldst�cke f�r dich, damit du dir ein vergammeltes St�ck Brot auf dem Markt kaufen kannst.

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_GivePlayerXP	(200);
	};

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);
};

FUNC VOID Info_Mod_Cassia_Elvira2_B()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_B_15_00"); //Ich habe 500 Goldst�cke darin gefunden.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_B_16_01"); //(argw�hnisch) Nur 500 Goldst�cke? Hmm, nun gut.
	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_B_16_02"); //Hier hast du 200 Goldst�cke f�r deine M�hen.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);
};

FUNC VOID Info_Mod_Cassia_Elvira2_A()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Elvira2_A_15_00"); //Hier die 1000 Goldst�cke.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Cassia_Elvira2_A_16_01"); //Sehr sch�n. 600 Goldst�cke bekommst du f�r deine gute Arbeit gleich wieder zur�ck, da uns die Statue beim richtigen K�ufer ja auch noch einige M�nzen einbringt ...

	B_GiveInvItems	(self, hero, ItMi_Gold, 600);

	B_GivePlayerXP	(600);

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ELVIRA, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Cassia_Elvira2);
};

INSTANCE Info_Mod_Cassia_Meldor (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Meldor_Condition;
	information	= Info_Mod_Cassia_Meldor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was macht eigentlich Meldor?";
};

FUNC INT Info_Mod_Cassia_Meldor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Meldor_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Meldor_15_00"); //Was macht eigentlich Meldor?
	AI_Output(self, hero, "Info_Mod_Cassia_Meldor_16_01"); //Meldor ist der Sumpfkrauth�ndler. Zur Zeit kann er aber seinen T�tigkeiten nicht nachgehen, weil ihm die Miliz �fters auflauert.
};

INSTANCE Info_Mod_Cassia_Mitglieder (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Mitglieder_Condition;
	information	= Info_Mod_Cassia_Mitglieder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer geh�rt alles zur Diebesgilde?";
};

FUNC INT Info_Mod_Cassia_Mitglieder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Mitglieder_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Mitglieder_15_00"); //Wer geh�rt alles zur Diebesgilde?
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_16_01"); //Ramirez und ich sind die Anf�hrer der Gilde.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_16_02"); //Kardif, Nagur, Meldor und Halvor besetzen das Hafenviertel.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_16_03"); //Halvor kann deine gestohlenen Waren kaufen, zu einem viel besseren Preis als die anderen H�ndler es dir je abkaufen w�rden.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_16_04"); //Rengaru ist momentan auf dem Marktplatz, um die Reichen zu bestehlen, und Joe beim Tempelplatz.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_16_05"); //Unser Spion als G�rtner getarnt sitzt im oberen Viertel und spioniert dort die Paladine aus.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_16_06"); //Hanna ist blo� unsere T�rwache und keine richtige Diebin.
	AI_Output(self, hero, "Info_Mod_Cassia_Mitglieder_16_07"); //Und zu guter letzt Attila, unser Mann der unsere Problem beseitigt.
};

INSTANCE Info_Mod_Cassia_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_AndreVermaechtnis_Condition;
	information	= Info_Mod_Cassia_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bilgot_AndreVermaechtnis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_16_00"); //He, sieh an wer hier einfach zu uns hineinspaziert kommt.
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_16_01"); //Ich hatte eigentlich mit Jesper gerechnet ... und nicht mit unwillkommenen G�sten.
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_16_02"); //So muss ich dich mit meinem Degen leider dieses Platzes verweisen.

	AI_ReadyMeleeWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Cassia_AndreVermaechtnis_15_03"); //Wohl eher meine ganze Mannschaft ...
	AI_Output(self, hero, "Info_Mod_Cassia_AndreVermaechtnis_16_04"); //Was faselst ... (wird unterbrochen)

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_755_MIL_Wambo_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "DIEB");

	AI_Teleport	(Mod_744_MIL_Pablo_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "DIEB");

	AI_Teleport	(Mod_564_MIL_Boltan_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_564_MIL_Boltan_NW, "DIEB");

	AI_Teleport	(Mod_596_MIL_Martin_NW, "NW_CITY_KANAL_25");
	B_StartOtherRoutine	(Mod_596_MIL_Martin_NW, "DIEB");
};

INSTANCE Info_Mod_Cassia_Lehrer (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Lehrer_Condition;
	information	= Info_Mod_Cassia_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer kann mir noch was beibringen?";
};

FUNC INT Info_Mod_Cassia_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Lehrer_15_00"); //Wer kann mir noch was beibringen?

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_16_01"); //Also ich k�nnte dir helfen geschickter zu werden.
	};

	if (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_16_02"); //Ramirez ist der beste Schl�sserknacker. Keine Truhe ist vor seinen Dietrichen sicher.
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_16_03"); //Aber auch Diego kann dir das Schl�sserknacken zeigen.
	};

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_16_04"); //Attila kann dich im Einhandkampf unterrichten.
	};

	if (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_16_05"); //Jesper ist der Meister des Schleichens.
	};

	if (Npc_GetTalentSkill (hero, NPC_TALENT_ACROBAT) == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Cassia_Lehrer_16_06"); //Rengaru ist der Meister der Akrobatik.
	};
};

INSTANCE Info_Mod_Cassia_Lernen   (C_INFO)
{
	npc         	= Mod_568_NONE_Cassia_NW;
	nr          	= 1;
	condition   	= Info_Mod_Cassia_Lernen_Condition;
	information 	= Info_Mod_Cassia_Lernen_Info;
	permanent   	= 1;
	important	= 0;
	description 	= "Zeig mir den Taschendiebstahl. (10 LP)";
};

FUNC INT Info_Mod_Cassia_Lernen_Condition()
{	
	Info_Mod_Cassia_Lernen.description = B_BuildLearnString("Zeig mir den Taschendiebstahl.", B_GetLearnCostTalent(hero, NPC_TALENT_PICKPOCKET, 1));

	if (Diebe_Dabei == TRUE)
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKPOCKET) == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Cassia_Lernen_Info()
{
	AI_Output (hero, self, "Info_Mod_Cassia_Lernen_15_00");//Zeig mir den Taschendiebstahl.
	
	if (B_TeachThiefTalent (self, hero, NPC_TALENT_PICKPOCKET))
	{
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_16_01");//Wenn du jemandem die Taschen ausleeren willst, lenke ihn ab. Quatsch ihn einfach an, sprich mit ihm.
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_16_02");//Beim Gespr�ch guckst du dir ihn an. Achte auf ausgebeulte Taschen, Schmuck oder Lederschn�re am Hals. Und achte vor allem darauf, wie aufmerksam der Kerl ist.
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_16_03");//Einen betrunkenen Tagel�hner auszurauben, ist was anderes, als einen wachsamen H�ndler, klar?
		AI_Output (self, hero, "Info_Mod_Cassia_Lernen_16_04");//Wenn du dich nat�rlich ungeschickt anstellst, kriegt er's mit. Also immer ruhig bleiben.
	};
};

INSTANCE Info_Mod_Cassia_Lernen_DEX (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Lernen_DEX_Condition;
	information	= Info_Mod_Cassia_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Bring mir was bei.";
};

FUNC INT Info_Mod_Cassia_Lernen_DEX_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_Lernen_DEX_15_00"); //Bring mir was bei.
	AI_Output(self, hero, "Info_Mod_Cassia_Lernen_DEX_16_01"); //Was willst du lernen?

	Info_ClearChoices	(Info_Mod_Cassia_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Cassia_Lernen_DEX);
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Cassia_Pickpocket (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_Pickpocket_Condition;
	information	= Info_Mod_Cassia_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180_Female;
};

FUNC INT Info_Mod_Cassia_Pickpocket_Condition()
{
	C_Beklauen	(170, ItMi_Gold, 750);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

	Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_BACK, Info_Mod_Cassia_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cassia_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

		Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cassia_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cassia_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cassia_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cassia_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cassia_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cassia_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cassia_EXIT (C_INFO)
{
	npc		= Mod_568_NONE_Cassia_NW;
	nr		= 1;
	condition	= Info_Mod_Cassia_EXIT_Condition;
	information	= Info_Mod_Cassia_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cassia_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};