INSTANCE Info_Mod_Velario_Hi (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_Hi_Condition;
	information	= Info_Mod_Velario_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Velario_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velario_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Velario_Hi_06_01"); //Ich bin Velario.
};

INSTANCE Info_Mod_Velario_MangelQuest (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_MangelQuest_Condition;
	information	= Info_Mod_Velario_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was studierst du, Bruder?";
};

FUNC INT Info_Mod_Velario_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest_15_00"); //Was studierst du, Bruder?
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_01"); //Hmm, was? Ohh, entschuldige, ich war gerade in die Schriften vertieft.
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest_15_02"); //Womit besch�ftigst du dich?
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_03"); //Nun, ich suche nach neuen M�glichkeiten der magischen Kriegsf�hrung.
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_04"); //Diese Belagerung verlangt uns alles ab, und da darf ich nichts unversucht lassen, uns einen Vorteil im Kampf zu verschaffen.
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest_15_05"); //Und wie laufen die Studien?
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_06"); //Ehrlich gesagt ... miserabel. Ich habe schon jedes dieser B�cher hier gelesen, aber es steht einfach nichts Nennenswertes drin.
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest_06_07"); //Ich br�uchte einfach mehr Schriften f�r meine Studien, sonst bezweifele ich ernsthaft, dass ich jemals irgendwelche Fortschritte erziele.

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Velario sucht verzweifelt nach Schriften �ber magische Kriegsf�hrung, um der Belagerung besser zu widerstehen.");
};

INSTANCE Info_Mod_Velario_MangelQuest2 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_MangelQuest2_Condition;
	information	= Info_Mod_Velario_MangelQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich denke das hier k�nnte dich interessieren.";
};

FUNC INT Info_Mod_Velario_MangelQuest2_Condition()
{
	B_StopMangel();
	
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_MangelQuest))
	&& (Npc_HasItems(hero, ItWr_ZombieToHuman) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_MangelQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest2_15_00"); //Ich denke das hier k�nnte dich interessieren.

	B_GiveInvItems	(hero, self, ItWr_ZombieToHuman, 1);

	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_01"); //Lass sehen.

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_02"); //(verbl�fft) Was zum ... Bei Innos, woher hast du dieses Werk und unter welchem Umst�nden ist es in deinen Besitz gelangt?
	AI_Output(hero, self, "Info_Mod_Velario_MangelQuest2_15_03"); //Es stammt aus einem uralten Tempel und die Umst�nde ... sagen wir mal, ich war dem Tode n�her, als mir lieb war.
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_04"); //Das muss ich erst einmal gr�ndlich studieren. Ich glaube, das k�nnte mir zu entscheidenden Kenntnissen verhelfen ...
	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_05"); //Aber warte, nimm diese Spruchrollen zum Dank.

	B_ShowGivenThings	("Feuerregen Spruchrolle und 2 Feuersturm Spruchrollen erhalten");

	AI_Output(self, hero, "Info_Mod_Velario_MangelQuest2_06_06"); //Eine vergleichsweise bescheidene Gabe, wenn das Buch tats�chlich das halten sollte, was es auf den ersten Blick zu versprechen scheint.

	CreateInvItems	(hero, ItSc_Firerain, 1);
	CreateInvItems	(hero, ItSc_Pyrokinesis, 2);

	B_GivePlayerXP	(500);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Velario war �ber das Buch mehr als nur gl�cklich.");

	Mod_PAT_VelarioDay = Wld_GetDay();
};

INSTANCE Info_Mod_Velario_AurenUndKristalle (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velario_AurenUndKristalle_Condition()
{
	if (Mod_PAT_Velario == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle_Info()
{
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_00"); //Ja, endlich, der Durchbruch!
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_01"); //Was hast du herausgefunden?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_02"); //Im Buch waren zahlreiche Ausf�hrungen �ber so genannte "Aurazauber" festgehalten.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_03"); //Im gemeinsamen Studium mit einem der D�monenmagier, ist es mir gelungen Spruchrollen herzustellen, welche diese Macht in sich bergen.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_04"); //Was verm�gen diese Zauber?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_05"); //Wenn alles wie geplant funktioniert, sollte bei Anwendung dieser Spruchrolle jeder in der Umgebung �ber einen l�ngeren Zeitraum konstant von Flammen versehrt werden.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_06"); //Dadurch k�nnten dutzende von Feinden auf einen Schlag ausgel�scht werden ...
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_07"); //H�rt sich doch toll an. Genau das, was wir brauchen.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_08"); //Ja ... nur ... es gibt da ein Problem ...
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_09"); //Ja, was?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_10"); //Wie ich sagte wird jeder in der Umgebung davon versehrt ... dies schlie�t auch den Magier, der die Spruchrolle nutzt, selbst mit ein.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle_15_11"); //Das ist nat�rlich weniger gut ...
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_12"); //Au�erdem wirkt die Spruchrolle nur auf Feinde in direkter Umgebung.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle_06_13"); //Das hei�t, wollte man die Spruchrolle mit gr��tm�glichem Effekt einsetzen, m�sste sich der Anwender allein vor den Toren unter Scharen von Feinden begeben.
};

INSTANCE Info_Mod_Velario_AurenUndKristalle2 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle2_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe den Belagerungsring mittlerweile so oft durchquert ...";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle2_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_00"); //Ich habe den Belagerungsring mittlerweile so oft durchquert ...
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_01"); //Verstehe ich das richtig, du w�rdest dich dazu bereit erkl�ren die Spruchrolle anzuwenden?
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_02"); //Nun, es w�re nicht das erste Mal, dass ich mich in ein Wespennest begebe ...
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_03"); //Fantastisch. Da w�re aber eben noch die Sache mit dem Magie- und Feuerschaden.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_04"); //Ja, gibt es etwas, dass mir helfen k�nnte dem zu widerstehen?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_05"); //Eventuell ... das Buch hat auch Anhaltspunkte dazu gegeben.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_06"); //Es scheint m�glich zu sein Kristalle magisch so zu beeinflussen, dass sie elementare und magische Energien in sich aufnehmen.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_07"); //Ein solcher Kristall k�nnte in der Lage dazu sein, dich vor einem Gro�teil des Schadens zu bewahren.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_08"); //Dazu w�ren allerdings einige Materialien notwendig, die ich nicht hier habe.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_09"); //Was w�rdest du denn daf�r ben�tigen?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_10"); //Nun, allem voran Kristalle. Und wenn ich mich recht entsinne, gibt es in der N�he auch eine H�hle, wo es mehr als genug davon gibt.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_11"); //Wenn du mir vielleicht 20 Bergkristalle bringen k�nntest, sowie zehn Kristalle der Kristallcrawler, k�nnte ich meine Arbeiten daran aufnehmen.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_12"); //Um die Kristalle von den Crawlern abzubekommen, solltest du versuchen, diese mit einer Schmiedezange zu fassen und abzubrechen. Das m�sste klappen.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle2_15_13"); //In Ordnung, ich mache mich auf den Weg.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle2_06_14"); //Gut. Innos beh�te dich.

	Log_CreateTopic	(TOPIC_MOD_FM_AURENUNDKRISTALLE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FM_AURENUNDKRISTALLE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FM_AURENUNDKRISTALLE, "Velario hat einige m�chtige Auraspruchrollen entwickelt, die jedoch auch den Anwender mit Feuerschaden verheeren. Um mich davor zu sch�tzen, k�nnte er Kristalle magisch beeinflussen, die den Feuer- und Magieschaden absorbieren. Dazu soll ich ihm aus der Kristallh�hle 20 Bergkristalle bringen, wie auch 10 Kristalle von den Crawlern, wozu ich eine Schmiedezange ben�tige.");

	Log_CreateTopic (TOPIC_TalentAnimalTrophy, LOG_NOTE);
	B_LogEntry_NS (TOPIC_TalentAnimalTrophy, "... Kristallcrawlern Kristalle abnehmen.");

	B_StartOtherRoutine	(self, "START");
	
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_07");
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_06");
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_04");
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_02");
	Wld_InsertNpc	(Kristallminecrawler, "FP_ROAM_CRAWLER_09");
};

INSTANCE Info_Mod_Velario_AurenUndKristalle3 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle3_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe die Kristalle.";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle2))
	&& (Npc_HasItems(hero, ItAt_CrawlerKristall) >= 10)
	&& (Npc_HasItems(hero, ItMi_RockCrystal) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle3_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle3_15_00"); //Ich habe die Kristalle.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle3_06_01"); //Ausgezeichnet. Wundersch�ne Exemplare. Ich bin schon gespannt, was sich daraus machen l�sst.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle3_06_02"); //Schau am besten immer mal wieder alle paar Tage vorbei. Wenn ich Fortschritte gemacht habe werde ich dir sofort Bescheid geben.

	B_LogEntry	(TOPIC_MOD_FM_AURENUNDKRISTALLE, "Velario hat die Kristalle und macht sich sofort an die Arbeit. In einigen Tagen sollte ich wieder bei ihm vorbeischauen.");

	Mod_PAT_VelarioDay = Wld_GetDay();

	B_StartOtherRoutine	(self, "RUNEMAKER");
};

INSTANCE Info_Mod_Velario_AurenUndKristalle4 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle4_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Velario_AurenUndKristalle4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle3))
	&& (Wld_GetDay()-1 > Mod_PAT_VelarioDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle4_Info()
{
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_00"); //Es ist tats�chlich gelungen! Ich konnte diesen Kristall zu einem magischen Werkzeug umformen.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_01"); //Wenn du ihn bei dir tr�gst, sollte er dir einen umfassenden Schutz gegen Magie und Feuer bieten, der seines gleichen sucht.

	B_GiveInvItems	(self, hero, ItMi_KristallPrisma, 1);

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_02"); //Hier, nun solltest du diese Aura-Spruchrollen ohne gro�e Gefahr f�r dein Leben anwenden k�nnen.

	B_GiveInvItems	(self, hero, ItSc_AuraFlammen, 2);

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_03"); //Nimm auch noch diesen Schnelligkeitstrank und die Verwandlungsspruchrolle.

	CreateInvItems	(hero, ItSc_TrfSnapper, 1);
	CreateInvItems	(hero, ItPo_Speed, 1);

	B_ShowGivenThings	("Trank der Geschwindigkeit und Spruchrolle 'Verwandlung Snapper' erhalten");

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_04"); //Sie k�nnten dir dabei n�tzlich sein, die Reihen der Feinde zu passieren.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle4_15_05"); //Eindrucksvolle Utensilien der Magie. Hab Dank.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle4_06_06"); //Und nun ... lasse dich von Innos' Flamme beseelen, wenn du diesen verfluchten Hexenweibern ordentlich einheizt!

	B_SetTopicStatus	(TOPIC_MOD_FM_AURENUNDKRISTALLE, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Velario_AurenUndKristalle5 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle5_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe die Spruchrolle angewendet.";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle4))
	&& (Mod_AuraFlammen_Used == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle5_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle5_15_00"); //Ich habe die Spruchrolle angewendet.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_01"); //(erwartungsvoll) Und, wie ist es verlaufen?
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle5_15_02"); //Sie haben alle Erwartungen erf�llt.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_03"); //(erfreut) Ausgezeichnet! Das wird einige neue Impulse f�r die Forschung an der Magie liefern.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_04"); //Hier, nimm zum Dank das Rezept f�r die Spruchrollen und einige Manatr�nke.

	CreateInvItems	(hero, ItWr_Scroll_AuraFlammen, 1);
	CreateInvItems	(hero, ItPo_Mana_Addon_04, 3);

	B_ShowGivenThings	("Rezept f�r 'Aura der Flammen' und 3 Reines Mana erhalten");

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle5_06_05"); //Innos sei mit dir.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Velario_AurenUndKristalle6 (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_AurenUndKristalle6_Condition;
	information	= Info_Mod_Velario_AurenUndKristalle6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Der Kristall hat sich ver�ndert.";
};

FUNC INT Info_Mod_Velario_AurenUndKristalle6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Velario_AurenUndKristalle4))
	&& (Npc_HasItems(hero, ItRu_KristallPrisma) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_AurenUndKristalle6_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_00"); //Der Kristall hat sich ver�ndert.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_01"); //Was? Lass sehen.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_02"); //Das ... das ist unm�glich.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_03"); //Was ist geschehen?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_04"); //Durch den wiederholten Kontakt mit Feuer und Magie scheint er den Effekt ... �bernommen zu haben. Er kann jetzt wie eine Rune eingesetzt werden.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_05"); //Das unglaubliche daran ist, dass er seine Macht aus keinem der G�tter zieht. Das ist so faszinierend ... wie auch erschreckend.
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_06"); //Wieso?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_07"); //Verstehst du nicht? Bislang konnten einzig und allein G�tter, oder g�ttliche Wesen, Menschen zum wirken von Magie bef�higen.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_08"); //Diese Forschungsergebnisse widersprechen nun jedoch diesem Gesetz. Das k�nnte eine Revolution f�r unser gesamtes Verst�ndnis um die Magie bedeuten.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_09"); //Andererseits jedoch ...
	AI_Output(hero, self, "Info_Mod_Velario_AurenUndKristalle6_15_10"); //Ja?
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_11"); //... andererseits stellt es gleichzeitig das magische Monopol der drei Kirchen in Frage.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_12"); //(nachdenklich) Ich glaube nicht, dass unsere Forschungsergebnisse den hohen Magiern der R�te besonders gefallen w�rden ... besonders im aktuellen Konflikt mit Xeres.

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_13"); //(konspirativ zum Helden) Es w�re daher besser, wenn wir unsere Erkenntnisse vorerst unter Verschluss hielten.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_14"); //Noch ist die Kirche nicht so weit und ich w�rde ungern sehen, dass unsere Erkenntnisse ein Opfer der ... nunja, ich denke, du verstehst die Situation.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_15"); //(etwas betr�bt) Es ... es ist das Vern�nftigste.
	AI_Output(self, hero, "Info_Mod_Velario_AurenUndKristalle6_06_16"); //Und nun ... lasse dich von Innos' Flamme beseelen, wenn du diesen verfluchten Hexenweibern ordentlich einheizt!

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Velario_Fake (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_Fake_Condition;
	information	= Info_Mod_Velario_Fake_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du irgendwas verd�chtiges gesehen?";
};

FUNC INT Info_Mod_Velario_Fake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_Fake))
	&& (Npc_KnowsInfo(hero, Info_Mod_Velario_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Velario_Fake_Info()
{
	AI_Output(hero, self, "Info_Mod_Velario_Fake_15_00"); //Hast du irgendwas verd�chtiges gesehen?
	AI_Output(self, hero, "Info_Mod_Velario_Fake_06_01"); //Nein, ich glaube nicht.
	AI_Output(hero, self, "Info_Mod_Velario_Fake_15_02"); //Bist du sicher? Ist hier kein Magier vorbeigekommen, der es ziemlich eilig hatte?
	AI_Output(self, hero, "Info_Mod_Velario_Fake_06_03"); //Da war tats�chlich jemand. Er wollte glaub ich in die Mine.

	B_LogEntry	(TOPIC_MOD_FM_SM, "Velario meint, dass der Magier in die Mine geflohen sei.");
};

INSTANCE Info_Mod_Velario_EXIT (C_INFO)
{
	npc		= Mod_1738_KDF_Velario_PAT;
	nr		= 1;
	condition	= Info_Mod_Velario_EXIT_Condition;
	information	= Info_Mod_Velario_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Velario_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Velario_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};