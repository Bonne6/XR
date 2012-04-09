INSTANCE Info_Mod_Lomar_Hi (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_Hi_Condition;
	information	= Info_Mod_Lomar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lomar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lomar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_00"); //Huch, so weit haben sich die untoten Drecksviecher noch nie aus dem Moor gewagt.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_01"); //Dem werde ich mal gleich eins mit der Keule r�berziehen und es ins Moor zur�ckwerfen.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_02"); //Obwohl ... das Fleisch k�nnte ich gut brauchen ...

	AI_DrawWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_03"); //�hh ... immer langsam. Ich bin kein Untoter.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_04"); //Was, du sprichst? Bist du ein Geist? Nein, ich kann durch dich nicht hindurchblicken.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_05"); //Oder bist du gar nicht echt, spielt mir mein Verstand einen Streich?
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_06"); //Nein, ich bin ziemlich real, glaube ich.

	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_07"); //Ist es m�glich? Jemand der es nach so langer Zeit lebend durch das Moor geschafft hat? Sprich, wer bist du?
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_08"); //Ein Abenteurer und Gl�cksritter ... wie die meisten auf der anderen Seite des Moores, die kamen, um seine Sch�tze zu bergen.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_09"); //Aber so weit wie ich ist wohl noch keiner gekommen.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_10"); //Was, die Verr�ckten betreten freiwillig dieses verfluchte St�ck Land, nur um sich die Taschen zu f�llen?!
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_11"); //Naja ... aber immerhin gut zu wissen, dass das drau�en noch jemand ist.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_12"); //H�tte nicht gedacht, dass ich nach so langer Zeit wieder einen lebendigen Menschen zu Gesicht bekommen w�rde.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_13"); //Lange Zeit? Wie kamst du denn an diesen verlassenen Fleck?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_14"); //Nun, es war wohl vor fast zwei Jahrzehnten, als ich mit Begleitern loszog, um den Stadthalter zu stellen.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_15"); //Dieser verruchte Dieb hatte den magischen Fokus gestohlen, der unsere Siedlung sch�tzte, und war ins Moor geflohen.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_16"); //Als wir es jedoch betraten, zeigte es sich feindseliger, als wir es je zuvor erlebt hatten.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_17"); //Von allen Seiten erhoben sich �ble Kreaturen, die �ber uns herfielen und die Luft war so von Gift getr�nkt, was man die blo�e  Hand vor Augen kaum sah.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_18"); //Es war, als versuche es sich unserer mit allen Mitteln zu entledigen.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_19"); //Ich verlor meine Begleiter schnell aus den Augen ... und rannte, wie ich es noch nie zuvor in meinem Leben getan hatte, ohne zu wissen wohin ... bis ich hier gelandet bin.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_20"); //Seit 20 Jahren verweilst du also hier?! Wie ist es dir gelungen hier zu �berleben?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_21"); //Nun, wie du siehst ist dieses St�ck Land vor dem direkten Einfluss des Moores verschont geblieben.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_22"); //Diese H�tte stand hier bereits, als ich mich hierher verirrte.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_23"); //Die Werkzeuge und Waffen, die ich zum �berleben brauchte, hatte ich zum Teil schon bei mir, als ich damals ins Moor aufbrach.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_24"); //Den Rest habe ich am Rande des Moores �ber die Jahre gefunden.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_25"); //Und wovon ern�hrst du dich? (z�gerlich) Du erw�hntest vorher was �ber ... das Fleisch der Untoten.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_26"); //Was?! Nein, bei Innos, nicht was du denkst.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_27"); //Ich benutzte das Fleisch, um Gift f�r meine Pfeile zu gewinnen.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_28"); //Die Moorleichen sind so lange den giftigen D�mpfen ausgesetzt, dass sie ganz davon durchsetzt sind.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_29"); //Damit schie�e ich dann hin und wieder eine von den Harpien, die oben in den Felsen nisten.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_30"); //Manchmal klettere ich auch hinauf, um eines ihrer Eier zu stehlen.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_31"); //Achja, zuletzt hatte ich Gl�ck, da konnte ich sogar einen Goblin schie�en, der gerade eines ihrer Nester pl�ndern wollte.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_32"); //Endlich etwas Abwechslung auf dem Speiseplan.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_33"); //Aber was bin ich denn f�r ein Gastgeber. Der erste Besuch seit 20 Jahren und ich biete meinem Gast nichts an.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_34"); //Wie w�re es also mit einem knusprigen St�ck Goblinfleisch?

	Info_ClearChoices	(Info_Mod_Lomar_Hi);

	Info_AddChoice	(Info_Mod_Lomar_Hi, "Goblinfleisch? Hmm, mal was neues ...", Info_Mod_Lomar_Hi_B);
	Info_AddChoice	(Info_Mod_Lomar_Hi, "�hh, danke, ein andermal.", Info_Mod_Lomar_Hi_A);
};

FUNC VOID Info_Mod_Lomar_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_00"); //Wie dem auch sei, f�r Fr�chte sorgt das Moor. Gerade war wieder eine gute Saison. Da habe ich viele Sumpfbeeren geerntet.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_C_15_01"); //Geerntet? Wie das?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_02"); //Nun, diese fleischfressenden Pflanzen mit dem gro�en Appetit gedeihen hier pr�chtig.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_03"); //Ich habe angefangen sie auf einem kleinen Feld hinter meiner H�tte anzubauen.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_04"); //Und wenn die Erntezeit gekommen ist, nehme ich eine scharfe Klinge und stutze sie ein wenig zurecht.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_05"); //Wenn du eine Sumpfbeere probieren m�chtest, bedien dich. In der H�tte liegen noch welche.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_C_15_06"); //Wie es scheint hast du dich hier wirklich gut eingelebt.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_07"); //Ja, mit der Zeit lernt man mit dem auszukommen, was die Natur hergibt.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_08"); //Nur hin und wieder ... ja, da w�rde ich doch gerne mal wieder ein saftiges St�ck K�se essen.

	Info_ClearChoices	(Info_Mod_Lomar_Hi);
};

FUNC VOID Info_Mod_Lomar_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_B_15_00"); //Goblinfleisch? Hmm, mal was neues ...
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_B_10_01"); //Hier bitte sehr.

	B_GiveInvItems	(self, hero, ItFo_Mutton, 1);

	B_UseItem	(hero, ItFo_Mutton);

	AI_Output(hero, self, "Info_Mod_Lomar_Hi_B_15_02"); //(�berascht) Hmm, gar nicht schlecht. Erinnert mich an ... H�hnchen.

	B_GivePlayerXP	(50);

	Info_Mod_Lomar_Hi_C();
};

FUNC VOID Info_Mod_Lomar_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_A_15_00"); //�hh, danke, ein andermal.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_A_10_01"); //Schade. Du wei�t nicht, was dir da Leckeres entgeht.

	Info_Mod_Lomar_Hi_C();
};

INSTANCE Info_Mod_Lomar_Kaese (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_Kaese_Condition;
	information	= Info_Mod_Lomar_Kaese_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hier hast du deinen K�se.";
};

FUNC INT Info_Mod_Lomar_Kaese_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lomar_Hi))
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_Kaese_Info()
{
	AI_Output(hero, self, "Info_Mod_Lomar_Kaese_15_00"); //Hier hast du deinen K�se.

	B_GiveInvItems	(hero, self, ItFo_Cheese, 1);

	AI_Output(self, hero, "Info_Mod_Lomar_Kaese_10_01"); //Echter K�se� . Hab vielen Dank.
	AI_Output(self, hero, "Info_Mod_Lomar_Kaese_10_02"); //Was kann ich dir denn daf�r geben ... ahh, hier, nimm diesen goldenen Pokal.

	B_GiveInvItems	(self, hero, ItMi_GoldCup, 1);

	AI_Output(self, hero, "Info_Mod_Lomar_Kaese_10_03"); //Mir n�tzt er hier �hh nichts.

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lomar_WarumNichtWeg (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_WarumNichtWeg_Condition;
	information	= Info_Mod_Lomar_WarumNichtWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Warum verl�sst du das Moor nicht?";
};

FUNC INT Info_Mod_Lomar_WarumNichtWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lomar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_WarumNichtWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Lomar_WarumNichtWeg_15_00"); //Warum verl�sst du das Moor nicht?
	AI_Output(self, hero, "Info_Mod_Lomar_WarumNichtWeg_10_01"); //Nun, wegen der ganzen Viecher im Moor.
	AI_Output(self, hero, "Info_Mod_Lomar_WarumNichtWeg_10_02"); //Denn seit dem Diebstahl des Fokus, ist es -  wie schon erw�hnt - viel lebensfeindlicher geworden, als man es zuvor kannte.
	AI_Output(self, hero, "Info_Mod_Lomar_WarumNichtWeg_10_03"); //Solange sich das nicht �ndert, sehe ich davon ab hindurch zu laufen ... was wohl hei�t, dass ich den Rest meiner Tage hier verbringen werde.
};

INSTANCE Info_Mod_Lomar_GanzAlleine (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_GanzAlleine_Condition;
	information	= Info_Mod_Lomar_GanzAlleine_Info;
	permanent	= 0;
	important	= 0;
	description	= "20 Jahre ohne Gesellschaft anderer ... Bewundernswert.";
};

FUNC INT Info_Mod_Lomar_GanzAlleine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lomar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_GanzAlleine_Info()
{
	AI_Output(hero, self, "Info_Mod_Lomar_GanzAlleine_15_00"); //20 Jahre ohne Gesellschaft anderer ... Bewundernswert, dass du dich noch so gut mitteilen kannst und bei klarem Verstand bist.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_01"); //Ach, ganz alleine war ich ja nicht. Ich habe ja zum Gl�ck den Paul.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_02"); //Er hat mir immer gute Gesellschaft geleistet und war zu manchem Schabernack aufgelegt.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_03"); //Meistens wartet er gleich beim Eingang in die H�tte.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_04"); //Begr��e ihn aber, wenn du ihm begegnest ... er ist sonst schnell gekr�nkt, wei�t du ...
};

INSTANCE Info_Mod_Lomar_Siedlung (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_Siedlung_Condition;
	information	= Info_Mod_Lomar_Siedlung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lomar_Siedlung_Condition()
{
	if (Mod_Parcival_VorKneipe == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_Siedlung_Info()
{
	AI_Output(self, hero, "Info_Mod_Lomar_Siedlung_10_00"); //Ja, bald wird die Siedlung wieder in ihrem alten Glanz erstrahlen.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lomar_EXIT (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_EXIT_Condition;
	information	= Info_Mod_Lomar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lomar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lomar_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Lomar_EXIT_10_00"); //Lass dich nicht umbringen.

	AI_StopProcessInfos	(self);
};