INSTANCE Info_Mod_Xardas_MT_Felsenfestung (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Felsenfestung_Condition;
	information	= Info_Mod_Xardas_MT_Felsenfestung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Felsenfestung_Condition()
{
	if (Mod_Xeres_Kampf01 == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Felsenfestung_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_00"); //Das war knapp. Zum Gl�ck bin ich dir gefolgt. Es scheint so, als w�rst du nicht stark genug, um Xeres besiegen zu k�nnen.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_01"); //(sarkastisch) Gut, dass wir das jetzt immerhin wissen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_02"); //Ich habe Xeres' Kr�fte untersch�tzt. Das macht ihn noch gef�hrlicher, als ich dachte.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_03"); //Ich kenne niemanden, der sich mit ihm messen k�nnte.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_04"); //Dann w�hl doch noch mal in deinen alten Folianten. Da steht doch immer was N�tzliches drin.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_05"); //Wir werden es darauf ankommen lassen m�ssen.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_06"); //Kann ich in der Zwischenzeit helfen?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_07"); //Ich habe bisher daf�r gesorgt, dass niemand Weiteres aus Xeres' Gef�ngnis ausbrechen konnte.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_08"); //Um dir beizustehen, musste ich meinen Wachposten verlassen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_09"); //Ich bef�rchte, dass in Jharkendar mittlerweile die H�lle los ist.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_10"); //Das bedeutet, ich darf mich dort vergn�gen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Felsenfestung_14_11"); //Ich werde nicht ruhen, bis ich etwas herausgefunden habe. Solange musst du dort Xeres' Truppen aufhalten.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Felsenfestung_15_12"); //Nichts leichter als das.

	B_LogEntry	(TOPIC_MOD_XERES, "Xardas sucht einen Weg, wie wir es vielleicht doch noch mit Xeres aufnehmen k�nnen. In der Zwischenzeit soll ich in Jharkendar Xeres' heranrollende Truppen aufhalten.");

	B_StartOtherRoutine	(Xeres_01, "START");
};

INSTANCE Info_Mod_Xardas_MT_ArgezSicher (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_ArgezSicher_Condition;
	information	= Info_Mod_Xardas_MT_ArgezSicher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_ArgezSicher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_AW_Rettung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_ArgezSicher_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_00"); //Gut, dass du kommst. Hast du Xeres' Leute zur�ckgehalten?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ArgezSicher_15_01"); //Argez und ich haben einen kleinen Trupp aufgerieben.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_02"); //Hoffentlich haben wir damit f�rs Erste unsere Ruhe. Ich habe n�mlich einen neuen Auftrag f�r dich.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ArgezSicher_15_03"); //Nur her damit, wenn Xeres damit aufzuhalten ist.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_04"); //Ich habe dir schon erz�hlt, dass sich Radanos in mehrere Pers�nlichkeiten aufspaltete, die miteinander konkurrierten und auseinander strebten - die Geburtsstunde von Innos, Adanos und Beliar.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_05"); //Die drei neuen G�tter waren von Beginn an Todfeinde und bek�mpften sich, wo sie nur konnten.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_06"); //Wie meine Studien ergeben haben, griffen sie dabei auch zu Waffen.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ArgezSicher_15_07"); //Hmm. Ziemlich m�chtige Waffen, nehme ich an?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_ArgezSicher_14_08"); //Die m�chtigsten mir bekannten Waffen, die zu haben sind. Mit einer von ihnen sollte es m�glich sein, Xeres zu schlagen.

	Wld_InsertNpc	(SkeletonMage_Riddler, "OW_FOGDUNGEON_36_MOVEMENT2");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_36");
	Wld_InsertNpc	(Lesser_Skeleton, "FP_FOGTOWER_BOOK");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_30");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_30");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_28");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_31");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_25");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_16");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_17");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_18");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_22");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_10");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_09");
	Wld_InsertNpc	(Lesser_Skeleton, "OW_FOGDUNGEON_08");

	Log_CreateTopic	(TOPIC_MOD_ERSTEWAFFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ERSTEWAFFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "Ich soll eine magische Waffe finden. Diese stammt von einem der drei G�tter und wurde auf Khorinis versteckt.");
};

INSTANCE Info_Mod_Xardas_MT_WoWaffe (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_WoWaffe_Condition;
	information	= Info_Mod_Xardas_MT_WoWaffe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wo soll ich mit der Suche beginnen?";
};

FUNC INT Info_Mod_Xardas_MT_WoWaffe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Felsenfestung))
	&& (Npc_HasItems(hero, ItMw_BeliarWeapon_Raven) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_WoWaffe_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_WoWaffe_15_00"); //Wo soll ich mit der Suche beginnen?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_01"); //Zwei Schaupl�tze der Kampfhandlungen m�ssen sich im Minental befunden haben. Es ist von "mystischen Orten" die Rede.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_02"); //Der eine sei bei der "Monduhr" - ich vermute, damit ist der Steinkreis gemeint, in dem auch ein Fokusstein verborgen war.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_03"); //Bei dem anderen handelt es sich um ein verfluchtes Gem�uer. Die Ortsbeschreibung passt genau auf den Nebelturm an der K�ste.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_04"); //Am besten beginnst du deine Suche an einem dieser beiden Orte, dort m�sstest du f�ndig werden.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_05"); //Sobald du es an dich genommen hast, komm wieder zur�ck.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_06"); //Solltest du vorerst jedoch nur auf d�rftige Hinweise sto�en, die du nicht zu deuten wei�t, stehe ich dir durchaus mit meinem Rat zur Seite.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WoWaffe_14_07"); //Beliar m�ge dich bei deiner Suche beh�ten und die Augen deiner Feinde in Dunkelheit h�llen.

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE,	"Xardas erw�hnte ein schwieriges R�tsel. Ich werde es wohl l�sen m�ssen um an die Waffe zu gelangen. Doch vorher muss ich den Ort finden. Xardas sagt, ich solle mich an einen mystischen Ort begeben. In Frage k�men daf�r wohl entweder der Stonehenge oder der Nebelturm. Sollte ich irgendwelche Hinweise nicht verstehen, so wird mir Xardas vielleicht helfen k�nnen.");
};

INSTANCE Info_Mod_Xardas_MT_RiddleHelper (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_RiddleHelper_Condition;
	information	= Info_Mod_Xardas_MT_RiddleHelper_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich habe ein Buch mit Hinweisen gefunden.";
};

FUNC INT Info_Mod_Xardas_MT_RiddleHelper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_WoWaffe))
	&& (Npc_HasItems(hero, ItMw_BeliarWeapon_Raven) == 0)
	&& (riddle6 == FALSE)
	&& (riddle1 == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_RiddleHelper_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_00"); //Ich habe ein Buch mit Hinweisen gefunden.

	if (riddle5 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_01"); //In diesem Text steht, dass ich jemanden, oder etwas an dem Ort finden werde, wo alles begann ...
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_02"); //Ist es mit deinem Verstand schon so weit her, dass du dich nicht mal mehr an den Ort erinnerst, an welchem du den ersten Hinweis fandest?!
	}
	else if (riddle4 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_03"); //Es hei�t hier, dass die Taten jener, die sich an Bord befanden, l�ngst vergessen seien.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_04"); //�berfl�ssig zu erw�hnen, dass wohl von einem Schiff die Rede ist.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_05"); //Und aus dem Text kann man eigentlich schlie�en, dass ihm durch widrige Umst�nde unsanft die Seetauglichkeit genommen wurde.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_06"); //Soll ich jetzt vielleicht noch darauf verweisen, an welchen Orten du ein solches finden k�nntes!?
	}
	else if (riddle3 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_07"); //Ich soll nun jenen Ort finden, an dem ein kluger Fischer sein Netz nicht auswerfen w�rde, so hei�t es.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_08"); //Nun, wenn der Verstand es gebietet in klaren Gew�ssern zu fischen ... schaue dich im Osten der Kolonie um ...
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_09"); //(trocken) Mehr Hinweise sollte es kaum ben�tigen.
	}
	else if (riddle2 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_10"); //Diesmal soll ich einen Ort finden, der fast voll Wasser ist, aber dennoch genug Luft zum Atmen bietet.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_11"); //Wenn du dich n�rdlich vom Alten Lager umsiehst, m�sstest du den gesuchten ort Finden ... wobei ich mit "umsehen" nicht nur den oberfl�chlichen Gebrauch deiner Augen meine ...
	}
	else if (riddle1 == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_RiddleHelper_15_12"); //Ich soll die Suche an dem Ort beginnen, von wo ich Aufbrach.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_13"); //Nun, dann bist du hier sicherlich nicht v�llig fehl am Platz.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_14"); //In unmittelbarer N�he habe ich gerade erst das Erstehen einer magischen Aura gesp�rt.
		AI_Output(self, hero, "Info_Mod_Xardas_MT_RiddleHelper_14_15"); //Schaue dich nur gr�ndlich um, und du wirst finden, wonach du gesucht hast.
	};
};

INSTANCE Info_Mod_Xardas_MT_HabSchwert (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_HabSchwert_Condition;
	information	= Info_Mod_Xardas_MT_HabSchwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab das Schwert gefunden.";
};

FUNC INT Info_Mod_Xardas_MT_HabSchwert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riddler_Chromanin))
	&& ((Npc_HasItems(hero, ItMw_BeliarWeapon_Raven) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_20) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_20) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_HabSchwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_HabSchwert_15_00"); //Ich hab das Schwert gefunden.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_01"); //Sehr gut. Ich vermute, dass es sich hierbei um die Klaue Beliars handelt. Mit ihrer Macht solltest du Xeres ohne Probleme besiegen k�nnen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_02"); //Bevor du die Waffe jedoch benutzt, solltest du sie erst an einem Beliar Schrein weihen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_03"); //Nimm noch dieses Amulett zur Sicherheit.

	CreateInvItems	(self, ItAm_Xardas_SchutzVorXeres, 1);
	B_GiveInvItems	(self, hero, ItAm_Xardas_SchutzVorXeres, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_04"); //Dieses Amulett sollte in der Lage sein, dich vor Xeres Fesselzauber zu sch�tzen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_05"); //Sei aber gewarnt. Nach deiner letzten Begegnung mit ihm ist sein Einfluss auf die Orks in der Stadt noch gewachsen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_06"); //Rechne nicht damit, dass Standarten dich jetzt noch sch�tzen werden.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_07"); //Dir werden schon andere Wege einfallen m�sse, um an ihn heranzukommen, sei es Magie, Zaubertrank, oder Schwert.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_HabSchwert_14_08"); //Ich werde nun nach Khorinis zur�ckkehren. Beliar sei mit dir.

	B_LogEntry_More	(TOPIC_MOD_XERES, TOPIC_MOD_ERSTEWAFFE, "Ich hab das Schwert und Xardas denkt, dass ich damit Xeres vernichten kann.", "Ich hab das Schwert und Xardas denkt, dass ich damit Xeres vernichten kann.");
	B_SetTopicStatus	(TOPIC_MOD_ERSTEWAFFE, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	Npc_ExchangeRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Xardas_MT_Befoerderung (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Befoerderung_Condition;
	information	= Info_Mod_Xardas_MT_Befoerderung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich will Schwarzmagier werden.";
};

FUNC INT Info_Mod_Xardas_MT_Befoerderung_Condition()
{
	if (Mod_Gilde == 12)
	&& (Kapitel > 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Befoerderung_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Befoerderung_15_00"); //Ich will Schwarzmagier werden.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Befoerderung_14_01"); //Du w�hlst also den Weg der Magie. Eine weise Entscheidung.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Befoerderung_14_02"); //Ich werde dich in den Rang des Schwarzmagiers erheben. Hoffentlich hilft das bei der Vernichtung von Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Befoerderung_14_03"); //Hier ist deine Robe.

	CreateInvItems	(self, SCHWARZMAGIERROBE, 1);
	B_GiveInvItems	(self, hero, SCHWARZMAGIERROBE, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, Schwarzmagierrobe);

	B_GivePlayerXP	(400);

	B_G�ttergefallen(3, 5);

	Mod_Gilde = 13;

	Snd_Play ("LEVELUP");
};

INSTANCE Info_Mod_Xardas_MT_Gomez (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Gomez_Condition;
	information	= Info_Mod_Xardas_MT_Gomez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Gomez_Condition()
{
	if (Mod_GomezAngriff == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Gomez_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Gomez_14_00"); //Das reicht! Wir brauchen Gomez noch.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xardas_MT_Raven (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Raven_Condition;
	information	= Info_Mod_Xardas_MT_Raven_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_Raven_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_MT_GomezNervt))
	&& (!Npc_IsInState(Mod_7068_DMR_Raven_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Raven_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Raven_14_00"); //Beenden wir nun diese r�hrende Vers�hnung und gehen ...

	B_LogEntry	(TOPIC_MOD_AL_LOCKVOGEL, "Leider verhinderten Xardas und Raven die T�tung von Gomez ... Allerdings befiehlt Raven seinen Leuten das Lager zu verlassen und gibt mir als Entsch�digung Gomez altes Schwert.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_StartOtherRoutine	(Mod_7067_DMR_Gomez_MT, "TOT");
	B_StartOtherRoutine	(Mod_7068_DMR_Raven_MT, "TOT");
	B_StartOtherRoutine	(Mod_7066_DMR_Daemonenritter_MT, "TOT");

	AI_Teleport	(self, "TOT");
	AI_Teleport	(Mod_7067_DMR_Gomez_MT, "TOT");
	AI_Teleport	(Mod_7068_DMR_Raven_MT, "TOT");
	AI_Teleport	(Mod_7066_DMR_Daemonenritter_MT, "TOT");
};

INSTANCE Info_Mod_Xardas_MT_Orkfriedhof (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Orkfriedhof_Condition;
	information	= Info_Mod_Xardas_MT_Orkfriedhof_Info;
	permanent	= 0;
	important	= 0;
	description	= "Im Sumpf tauchte ein untoter Schamane der Orks auf und raubte ein Chromaninbuch.";
};

FUNC INT Info_Mod_Xardas_MT_Orkfriedhof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_UndeadOrkShamane_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Orkfriedhof_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Orkfriedhof_15_00"); //Im Sumpf tauchte ein untoter Schamane der Orks auf und raubte ein Chromaninbuch.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Orkfriedhof_15_01"); //Er sprach davon, sich an einen Ort toter Stille zur�ckziehen zu wollen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Orkfriedhof_14_02"); //Im Sumpf sagst du? Befindet sich nicht in unmittelbarer N�he jener orkische Friedhof, welchen du zu Zeiten des Schl�fers bereits aufsuchtest?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Orkfriedhof_15_03"); //Dies w�re der nahe liegendste Ort f�r deine Suche ... darauf h�ttest du jedoch beileibe selbst sto�en k�nnen.

	Mod_NL_UOS_Day = Wld_GetDay() - 1;
};

INSTANCE Info_Mod_Xardas_MT_UndeadOrk (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_UndeadOrk_Condition;
	information	= Info_Mod_Xardas_MT_UndeadOrk_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_MT_UndeadOrk_Condition()
{
	if (Mod_NL_UOS == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_UndeadOrk_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_00"); //Konntest du mittlerweile Chromanin erlangen?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_01"); //Es gibt da gewisse Schwierigkeiten.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_02"); //Schwierigkeiten?!
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_03"); //Nun ... ach, ich mache es kurz.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_04"); //Ein untoter Orkschamane raubte ein Buch und setzte sich im Orkfriedhof ab, wo er mich durch magische Barriere und Geiseln daran hindert, an das Buch zu kommen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_05"); //Ist er in Reichweite deiner Magie?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_15_06"); //Ich denke schon ...
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_14_07"); //Dann vernichte ihn mit einem Zauber. Da er selbst der Urheber der Barriere sein d�rfte, m�sste dich nichts mehr daran hindern zu dem Buch zu gelangen.

	Info_ClearChoices	(Info_Mod_Xardas_MT_UndeadOrk);

	Info_AddChoice	(Info_Mod_Xardas_MT_UndeadOrk, "Ja, aber die Geiseln.", Info_Mod_Xardas_MT_UndeadOrk_B);
	Info_AddChoice	(Info_Mod_Xardas_MT_UndeadOrk, "Ok, verstanden.", Info_Mod_Xardas_MT_UndeadOrk_A);
};

FUNC VOID Info_Mod_Xardas_MT_UndeadOrk_B()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_B_15_00"); //Ja, aber die Geiseln. Es befinden sich untote Gesch�pfe bei ihnen, die nicht sehr erfreut �ber das Ableben ihres Meisters w�ren ...
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_01"); //(m�rrisch) Es geht hier um das Bestehen der Welt, wie wir sie kennen, und du machst dir Gedanken �ber solche Nichtigkeiten ... Hmpf, na gut, lass mich �berlegen ...
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_02"); //Hmm, du m�sstest dir Wirkung zweier verschiedener Spruchrollen rekombinieren, damit alle untoten Gesch�pfe auf einen Schlag vernichtet werden.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_03"); //Ich kann dies einmalig f�r dich vornehmen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_UndeadOrk_B_14_04"); //Mit welchen Spruchrollen, musst du jedoch schon selbst entscheiden ... und besorgen musst du diese selbstverst�ndlich auch.

	Mod_NL_Xardas_ScrollCombiner = 1;
	
	Info_ClearChoices	(Info_Mod_Xardas_MT_UndeadOrk);
};

FUNC VOID Info_Mod_Xardas_MT_UndeadOrk_A()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_UndeadOrk_A_15_00"); //Ok, verstanden.
	
	Info_ClearChoices	(Info_Mod_Xardas_MT_UndeadOrk);
};

INSTANCE Info_Mod_Xardas_MT_ScrollCombining (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_ScrollCombining_Condition;
	information	= Info_Mod_Xardas_MT_ScrollCombining_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich m�chte zwei Spruchrollen miteinander kombinieren.";
};

FUNC INT Info_Mod_Xardas_MT_ScrollCombining_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_UndeadOrk))
	&& (Mod_NL_Xardas_ScrollCombiner == 1)
	{
		return 1;
	};
};

FUNC VOID B_Xardas_MT_WrongScrollCombination ()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_WrongScrollCombination_14_00"); //(kurz angebunden, despektierlich) Hmm,  ich hoffe diese Zauber werden den Erfordernissen gerecht.
};

FUNC VOID B_Xardas_MT_RightScrollCombination ()
{
	AI_Output(self, hero, "Info_Mod_Xardas_MT_RightScrollCombination_14_00"); //(vornehm zur�ckhaltend, lobend) In der Tat, deine Wahl war nicht die schlechteste, so scheint mir.
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_ScrollCombining_15_00"); //Ich m�chte zwei Spruchrollen miteinander kombinieren.

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Untote vernichten", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerregen", Info_Mod_Xardas_MT_ScrollCombining_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eiswelle", Info_Mod_Xardas_MT_ScrollCombining_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eisregen", Info_Mod_Xardas_MT_ScrollCombining_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Untote vernichten", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerregen", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eiswelle", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eisregen", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HarmUndead, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_HarmUndead, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_HolyWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HarmUndead_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Untote vernichten", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerregen", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eiswelle", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eisregen", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_HarmUndead, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_HolyWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_HolyBolt_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Untote vernichten", Info_Mod_Xardas_MT_ScrollCombining_FireRain_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_FireRain_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerregen", Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eiswelle", Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eisregen", Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_FireWave, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireRain_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_FireBolt, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Untote vernichten", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerregen", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eiswelle", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eisregen", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HarmUndead, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_FireBolt, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_FireWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_FireRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_FireBolt_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_FireBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Untote vernichten", Info_Mod_Xardas_MT_ScrollCombining_IceWave_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_IceWave_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerregen", Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eiswelle", Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eisregen", Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_HolyWave, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_HolyWave, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_FireWave, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_FireWave, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_IceWave, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_IceWave, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceWave_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_IceWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Untote vernichten", Info_Mod_Xardas_MT_ScrollCombining_IceRain_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_IceRain_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerregen", Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eiswelle", Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eisregen", Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_HolyRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_RightScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_FireRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_FireRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_IceWave, 1);
	CreateInvItems	(hero, ItSc_IceRain, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceRain_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);

	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Untote vernichten", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HarmUndead);
	};
	if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Heiliger Pfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HolyBolt);
	};
	if (Npc_HasItems(hero, ItSc_FireRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerregen", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireRain);
	};
	if (Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Feuerpfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireBolt);
	};
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eiswelle", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceWave);
	};
	if (Npc_HasItems(hero, ItSc_IceRain) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eisregen", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceRain);
	};
	if (Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	{
		Info_AddChoice	(Info_Mod_Xardas_MT_ScrollCombining, "Eispfeil", Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceBolt);
	};
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HarmUndead()
{
	Npc_RemoveInvItems	(hero, ItSc_HarmUndead, 1);

	CreateInvItems	(hero, ItSc_HarmUndead, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_HolyBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_PalHolyBolt, 1);

	CreateInvItems	(hero, ItSc_PalHolyBolt, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireRain()
{
	Npc_RemoveInvItems	(hero, ItSc_FireRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_FireBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_FireBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 1);
	CreateInvItems	(hero, ItSc_FireBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceWave()
{
	Npc_RemoveInvItems	(hero, ItSc_IceWave, 1);

	CreateInvItems	(hero, ItSc_IceWave, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceRain()
{
	Npc_RemoveInvItems	(hero, ItSc_IceRain, 1);

	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_IceBolt, 1);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

FUNC VOID Info_Mod_Xardas_MT_ScrollCombining_IceBolt_IceBolt()
{
	Npc_RemoveInvItems	(hero, ItSc_IceBolt, 1);

	CreateInvItems	(hero, ItSc_IceBolt, 2);

	B_Xardas_MT_WrongScrollCombination();

	Info_ClearChoices	(Info_Mod_Xardas_MT_ScrollCombining);
};

INSTANCE Info_Mod_Xardas_MT_Chromanin3 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Chromanin3_Condition;
	information	= Info_Mod_Xardas_MT_Chromanin3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe hier ein Chromaninbuch bei mir ...";
};

FUNC INT Info_Mod_Xardas_MT_Chromanin3_Condition()
{
	if (Mod_NL_UOS > 6)
	&& (Npc_HasItems(hero, ItWr_Chromanin3) == 1)
	&& (Mod_NL_Chromanin == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Chromanin3_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_00"); //Ich habe hier ein Chromaninbuch bei mir ...
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_01"); //(uninteressiert) Gut. Es war auch deine Aufgabe diese zu bergen.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_02"); //Da gibt es jedoch ein Problem.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_03"); //Problem? Sofern du des Lesens m�chtig bist, wo sollte ein Problem bestehen?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_04"); //Nun ... es ist leer.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_05"); //Was?! Unsinn, zeig her ...

	B_GiveInvItems	(hero, self, ItWr_Chromanin3, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_06"); //Bei Beliar! Aber, wie ist das m�glich? Unter welchen Umst�nden bist du an dieses Buch gekommen?

	B_GiveInvItems	(self, hero, ItWr_Chromanin3, 1);

	AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_07"); //Ich entriss es dem Kadaver eines untoten Orkschamanen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_08"); //Untoter Orkschamane?! �ble Magie scheint hier im Spiel zu sein ... Ja, ich sp�re es.  Die magische Energie dieses Buches scheint fast g�nzlich getilgt.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_09"); //Aber wie ist ihm das nur gelungen? Hatte er noch etwas bei sich?

	if (Mod_NL_Siegelbuch == 0)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_MT_Chromanin3_15_10"); //Ich wei� es nicht ...
		AI_Output(self, hero, "Info_Mod_Xardas_MT_Chromanin3_14_11"); //Dann geh und schaue nach!
	};

	B_SetTopicStatus	(TOPIC_MOD_SLD_FRIEDHOF, LOG_SUCCESS);
};

INSTANCE Info_Mod_Xardas_MT_Siegelbuch_01 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Siegelbuch_01_Condition;
	information	= Info_Mod_Xardas_MT_Siegelbuch_01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ja, dieses versiegelten Buch.";
};

FUNC INT Info_Mod_Xardas_MT_Siegelbuch_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Chromanin3))
	&& (Npc_HasItems(hero, ItWr_Siegelbuch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Siegelbuch_01_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_01_15_00"); //Ja, dieses versiegelten Buch.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_01"); //Lass sehen ...

	B_GiveInvItems	(hero, self, ItWr_Siegelbuch, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_02"); //(Erstaunt) Es ... es scheint ein magisches Vakuum um sich zu erzeugen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_03"); //Viel mehr noch, es saugt magische Energie aus der Umgebung f�rmlich in sich auf, langsam, aber stetig.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_01_15_04"); //Ich verstehe immer noch nicht ganz. Warum dieser ganz magische Firlefanz?
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_01_15_05"); //Das Chromanin-Buch ist doch einfach ein Nachschlagewerk, in welchem ein paar S�tze festgehalten wurden.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_06"); //(erbost) Einf�ltiger Narr! Aber was will man von einem einfachen S�ldner auch erwarten ...
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_07"); //Es ist nicht einfach nur Papier, auf welches etwas mit Tinte und Feder niedergeschrieben wurde. Die Schrift ist magischer Natur und kann auch nur mit magischen Mitteln beseitigt werden.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_01_14_08"); //Und jetzt will ich in Ruhe das versiegelte Buch studieren, welches du mir gebracht hast. Fr�hestens morgen kann ich dir mehr dazu sagen.

	Mod_NL_XardasSiegelDay = Wld_GetDay();
};

INSTANCE Info_Mod_Xardas_MT_Siegelbuch_02 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Siegelbuch_02_Condition;
	information	= Info_Mod_Xardas_MT_Siegelbuch_02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Und was hast du herausgefunden?";
};

FUNC INT Info_Mod_Xardas_MT_Siegelbuch_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Siegelbuch_01))
	&& (Wld_GetDay()-1 == Mod_NL_XardasSiegelDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Siegelbuch_02_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_02_15_00"); //Und was hast du herausgefunden?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_02_14_01"); //(grimmig) Ich sagte fr�hestens morgen!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xardas_MT_Siegelbuch_03 (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_Siegelbuch_03_Condition;
	information	= Info_Mod_Xardas_MT_Siegelbuch_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hast du mittlerweile etwas herausgefunden?";
};

FUNC INT Info_Mod_Xardas_MT_Siegelbuch_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Siegelbuch_01))
	&& (Wld_GetDay()-1 > Mod_NL_XardasSiegelDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_MT_Siegelbuch_03_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_03_15_00"); //Hast du mittlerweile etwas herausgefunden?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_01"); //Ja, das habe ich, auch, wenn es nicht leicht war. Es scheint sich zu best�tigen, was ich bereits vermutet hatte.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_02"); //Der versiegelte W�lzer muss die magische Energie des Chromaninbuches absorbiert haben.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_03"); //Vermutlich hat der untote Orkschamene die Gefahr, welche das Chromanin f�r seinen Meister darstellt, erkannt und diesen Schritt vollzogen.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_03_15_04"); //Was k�nnen wir in diesem Fall machen, um die Magie des Buches wiederherzustellen?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_05"); //Nun, aus den wenigen Quellen die ich fand konnte ich schlie�en, dass es sich um das "Buch des Pondaros" handeln k�nnte.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_06"); //Es ist uralt und soll eben diese Eigenschaften besessen haben, wie das Buch, welches du mir brachtest.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_07"); //Um die Magie des Chromaninbuches wiederzugewinnen, m�ssten wir die drei Siegel brechen und das Buch des Pondaros �ffnen.
	AI_Output(hero, self, "Info_Mod_Xardas_MT_Siegelbuch_03_15_08"); //Und wie sollen wir das anstellen? Ich vermute nicht, dass es mit schlichter Gewalt zu schaffen w�re, richtig?
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_09"); //Richtig. Jedoch gaben die l�ckenhaften Quellen in dieser Beziehung nur den Satz preis "die Siegel im Kreis der Steine brechen". Sehr r�tselhaft.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_10"); //Blicke dich auf Khorinis um, ob du Erscheinungen findest, die dieser Umschreibung entsprechen.
	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_11"); //An diesen Orten wirst du sicher auch bestimmte Mechanismen finden, die dir helfen werden, wenn du sie benutzt.

	B_GiveInvItems	(self, hero, ItWr_Siegelbuch, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_MT_Siegelbuch_03_14_12"); //Ich werde w�hrend dessen versuchen mehr �ber dieses omin�se Buch zu erfahren.

	Mod_NL_Siegelbuch = 2;

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "Scheinbar hat das 'Buch des Pondaros' die Magie des Chromaninbuches in sich aufgenommen. Um diese wiederherzustellen, m�ssen die Siegel gebrochen werden. Xardas konnte mir jedoch nur den Satz 'die Siegel im Kreis der Steine brechen' mit auf den Weg geben. Hmm, Kreis der Steine ... Dort sollen dann jedenfalls Mechanismen sein, die mir helfen werden, wenn ich sie benutze ...");
};

INSTANCE Info_Mod_Xardas_MT_EXIT (C_INFO)
{
	npc		= Mod_680_DMB_Xardas_MT;
	nr		= 1;
	condition	= Info_Mod_Xardas_MT_EXIT_Condition;
	information	= Info_Mod_Xardas_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Xardas_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xardas_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};