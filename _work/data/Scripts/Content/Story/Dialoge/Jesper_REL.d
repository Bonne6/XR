INSTANCE Info_Mod_Jesper_REL_Hi (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Hi_Condition;
	information	= Info_Mod_Jesper_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesper_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_09_00"); //Ahh, gut das zu endlich kommst.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_Hi_15_01"); //Was gibt�s zu tun?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_09_02"); //Ger�chte streuen. Es gibt da n�mlich ein verlassenes Haus am Marktplatz, was ideal f�r eine neue Unterkunft w�re.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_09_03"); //Nur leider interessieren sich seit kurzem der Braumeister und der Metzger f�r das Geb�ude.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_09_04"); //Sie haben Pl�ne dort ein Gourmet-Restaurant zu er�ffnen.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_09_05"); //Nun geht es darum in der Kneipe das Ger�cht zu s�hen, es w�rde dort spucken.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_Hi_15_06"); //Ich Verstehe. In ihrem Aberglauben k�nnten die Menschen der Stadt anfangen das Geb�ude meiden und die willigen K�ufer das Interesse daran verlieren.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Hi_09_07"); //Ganz genau. Also immer sch�n laut und dick auftragen. Auf geht�s.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TAVERNE");
};

INSTANCE Info_Mod_Jesper_REL_InTaverne (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_InTaverne_Condition;
	information	= Info_Mod_Jesper_REL_InTaverne_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_InTaverne_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Hi))
	&& (Npc_GetDistToWP(self, "REL_CITY_305") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_09_00"); //Ahh, gut dich zu sehen.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_01"); //Ja, mein Freund, auch ich freue mich dich hier anzutreffen.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_09_02"); //Dies ist ja wirklich eine sehr sch�ne Stadt mit netten und intelligenten Leuten.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_03"); //Ja, wenn es doch nur dieses Haus nicht g�be ... du wei�t ja, das verlassene am Marktplatz, wo sie jetzt das Restaurant er�ffnen wollen.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_09_04"); //Stimmt es also, was man dar�ber h�rt ... dass es dort spuckt?
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_05"); //Das ist noch gar kein Ausdruck ... so manches Grauenhafte habe ich schon von so vielen Leuten geh�rt.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_06"); //Ich wollt�s zuerst selbst nicht glauben, hab�s dann aber mit den eigenen Augen gesehen.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_15_07"); //Man muss schon seines Lebens m�de sein, dorthin zu gehen.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_09_08"); //Ja, erz�hl mehr, was es damit auf sich hat.

	Info_ClearChoices	(Info_Mod_Jesper_REL_InTaverne);

	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "Ein Portal zu Beliars grauenvollem Reich selbst soll sich dort befinden.", Info_Mod_Jesper_REL_InTaverne_D);
	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "Die �berreste einiger frevelhafter Verbrecher sind in den W�nden des Geb�udes eingemauert.", Info_Mod_Jesper_REL_InTaverne_C);
	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "Einst hat eine Gemeinschaft von Okkultisten dort finsterer Rituale abgehalten.", Info_Mod_Jesper_REL_InTaverne_B);
	Info_AddChoice	(Info_Mod_Jesper_REL_InTaverne, "Die Gebeine einer garstigen Hexe sollen dort begraben liegen.", Info_Mod_Jesper_REL_InTaverne_A);
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_E()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InTaverne_E_09_00"); //Das ist ja grauenvoll. Da will ich nimmer mehr hin�meine Seele k�nnte auf ewig verdammt sein.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_E_15_01"); //Ja, da tust du auch gut daran. Bis zum n�chsten Wiedersehen, mein Freund.

	Info_ClearChoices	(Info_Mod_Jesper_REL_InTaverne);

	B_StartOtherRoutine	(self, "TAVERNE2");
	B_StartOtherRoutine	(Mod_7705_OUT_Cassia_REL, "VORTAVERNE");
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_D()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_00"); //Ein Portal zu Beliars grauenvollem Reich selbst soll sich dort befinden.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_01"); //Ein Besucher des Hauses k�nnte Gefahr laufen von den dunklen M�chten �bermannt zu werden ... und f�r den Rest aller Tage als Untoter zu wandeln.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_02"); //Manch einem soll ja dieses Schicksal schon angediehen sein.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_D_15_03"); //Und wenn man genau lauscht, kann man auch ihr �chzen h�ren.

	Info_Mod_Jesper_REL_InTaverne_E();
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_C()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_C_15_00"); //Die �berreste einiger frevelhafter Verbrecher sind in den W�nden des Geb�udes eingemauert.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_C_15_01"); //Sie hatten sich gegen Adanos selbst vers�ndigt und wurden daf�r von ihm zu ewigem Untotendasein verflucht.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_C_15_02"); //Man m�sste des Wahnsinns sein, das Geb�ude zu betreten, denn die fauligen Gebeine w�rden ohne Zweifel von allen Seiten nach dem Eindringling greifen und ihn zu packen kriegen.

	Info_Mod_Jesper_REL_InTaverne_E();
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_B()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_B_15_00"); //Einst hat eine Gemeinschaft von Okkultisten dort finsterer Rituale abgehalten, Beschw�rungen d�monischer Gesch�pfe ... und sogar Menschenopfer dargebracht.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_B_15_01"); //Sie sollen den Ungl�cksseeligen das Herz bei lebendigem Leib herausgerissen haben.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_B_15_02"); //Ihre Ruhelosen Seelen hausen jetzt in dem Geb�ude und lassen jeden Besucher in den Wahnsinn verfallen, der dort einen Fu� hineinsetzt.

	Info_Mod_Jesper_REL_InTaverne_E();
};

FUNC VOID Info_Mod_Jesper_REL_InTaverne_A()
{
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_A_15_00"); //Die Gebeine einer garstigen Hexe sollen dort begraben liegen.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_A_15_01"); //Sie wurde einst in Khorata gerichtet und sinnt nun ruhelos auf Rache an ihren Henkern.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_InTaverne_A_15_02"); //Und jedes Mal, wenn ein Unwissender das Geb�ude betritt, packen ihn die bleichen Knochen der Hexe und ziehen seine ungl�ckliche Seele in die Tiefe.

	Info_Mod_Jesper_REL_InTaverne_E();
};

INSTANCE Info_Mod_Jesper_REL_InHaus (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_InHaus_Condition;
	information	= Info_Mod_Jesper_REL_InHaus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_InHaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_InHaus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_InHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InHaus_09_00"); //Man, hast du die ganzen Gesichter gesehen, als wir das Gruselm�rchen �ber das Haus erz�hlt haben?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_InHaus_09_01"); //Ich h�tte loslachen k�nnen ...

	AI_StopProcessInfos	(self);

	Mod_Dieb_Haus_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Jesper_REL_Glorie (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie_Condition;
	information	= Info_Mod_Jesper_REL_Glorie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_REL_Glorie3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie_09_00"); //(fl�stert) Ok, alles gelaufen wie geplant.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie_09_01"); //Der B�cherwurm sollte dir nun hoffentlich alles aush�ndigen.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jesper_REL_Glorie2 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie2_Condition;
	information	= Info_Mod_Jesper_REL_Glorie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bibliothekar_Glorie))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie2_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_09_00"); //(leise zum Helden) So, nichts wie raus mit dir.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_09_01"); //Ich werde w�hrend dessen den Bibliothekar ablenken, um sicherzugehen, dass er es nicht bemerkt.

	AI_TurnToNpc	(self, Mod_7278_OUT_Bibliothekar_REL);

	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_09_02"); //(laut zum Bibliothekar) Ich h�rte, ihr sucht nach eurer Seehilfe?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie2_09_03"); //Ich glaube ich habe da hinten etwas gl�nzen sehen.

	AI_StopProcessInfos	(self);

	AI_GotoWP	(self, "REL_CITY_151");

	AI_Teleport	(Mod_7371_OUT_Richter_REL, "REL_CITY_145");
	B_StartOtherRoutine	(Mod_7371_OUT_Richter_REL, "ATBIB");
};

INSTANCE Info_Mod_Jesper_REL_Glorie3 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie3_Condition;
	information	= Info_Mod_Jesper_REL_Glorie3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_REL_Glorie3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie3_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_09_00"); //Ahh, da seid ihr ja endlich.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_09_01"); //Das war vielleicht ein Tumult in der Bibliothek, als der Diebstahl der Unterlagen aufflog, sag ich euch.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_09_02"); //Der Stadthalter hat gleich alle Wachen herbeigeholt und nach dem Gelehrten suchen lassen.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie3_09_03"); //Das kann noch was werden, h�h� ... obwohl es mich doch in meiner Diebesehre etwas kr�nken w�rde, falls er jetzt den ganzen Ruhm daf�r einstreicht.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jesper_REL_Glorie4 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie4_Condition;
	information	= Info_Mod_Jesper_REL_Glorie4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie4_Condition()
{
	if (Mod_Diebe_Brunnen == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie4_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie4_09_00"); //Schei�e, was ist das?

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Lesser_Skeleton_Diebe_01, "FP_REL_SKELETT_DIEBE_01");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_02, "FP_REL_SKELETT_DIEBE_02");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_03, "FP_REL_SKELETT_DIEBE_03");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_04, "FP_REL_SKELETT_DIEBE_04");
	Wld_InsertNpc	(Lesser_Skeleton_Diebe_05, "FP_REL_SKELETT_DIEBE_05");
};

INSTANCE Info_Mod_Jesper_REL_Glorie5 (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_Glorie5_Condition;
	information	= Info_Mod_Jesper_REL_Glorie5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jesper_REL_Glorie5_Condition()
{
	if (Npc_GetDistToWP(hero, "REL_CITY_023") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jesper_REL_Glorie5_Info()
{
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie5_09_00"); //Ohh, ach du bist�s. H�tte mir vor Schreck fast in die Hosen gemacht.
	AI_Output(hero, self, "Info_Mod_Jesper_REL_Glorie5_15_01"); //Du hier?
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie5_09_02"); //Wo sonst? Seitdem der Alte im Knast sitzt, kann man in seinem Anwesen seelenruhig pl�ndern. Das ist doch unsere Berufung. Schauen, wo es was zu holen gibt und zugreifen.
	AI_Output(self, hero, "Info_Mod_Jesper_REL_Glorie5_09_03"); //Also, immer sch�n die Augen offen halten.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INHAUS");
};

INSTANCE Info_Mod_Jesper_REL_EXIT (C_INFO)
{
	npc		= Mod_7704_OUT_Jesper_REL;
	nr		= 1;
	condition	= Info_Mod_Jesper_REL_EXIT_Condition;
	information	= Info_Mod_Jesper_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jesper_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jesper_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};