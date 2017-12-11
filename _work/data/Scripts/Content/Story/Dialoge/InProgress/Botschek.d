INSTANCE Info_Mod_Botschek_Hi (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Hi_Condition;
	information	= Info_Mod_Botschek_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Botschek_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Botschek_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_00"); //Ahh, ein neues Gesicht. Sei gegr��t. Noch ein wagemutiger Abenteurer auf der Suche nach Ruhm und Reichtum.
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_01"); //Ruhm und Reichtum? Es gibt hier mehr, als nur Schlamm und Ruinen?
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_02"); //Was f�r eine Frage! Nirgendwo warten mehr versteckte Reicht�mer und Artefakte als hier.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_03"); //Und die Kneipe "Zur goldenen G�lle" ist das Tor zu diesen.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_04"); //Hier bekommst und erf�hrst du alles, was du brauchst, um die sagenumwobenen Sch�tze des Moores zu bergen.
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_05"); //Sagenumwoben? Na ja ...
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_06"); //Ohh, ein Unwissender. Vor vielen Jahrhunderten war dies hier der Sitz einer mysteri�sen Gemeinschaft.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_07"); //Sie h�tete viele Sch�tze und g�ttliche Artefakte und errichteten pr�chtige Bauten, wie du sie dir in deinen k�hnsten Tr�umen nicht vorstellen kannst.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_08"); //Dies war ein heiliges St�ck Land.
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_09"); //Nun, sieht aber eher nach verfluchtem Morast aus.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_10"); //Nun, verflucht trifft es schon.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_11"); //Denn eines Tages griffen Feinde das Gebiet an, die nach den Sch�tzen und g�ttlichen Gaben trachteten.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_12"); //Lange leistete die Gemeinschaft ihnen erbitterten Widerstand, doch konnte sie gegen die erdr�ckende �berzahl der Angreifer letztendlich nicht bestehen.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_13"); //In ihrer Not entschlossen sie sich zum �u�ersten, um die Artefakte vor dem Feind zu sch�tzen, und sandten einen grauenvollen Fluch �ber das Gebiet.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_14"); //Jeder, der sich darauf befand, wurde zu ewigem Untotendasein verdammt.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_15"); //Doch die Reicht�mer von damals liegen immer noch dort verborgen.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_16"); //Ja, und manch ein Gl�cksritter hat es hier schon zu Wohlstand gebracht.
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_17"); //Oder verrottet im Morast.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_18"); //Na ja, ein gewisses Berufsrisiko gibt es hier schon als Abenteurer.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_19"); //Aber um die Gefahren zu mindern, habe ich diese Perle hier eingerichtet, die Schenke "Zur goldenen G�lle".
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_20"); //So, so, der erste Pionier seit Jahrhunderten.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_21"); //Nein, ganz so ist es nicht.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_22"); //Denn bis vor zwei Jahrzehnten gab es hier eine Siedlung, die durch eine magische Barriere gesch�tzt wurde.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_23"); //Sie sollte die Ausbreitung des Sumpfes verhindern.
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_24"); //Das Moor w�chst also?
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_25"); //Ja, das tut es. Es hei�t, dass jede Seele, die dem Moor zum Opfer f�llt, seine Macht noch wachsen l�sst.
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_26"); //Nun, w�re es dann nicht ratsam, das Moor zu meiden?
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_27"); //�hh ... nun ...
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_28"); //Nun gut, aber was geschah mit dieser Siedlung vor 20 Jahren?
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_29"); //Ja, genau, ihre Ruinen siehst du noch am Rande des Sumpfes stehen.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_30"); //Eines Tages, so hei�t es, ergriff das Moor von dem Stadthalter der Siedlung Besitz.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_31"); //Er stahl den magischen Fokus, welcher die Barriere speiste, lief in das Moor und ward nie mehr gesehen.
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_32"); //Und seitdem hat man nichts unternommen, um das Moor einzud�mmen?
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_33"); //Na ja, von einem Suchtrupp, den sie kurz darauf ins Moor sandten, hat man ebenfalls keine Menschenseele je wieder gesehen.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_34"); //Und weitere Fokussteine, die sie einsetzten, konnten die Barriere nicht wieder herstellen.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_35"); //Es scheint, als sei das Moor seit dem umso m�chtiger und einflussreicher geworden.
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_36"); //So wie du berichtest, klingt es, als h�tte das Moor einen eigenen Willen.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_37"); //Ja, so scheint es fast.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_38"); //Manch einer behauptet, im Moor d�monische Kreaturen gesehen zu haben, finstere Gesch�pfe, die dem Willen des Moores folgen.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_39"); //Alles scheint es zu ver�ndern, die Grenzen zwischen den Sph�ren des Diesseitigen und jener d�monischen Welten zu �berwinden.
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_40"); //Unbelebtes erwacht zu Bewusstsein und die gewohnten Gesetze der Natur gelten nicht mehr.
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_41"); //Kannst du mir noch Genaueres �ber das Moor, seine Gefahren und Sch�tze erz�hlen?
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_42"); //Ja, das kann ich. Gegen klingelndes Gold, versteht sich ...
	AI_Output(hero, self, "Info_Mod_Botschek_Hi_15_43"); //Erst mal Neugier wecken und dann kassieren, verstehe. Wie viel pro Frage?
	AI_Output(self, hero, "Info_Mod_Botschek_Hi_16_44"); //Das kommt auf die jeweilige Frage an. Gute Informationen f�r klingende M�nze.

	B_StartOtherRoutine	(Mod_7655_OUT_Abenteurer_REL,	"ABENTEURER");
	B_StartOtherRoutine	(Mod_1623_OUT_Chani_REL,	"ABENTEURER");
};

INSTANCE Info_Mod_Botschek_Gaertner (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Gaertner_Condition;
	information	= Info_Mod_Botschek_Gaertner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe die �pfel.";
};

FUNC INT Info_Mod_Botschek_Gaertner_Condition()
{
	if (Npc_HasItems(hero, ItFo_Apple) >= 20)
	&& (Mod_Botschek_Gaertner == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Gaertner_Info()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Gaertner_15_00"); //Ich habe die �pfel.
	AI_Output(self, hero, "Info_Mod_Botschek_Gaertner_16_01"); //Sehr sch�n.
	AI_Output(hero, self, "Info_Mod_Botschek_Gaertner_15_02"); //Aber die Apfelb�ume waren sehr wehrhaft.
	AI_Output(hero, self, "Info_Mod_Botschek_Gaertner_15_03"); //Ich musste handgreiflicher werden, als es sonst beim �pfelpfl�cken notwendig ist.
	AI_Output(self, hero, "Info_Mod_Botschek_Gaertner_16_04"); //Was, die Apfelb�ume jetzt auch noch?!
	AI_Output(self, hero, "Info_Mod_Botschek_Gaertner_16_05"); //Man kann hier aber auch gar kein Gem�se oder Obst mehr anbauen, ohne dass es �ber kurz oder lang �ber jeden in der Umgebung herf�llt.
	AI_Output(self, hero, "Info_Mod_Botschek_Gaertner_16_06"); //(wehm�tig) Zuk�nftig muss ich mein Obst wohl in der Stadt kaufen. (seufzt)
	AI_Output(hero, self, "Info_Mod_Botschek_Gaertner_15_07"); //Die �pfel?

	B_GiveInvItems	(hero, self, ItFo_Apple, 20);

	AI_Output(self, hero, "Info_Mod_Botschek_Gaertner_16_08"); //Ohh, ja, danke. Hier, ein paar M�nzen f�r deine M�hen ... und ein guter Schluck von der letzten Flasche Apfelmost, die ich noch habe. Prost!

	CreateInvItems	(hero, ItFo_Apfelmost, 1);
	CreateInvItems	(hero, ItMi_Gold, 200);

	B_ShowGivenThings	("200 Gold und Apfelmost erhalten");

	B_GivePlayerXP	(300);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_BOTSCHEK_GAERTNER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Botschek_Wasserleichen (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Wasserleichen_Condition;
	information	= Info_Mod_Botschek_Wasserleichen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Botschek_Wasserleichen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Gaertner))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Wasserleichen_Info()
{
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_00"); //Sei gegr��t. Die Sache mit den �pfeln hast du ja gut hinbekommen.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_01"); //Ich h�tte daher vielleicht noch eine andere Sache, die du f�r mich erledigen k�nntest.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_02"); //W�rde dir 300 M�nzen einbringen.
	AI_Output(hero, self, "Info_Mod_Botschek_Wasserleichen_15_03"); //Ich bin ganz Ohr.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_04"); //Nun, am anderen Ende des Sees erheben sich des Nachts immer wieder Wasserleichen aus dem Untergrund.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_05"); //Ich hatte bereits vor einigen Monaten M�nner hingeschickt, die sie erledigt haben, aber kurz darauf haben sich wieder neue aus dem Schlamm erhoben.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_06"); //Ich wei� einfach nicht, woher die immer wieder kommen, aber es ist nicht gut, wenn sich zu viele von denen dort sammeln ...
	AI_Output(hero, self, "Info_Mod_Botschek_Wasserleichen_15_07"); //Bevor sie noch eines Tages in die Schenke marschieren.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_08"); //Ja. Au�erdem habe ich seit einiger Zeit weniger Kundschaft.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_09"); //Ich wei� nicht, ob es damit was zu tun hat, aber ich will die wandelnden Leichen trotzdem nicht in meiner Nachbarschaft wissen.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_10"); //Vor zwei Wochen hatte ich auch schon einen anderen Abenteurer dorthin geschickt, aber er hat wohl kalte F��e bekommen und ist einfach verschwunden.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_11"); //Also, wenn du es hinkriegst, die Wasserleichen zu erledigen, bekommst du wie vereinbart 300 M�nzen.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_12"); //Und wenn du schon dabei bist, dann schau dich gleich noch gr�ndlich um.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen_16_13"); //Falls du irgendwelche Hinweise auf den Ursprung des �bels findest, w�rde ich einige Goldm�nzen extra springen lassen.

	Log_CreateTopic	(TOPIC_MOD_BOTSCHEK_WASSERLEICHEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BOTSCHEK_WASSERLEICHEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BOTSCHEK_WASSERLEICHEN, "Am Seeufer gegen�ber der Schenke 'Zur goldenen G�lle' erheben sich nachts immer wieder Untote aus dem Untergrund. Botschek bat mich darum, mich ihrer anzunehmen. M�sste an sich zu schaffen sein. Da der Ursprung der Wasserleichen jedoch im Dunkeln liegt, sollte ich die Augen offen halten. Falls ich etwas herausfinde, hat Botschek mir einen Bonus versprochen.");
};

INSTANCE Info_Mod_Botschek_Wasserleichen2 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Wasserleichen2_Condition;
	information	= Info_Mod_Botschek_Wasserleichen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Die Wasserleichen sind Geschichte.";
};

FUNC INT Info_Mod_Botschek_Wasserleichen2_Condition()
{
	if (Mod_Botschek_Wasserleichen >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Wasserleichen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Wasserleichen2_15_00"); //Die Wasserleichen sind Geschichte.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen2_16_01"); //Ausgezeichnet, hier wie vereinbart die 300 Goldm�nzen.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen2_16_02"); //Und, ist dir vielleicht irgendwas Ungew�hnliches aufgefallen? Irgendwelche neuen Anhaltspunkte?
	AI_Output(hero, self, "Info_Mod_Botschek_Wasserleichen2_15_03"); //Ja, ein mordl�sterner Alkor, der mir mit roher Klinge ans Leder wollte.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen2_16_04"); //Was?! Aber ... was wollte er? So besoffen war er doch gar nicht, als er zuletzt die Kneipe verlie�.
	AI_Output(self, hero, "Info_Mod_Botschek_Wasserleichen2_16_05"); //Hat er zuletzt gar doch den Verstand verloren?

	B_SetTopicStatus	(TOPIC_MOD_BOTSCHEK_WASSERLEICHEN, LOG_SUCCESS);

	CurrentNQ += 1;

	B_GivePlayerXP	(350);
};

INSTANCE Info_Mod_Botschek_Ritualdolch (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch_Condition;
	information	= Info_Mod_Botschek_Ritualdolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "F�r einen Verr�ckten hatte er aber recht viel Gold bei sich (...)";
};

FUNC INT Info_Mod_Botschek_Ritualdolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Wasserleichen2))
	&& (Npc_HasItems(hero, ItMw_Ritualdolch_Frost) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch_15_00"); //F�r einen Verr�ckten hatte er aber recht viel Gold bei sich ... und dann noch diesen Dolch.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_01"); //Was?! Zeig her.

	B_GiveInvItems	(hero, self, ItMw_Ritualdolch_Frost, 1);

	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_02"); //Das ... das ist der Dolch des Abenteurers, den ich zuletzt losgeschickt hatte.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_03"); //Aber ... er h�tte sich niemals freiwillig davon getrennt.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch_15_04"); //Nun, es scheint, als h�tten wir die Erkl�rung gefunden. Bei ihm wird wohl mehr kalt geworden sein, als nur die F��e ...
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_05"); //(entgeistert) ... wie wohl auch bei manch anderem, der Alkors Weg kreuzte.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_06"); //Daher sein vieles Gold ... und daher die ganzen Leichen.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_07"); //(w�tend) Dieser Schweinehund! Der ganze �rger nur wegen diesem M�rder und Leichenfledderer.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_08"); //(zu sich selbst, etwas leiser) Und die ganzen Eink�nfte, die mir dadurch entgangen sind.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_09"); //(wieder zum Helden) Ich hoffe, er hat seine gerechte Strafe erhalten ...
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch_15_10"); //Worauf du das kalte Flussbett verwetten kannst.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_11"); //Gut! Unglaublich ... so ein Bastard!
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_12"); //(beruhigt sich wieder) Nun, wie dem auch sei, du hast deine Sache mehr als gut gemacht und mich in der Tat von einem gro�en �bel befreit.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch_16_13"); //Hier, nimm noch mal 300 M�nzen.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Botschek_Ritualdolch2 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch2_Condition;
	information	= Info_Mod_Botschek_Ritualdolch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Und der Dolch?";
};

FUNC INT Info_Mod_Botschek_Ritualdolch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch2_15_00"); //Und der Dolch?
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch2_16_01"); //Was? Ohh, entschuldige vielmals, da hast du ihn wieder.

	B_GiveInvItems	(self, hero, ItMw_Ritualdolch_Frost, 1);

	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch2_16_02"); //Ja. Ein wirklich interessantes St�ck.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch2_16_03"); //H�tte ihn nur zu gerne dem Ungl�cklichen abgekauft, der ihn zuvor besessen hat ... aber er wollte nicht.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch2_16_04"); //(in Gedanken schwelgend) Und ich h�tte schw�ren k�nnen, dass die Abbildung auf der magischen Tafel dem Dolch glich ...
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch2_15_05"); //Eine magische Tafel?!
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch2_16_06"); //(wieder zum Helden) Was? �hh, ja, genau, diese Tafel. Das ungew�hnlichste Artefakt, was bisher aus dem Moor geborgen wurde.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch2_16_07"); //Auf ihr sind Hieroglyphen zu sehen, die keiner in der Lage ist zu entziffern.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch2_16_08"); //Das Erstaunliche ist jedoch, dass sie sich immer wieder �ndern, genauso wie die Abbildungen, die man darauf bisweilen � wenn auch sehr selten - erkennen kann.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch2_16_09"); //Und einmal � so k�nnte ich schw�ren � war das Bild dieses Dolches zu sehen.
};

INSTANCE Info_Mod_Botschek_Ritualdolch3 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch3_Condition;
	information	= Info_Mod_Botschek_Ritualdolch3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kann ich mal einen Blick auf die Tafel werfen?";
};

FUNC INT Info_Mod_Botschek_Ritualdolch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch3_Info()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch3_15_00"); //Kann ich mal einen Blick auf die Tafel werfen?
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch3_16_01"); //Auf mein einzigartiges Artefakt? Hmm, da du mir in einigen Dingen geholfen hast, soll es dir geg�nnt sein.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch3_16_02"); //Erkennen wirst du aber ohnehin nicht viel ... warte. (kramt die Tafel heraus) Hier ... aber nicht anfassen.

	B_ShowGivenThings	("Steintafel erhalten");

	B_HeroFakeScroll();

	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch3_15_03"); //(nachdenklich) Diese Schriftzeichen ... erinnert mich an die Schrift der Erbauer ... ja.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch3_16_04"); //(verbl�fft) Was?! Du kannst die Hieroglyphen entziffern?
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch3_15_05"); //Ja ... einzelne Passagen. Da steht ... "dem �berm�tigen, der es wagt, ins Herz des Moores vorzusto�en.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch3_15_06"); //Die Klingen, die das Blut vergossen, um ewige Verdammnis �ber ..."
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch3_15_07"); //Dann kann ich nichts mehr entziffern ... aber doch, hier: "Den Knecht der Folter und des Todes er jedoch �berwinden muss."
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch3_16_08"); //Erstaunlich. Das alles klingt jedoch sehr r�tselhaft und verworren.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch3_16_09"); //Es scheint Hinweise �ber vergangene Geschehnisse zu enthalten ... vielleicht auch �ber Artefakte und Aufenthaltsorte.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch3_16_10"); //Wenn du das n�chste Mal ins Moor gehst, solltest du diese Passagen im Kopf haben. Vielleicht st��t du ja auf bisher Unentdecktes.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch3_15_11"); //Kommt bisweilen vor ...

	B_ShowGivenThings	("Steintafel gegeben");

	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch3_16_12"); //Gib mir aber Bescheid, wenn du was findest, vielleicht hat meine Steintafel dann auch wieder neue R�tsel zum L�ften ...

	Log_CreateTopic	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "Botschek glaubt den Dolch in einer Darstellung auf seiner magischen Tafel wiedererkannt zu haben. Diese ist in einer Schrift verfasst, die stark der Schrift der Erbauer �hnelt. Die auf ihr dargestellten Texte �ndern sich immer wieder auf magische Weise. Den aktuellen Text konnte ich zum Teil �bersetzen und habe ihn hier festgehalten. Dort war zu lesen: '... dem �berm�tigen, der es wagt, ins Herz des Moores vorzusto�en. Die Klingen, die das Blut vergossen, um ewige Verdammnis �ber ...' 'Den Knecht der Folter und des Todes er jedoch �berwinden muss.' Botschek meinte, dass dies versteckte Hinweise �ber das Moor enthalten k�nnte. Wenn ich einen Abstecher dorthin mache, sollte ich mich gut umsehen und Botschek Bescheid geben, wenn ich etwas gefunden habe.");

	Wld_InsertNpc	(Mod_7656_OUT_Suchender_REL,	"REL_MOOR_037");
};

INSTANCE Info_Mod_Botschek_Ritualdolch4 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch4_Condition;
	information	= Info_Mod_Botschek_Ritualdolch4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Im Moor bin ich einer d�monischen Gestalt begegnet (...)";
};

FUNC INT Info_Mod_Botschek_Ritualdolch4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch3))
	&& (Npc_HasItems(hero, ItMw_Ritualdolch_Seuche) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch4_Info()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch4_15_00"); //Im Moor bin ich einer d�monischen Gestalt begegnet, die einen weiteren Dolch bei sich trug.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch4_16_01"); //(euphorisch) Unglaublich! Zeig mal.

	B_ShowGivenThings	("Ritualdolch des Siechtums gegeben");

	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch4_16_02"); //Er sieht dem ersten sehr �hnlich. Und du hast ihn an einem Ort gefunden, zu dem die Tafel Auskunft gab?

	B_ShowGivenThings	("Ritualdolch des Siechtums erhalten");

	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch4_15_03"); //Es hat den Anschein.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch4_16_04"); //Fantastisch! Dann gibt die magische Tafel also tats�chlich bedeutsame Hinweise �ber das Moor preis.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch4_16_05"); //Ich kann es kaum erwarten, bis auf ihr wieder neues Wissen abgebildet ist.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch4_16_06"); //Wenn es so weit ist, werde ich dir sofort Bescheid geben.

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "Botschek war au�er sich vor Begeisterung �ber den Fund. Er hat versprochen mir umgehend mitzuteilen, wenn die Tafel neue Informationen abbildet.");

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Botschek_Ritualdolch5 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch5_Condition;
	information	= Info_Mod_Botschek_Ritualdolch5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Botschek_Ritualdolch5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch4))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch5_Info()
{
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch5_16_00"); //Ahh, ausgezeichnet, dass du gerade hier bist.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch5_16_01"); //Die magische Tafel hat vor kurzem wieder ihren Text ver�ndert. Schau!

	B_ShowGivenThings	("Steintafel erhalten");

	B_HeroFakeScroll();

	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch5_15_02"); //Hmm ... "der Kundige der geheimen K�nste tr�nkt seine Waffe in Gift, welches aus t�ckischem Sud gewonnen. Diesem zu widerstehen es gilt."

	B_ShowGivenThings	("Steintafel gegeben");

	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch5_16_03"); //Giftiges Gebr�u?! Als ob das Moor nicht schon giftig genug w�re.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch5_16_04"); //Nun ja, du wei�t, worauf es zu achten gilt. Pass auf dich auf.

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "'... der Kundige der geheimen K�nste tr�nkt seine Waffe in Gift, welches aus t�ckischem Sud gewonnen. Diesem zu widerstehen es gilt.' H�rt sich nach einem Braumeister mit �blem Geschmack an.");

	Wld_InsertNpc	(Mod_7657_OUT_Suchender_REL,	"REL_MOOR_186");
};

INSTANCE Info_Mod_Botschek_Ritualdolch6 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch6_Condition;
	information	= Info_Mod_Botschek_Ritualdolch6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Der Braumeister der Gifte war einmal.";
};

FUNC INT Info_Mod_Botschek_Ritualdolch6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch5))
	&& (Npc_HasItems(hero, ItMw_Ritualdolch_Gift) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch6_Info()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch6_15_00"); //Der Braumeister der Gifte war einmal.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch6_16_01"); //Und du bist um einen Dolche reicher, nehme ich an? Ausgezeichnet.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch6_16_02"); //Viele werden es nicht mehr sein, die es noch zu finden gilt.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch6_16_03"); //Ich hoffe, die Tafel offenbart uns bald neue Geheimnisse.

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "Jetzt hei�t es wieder auf eine neue Offenbarung warten.");

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Botschek_Ritualdolch7 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch7_Condition;
	information	= Info_Mod_Botschek_Ritualdolch7_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Botschek_Ritualdolch7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch6))
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch7_Info()
{
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch7_16_00"); //Ha, es ist wieder so weit. Gerade hat sich die magische Tafel erneut gewandelt.

	B_ShowGivenThings	("Steintafel erhalten");

	B_HeroFakeScroll();

	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch7_15_01"); //Also "... nicht klirrend Metall, sondern das, was dem Morast entw�chst, f�hrt zum Ziel. Lass es ein Teil von dir werden."

	B_ShowGivenThings	("Steintafel gegeben");

	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch7_16_02"); //Ohh, das ist aber besonders r�tselhaft. Was soll das nur hei�en?
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch7_16_03"); //Tja, dieses Mal wirst du wohl nicht umhin kommen, jede Weisung der Umgebung aufmerksam zu verfolgen und um Ecken zu denken.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch7_16_04"); //Ich bin gespannt, wie rasch du dieses R�tsel l�st.

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "'... nicht klirrend Metall, sondern das, was dem Morast entw�chst, f�hrt zum Ziel. Lass es einen Teil von dir werden.' Klingt sehr verquer. Botschek meinte, ich solle jedem richtungsweisenden Anhaltspunkt in der Umgebung nachgehen und um Ecken denken. So einfach wird es dieses Mal wohl nicht werden.");
};

INSTANCE Info_Mod_Botschek_Ritualdolch8 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch8_Condition;
	information	= Info_Mod_Botschek_Ritualdolch8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Botschek_Ritualdolch8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch7))
	&& (Npc_HasItems(hero, ItMw_Ritualdolch_Versengen) == 1)
	&& (Mod_Botschek_Wasserleichen == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch8_Info()
{
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_00"); //Du hast die Klinge bereits?!
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_01"); //Respekt! Das war bestimmt ein hartes, wie auch kniffliges St�ck Arbeit.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch8_15_02"); //Nun, war in der Tat eine andere Liga als wildgewordenes Obst ...
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_03"); //In der Zwischenzeit konnte ich �brigens dank deiner �bersetzungen und den gefundenen Dolchen alte Texte vervollst�ndigen, die nun Sinn ergeben.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_04"); //Offensichtlich gab es f�nf Ritualdolche, ein jeder mit einer anderen Gewalt behaftet.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_05"); //Die h�chsten W�rdentr�ger des Kultes opferten damit ihr Blut, um das alles vernichtende Chaos �ber dieses Land zu bringen.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_06"); //Wie man unschwer noch heute erkennen kann, waren sie erfolgreich.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_07"); //Das bekamen auch die Belagerer von damals zu sp�ren, die allesamt dem Untotendasein verfielen.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch8_15_08"); //F�r absolutes Chaos gehen die Urheber aber noch ziemlich planvoll vor.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_09"); //Ja, das stimmt. Ihr letzter Wille, das Chaos �ber das Land zu bringen und alles zu verheeren, scheint das Einzige, was ihnen von ihrer urspr�nglichen Existenz geblieben ist.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_10"); //Letztendlich sind sie damit aber nicht mehr als Sklaven des verfluchten Moores.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch8_15_11"); //Zumindest waren sie das.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_12"); //Ja, das stimmt. Da nur noch ein Ritualdolch zu finden bleibt, wird es nicht mehr viele von ihnen geben.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_13"); //Seltsamerweise scheint das Moor kaum etwas von seiner Macht eingeb��t zu haben.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_14"); //(nachdenklich) Da muss es noch etwas geben ...
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_15"); //(wieder zum Helden) Nun, wie dem auch sei, wir brauchen nur noch einen Text.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch8_16_16"); //Sobald es so weit ist ... du wei�t ja Bescheid.

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "Jetzt bleibt nur noch ein Dolch. Sobald Botscheks Tafel neue Hinweise hergibt, ist es so weit.");

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Botschek_Ritualdolch9 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch9_Condition;
	information	= Info_Mod_Botschek_Ritualdolch9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Botschek_Ritualdolch9_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch8))
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch9_Info()
{
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch9_16_00"); //(Erfreut) Endlich!
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch9_15_01"); //Die letzte Passage?
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch9_16_02"); //So wollen wir hoffen. Hier, schau sie dir an.

	B_ShowGivenThings	("Steintafel erhalten");

	B_HeroFakeScroll();

	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch9_15_03"); //Da steht "... der Knecht der Waffen tr�nkt seine Umgebung in Blut. Wirst du seinem Stahl trotzen?".

	B_ShowGivenThings	("Steintafel gegeben");

	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch9_16_04"); //Gut, das ist wieder eindeutiger.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch9_16_05"); //Nach dem letzten R�tsel solltest du hier hoffentlich weniger Schwierigkeiten haben ... und h�ltst die letzte der Klingen bald in den H�nden.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch9_15_06"); //Und dann?
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch9_16_07"); //Dann wirst du einen Teil des Moores erreichen k�nnen, der bislang nicht zug�nglich war ... vielleicht sogar in sein Herz vorsto�en.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch9_16_08"); //Damit k�nntest du das Geschick des gesamten Gebietes auf unvorhersehbare Weise ver�ndern.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch9_16_09"); //Du musst nur den Zugang finden. Viel Erfolg dabei ... und komm lebend zur�ck.

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "'... der Knecht der Waffen tr�nkt seine Umgebung in Blut. Wirst du seinem Stahl trotzen?' Klingt nach einer geradlinigen Aufgabe. Sobald ich auch diesen Dolch habe, sollte ich einen Zugang �ffnen k�nnen, der mich ins Herz des Moores f�hrt.");

	Wld_InsertNpc	(Mod_7658_OUT_Suchender_REL,	"REL_MOOR_187");
};

INSTANCE Info_Mod_Botschek_Ritualdolch10 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch10_Condition;
	information	= Info_Mod_Botschek_Ritualdolch10_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Botschek_Ritualdolch10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Ritualdolch9))
	&& (Npc_HasItems(hero, ItMi_Focus_Moor) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch10_Info()
{
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch10_16_00"); //(aufgeregt) Was bei Beliar ist geschehen? Das Moor scheint f�rmlich zu toben ...
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch10_15_01"); //Ich verschaffte mir Zugang zu einer bislang unzug�nglichen Halle im Moor.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch10_15_02"); //Dort entriss ich mit gro�er M�he einem lebendigen Podest diesen Fokus.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch10_16_03"); //Zeig her.

	B_ShowGivenThings	("Fokus gegeben");

	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch10_16_04"); //(verbl�fft) Das ... das muss der Fokus sein, welcher einst der Siedlung Schutz bot, ihre magische Barriere mit Energie speiste.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch10_16_05"); //Und du sagst, das Moor h�tte ihn f�r sich genutzt?

	B_ShowGivenThings	("Fokus erhalten");

	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch10_15_06"); //Es hatte ganz den Anschein.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch10_16_07"); //Ach ja ... Nun, das w�rde erkl�ren, warum das Moor nach dem Niedergang der Siedlung so an Macht gewann und auch nach dem Ableben seiner Diener kaum etwas davon eingeb��t hat.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch10_16_08"); //Die Monsterhorden, die es jetzt zu uns schickt, sind vermutlich ein letztes Aufb�umen, nachdem du ihm sein machtvollstes Artefakt entrissen hast.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch10_15_09"); //Was ist jetzt zu tun? Wenn das tats�chlich der Fokus der Siedlung ist ...
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch10_16_10"); //... genau, dann k�nnte durch sein Einsetzen in das alte Podest die Schutzbarriere von damals erneut entstehen.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch10_16_11"); //Es in den Tr�mmern der alten Siedlung zu finden, wird wohl nicht allzu schwer sein. Es ist das runde Geb�ude in der Mitte.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch10_16_12"); //Ich hoffe, das Podest funktioniert noch. Aber beeile dich. Ewig k�nnen wir den Moorgesch�pfen nicht standhalten.

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "Wenn ich den Fokus auf dem Sockel innerhalb der untergegangenen Siedlung platziere, k�nnte die Schutzbarriere aufs Neue entstehen.");
};

INSTANCE Info_Mod_Botschek_Ritualdolch11 (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Ritualdolch11_Condition;
	information	= Info_Mod_Botschek_Ritualdolch11_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Botschek_Ritualdolch11_Condition()
{
	if (Mod_Botschek_Wasserleichen == 14)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Ritualdolch11_Info()
{
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch11_16_00"); //Unglaublich! Du hast es geschafft. Der Fluch des Moores ist gebrochen, die Schutzbarriere steht, die Umgebung nun fast ohne Gefahren.
	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch11_15_01"); //Ja, ein Besuch des Moores wird zwar sicher immer noch kein Spaziergang sein, aber zumindest hinter der Barriere kann man nun dem Gras beim Wachsen zusehen.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch11_16_02"); //Das wird gewiss mehr Menschen herlocken ... vielleicht wird irgendwann die Siedlung wieder errichtet.
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch11_16_03"); //Auf jeden Fall bedeutet es mehr Kundschaft. Hier, nimm also dieses Gold zum Dank.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch11_16_04"); //Und die magische Tafel hat f�r mich auch keinen Nutzen mehr. Vielleicht kannst du noch etwas mit ihr anfangen.

	B_GiveInvItems	(self, hero, ItWr_BotschekTafel, 1);

	AI_Output(hero, self, "Info_Mod_Botschek_Ritualdolch11_15_05"); //Mal schauen, danke. 
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch11_16_06"); //Du bist auf jeden Fall jederzeit willkommen in der Schenke "Zur goldenen G�lle".
	AI_Output(self, hero, "Info_Mod_Botschek_Ritualdolch11_16_07"); //Bestimmt sehen wir uns mal wieder. Und bis dahin ... pass auf dich auf.

	B_SetTopicStatus	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	CurrentNQ += 1;

	B_StartOtherRoutine	(Mod_504_PAL_Parcival_REL,	"VORKNEIPE");
};

INSTANCE Info_Mod_Botschek_Kneipe (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Kneipe_Condition;
	information	= Info_Mod_Botschek_Kneipe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Deine Kneipe ist ja merkw�rdig gebaut ...";
};

FUNC INT Info_Mod_Botschek_Kneipe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Kneipe_Info()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Kneipe_15_00"); //Deine Kneipe ist ja merkw�rdig gebaut ... die separaten R�ume oben, meine ich.
	AI_Output(self, hero, "Info_Mod_Botschek_Kneipe_16_01"); //Ach, das hat schon seinen Sinn.
	AI_Output(self, hero, "Info_Mod_Botschek_Kneipe_16_02"); //Sp�testens wenn der Wind ung�nstig steht und giftige Rauchschwaden aus dem Moor alles darunter bedecken, ist man froh drum.
	AI_Output(self, hero, "Info_Mod_Botschek_Kneipe_16_03"); //Au�erdem steht dort ein Alchemietisch ... dort kann Viran an seinen Tr�nken herumprobieren und Kraut f�r die Jungs in der Schenke drehen.
	AI_Output(self, hero, "Info_Mod_Botschek_Kneipe_16_04"); //Ach ja, und nat�rlich k�nnen sich die Abenteurer dort ungest�rt mit unserem Freudenm�dchen Chani vergn�gen.
};

INSTANCE Info_Mod_Botschek_Informationen (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Informationen_Condition;
	information	= Info_Mod_Botschek_Informationen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Ich brauche Informationen.";
};

FUNC INT Info_Mod_Botschek_Informationen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Informationen_Infos()
{
	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_AddChoice	(Info_Mod_Botschek_Informationen, DIALOG_BACK, Info_Mod_Botschek_Informationen_BACK);

	if (Mod_Botschek_Info_F == FALSE)
	&& (Mod_Botschek_Info_E == TRUE)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Wohin ist er zuletzt gegangen?", Info_Mod_Botschek_Informationen_F);
	};
	if (Mod_Botschek_Info_E == FALSE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sancho_Dam2))
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Sagt dir das Wort 'Dam' irgendwas?", Info_Mod_Botschek_Informationen_E);
	};
	if (Mod_Botschek_Info_D == FALSE)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Gibt es was zu tun?", Info_Mod_Botschek_Informationen_D);
	};
	if (Mod_Botschek_Info_C == FALSE)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Was kannst du mir �ber die Leute hier sagen?", Info_Mod_Botschek_Informationen_C);
	};
	if (Mod_Botschek_Info_B == FALSE)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Wo gibt es was zu holen?", Info_Mod_Botschek_Informationen_B);
	};
	if (Mod_Botschek_Info_A == FALSE)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Auf welche Gefahren muss ich im Moor achten?", Info_Mod_Botschek_Informationen_A);
	};
};

FUNC VOID Info_Mod_Botschek_Informationen_Info()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_15_00"); //Ich brauche Informationen.

	Info_Mod_Botschek_Informationen_Infos();
};

FUNC VOID Info_Mod_Botschek_Informationen_2()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_2_15_00"); //Ein andermal.
};

FUNC VOID Info_Mod_Botschek_Informationen_1()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_1_15_00"); //Hier.
};

FUNC VOID Info_Mod_Botschek_Informationen_BACK()
{
	Info_ClearChoices	(Info_Mod_Botschek_Informationen);
};

FUNC VOID Info_Mod_Botschek_Informationen_F()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_F_15_00"); //Wohin ist er zuletzt gegangen?
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_F_16_01"); //Das scheint dich ja sehr zu interessieren ... macht 60 M�nzen.

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_AddChoice	(Info_Mod_Botschek_Informationen, "Ein andermal.", Info_Mod_Botschek_Informationen_F_2);

	if (Npc_HasItems(hero, ItMi_Gold) >= 60)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Hier", Info_Mod_Botschek_Informationen_F_1);
	};
};

FUNC VOID Info_Mod_Botschek_Informationen_F_2()
{
	Info_Mod_Botschek_Informationen_2();

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);
};

FUNC VOID Info_Mod_Botschek_Informationen_F_1()
{
	Info_Mod_Botschek_Informationen_1();

	B_GiveInvItems	(hero, self, ItMi_Gold, 60);

	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_F_1_16_00"); //Er ist in Richtung der Dorfruinen verschwunden. Mehr wei� ich auch nicht.

	Mod_Botschek_Info_F = TRUE;

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_Mod_Botschek_Informationen_Infos();
};

FUNC VOID Info_Mod_Botschek_Informationen_E()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_E_15_00"); //Sagt dir das Wort 'Dam' irgendwas? Vielleicht in Verbindung mit einem Amulett?
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_E_16_01"); //Dam und Amulett? Hmm, da war mal jemand ... kostet 40 M�nzen.

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_AddChoice	(Info_Mod_Botschek_Informationen, "Ein andermal.", Info_Mod_Botschek_Informationen_E_2);

	if (Npc_HasItems(hero, ItMi_Gold) >= 40)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Hier", Info_Mod_Botschek_Informationen_E_1);
	};
};

FUNC VOID Info_Mod_Botschek_Informationen_E_2()
{
	Info_Mod_Botschek_Informationen_2();

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);
};

FUNC VOID Info_Mod_Botschek_Informationen_E_1()
{
	Info_Mod_Botschek_Informationen_1();

	B_GiveInvItems	(hero, self, ItMi_Gold, 40);

	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_E_1_16_00"); //Da gab es mal einen Schatzsucher ... der soll den Namen gehabt haben, wie ich sp�ter erfuhr.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_E_1_16_01"); //Am Anfang fiel er nicht auf, hat wie die meisten nach Artefakten und Sch�tzen gesucht und hier gezecht.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_E_1_16_02"); //Aber dann wurde er immer sonderlicher, f�hrte Selbstgespr�che, zog sich von den anderen zur�ck und verfiel auch k�rperlich zusehends ... bis er nicht wiederkam nach seinem letzten Ausflug vor einigen Monaten.

	Mod_Botschek_Info_E = TRUE;

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_Mod_Botschek_Informationen_Infos();
};

FUNC VOID Info_Mod_Botschek_Informationen_D()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_D_15_00"); //Gibt es was zu tun?
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_D_16_01"); //Ja, ich habe tats�chlich was, das erledigt werden will. Diese Information kostet nat�rlich nichts ...
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_D_16_02"); //Zu allererst vielleicht die Ernte und die Beseitigung des Unkrauts ...
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_D_15_03"); //Was?! Soll ich jetzt vielleicht R�ben ernten?!
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_D_16_04"); //Keine R�ben, �pfel. Ich brauche n�mlich welche f�r den Apfelmost.
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_D_15_05"); //Und dann noch Unkraut?!
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_D_16_06"); //Nun, das Unkraut ist recht aufdringlich geworden ... und nicht ganz ungef�hrlich.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_D_16_07"); //Der Grund, warum wir einen neuen Koch haben. Der alte ist nicht vom Zutatensammeln zur�ckgekehrt.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_D_16_08"); //Und da ich Balam nur ungern auch noch verlieren w�rde, schicke ich lieber jemanden, der auch mit einer Waffe umgehen kann und nicht nur mit dem K�chenmesser.
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_D_15_09"); //(halblaut) ... den G�rtner spielen.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_D_16_10"); //Ich brauche etwa 20 �pfel. Der Garten ist rechts am See. Viel Erfolg.

	Log_CreateTopic	(TOPIC_MOD_BOTSCHEK_GAERTNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BOTSCHEK_GAERTNER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BOTSCHEK_GAERTNER, "Botschek will, dass ich zu dem kleinen Garten am See gehe, aggressives Unkraut beseitige und 20 �pfel ernte.");

	Mod_Botschek_Info_D = TRUE;

	Wld_InsertNpc	(Alraune_Botschek_03,	"FP_ROAM_MOOR_BOTSCHEK_ALRAUNE_03");
	Wld_InsertNpc	(Apfelbaum_Botschek_03,	"FP_ROAM_MOOR_BOTSCHEK_APFELBAUM_03");

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_Mod_Botschek_Informationen_Infos();
};

FUNC VOID Info_Mod_Botschek_Informationen_C()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_C_15_00"); //Was kannst du mir �ber die Leute hier sagen?
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_16_01"); //Einiges Wissenswertes und N�tzliches. F�r dich nur 30 Goldst�cke.

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_AddChoice	(Info_Mod_Botschek_Informationen, "Ein andermal.", Info_Mod_Botschek_Informationen_C_2);

	if (Npc_HasItems(hero, ItMi_Gold) >= 30)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Hier", Info_Mod_Botschek_Informationen_C_1);
	};
};

FUNC VOID Info_Mod_Botschek_Informationen_C_2()
{
	Info_Mod_Botschek_Informationen_2();

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);
};

FUNC VOID Info_Mod_Botschek_Informationen_C_1()
{
	Info_Mod_Botschek_Informationen_1();

	B_GiveInvItems	(hero, self, ItMi_Gold, 30);

	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_00"); //Viele in meiner Kneipe sind ehemalige Strafgefangene der Kolonie, die hier ihr Gl�ck versuchen, wo sonst nur wenige ihren Fu� hinsetzen.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_01"); //Mein neuer Koch Balam zum Beispiel hat einst f�r die Erzbarone gekocht, kannst du dir das vorstellen? (lacht)
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_02"); //Ja, und Chani hielt einst die Gurus im Sumpf bei Laune und jetzt die Abenteurer hier.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_03"); //Sie kann hier ungest�rt ihrem Gewerbe nachgehen und ich bekomme meinen Anteil ...
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_04"); //Auch Viran und Harlok stammen aus dem Sumpflager.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_05"); //Sie wollen sich hier mit dem Anbau von Sumpfkraut selbstst�ndig machen.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_06"); //Viran probiert hin und wieder noch neue Ideen f�r sumpfkrautlastige Tr�nke am Alchemietisch oben aus.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_07"); //Hin und wieder kommt sogar was Gutes dabei raus ...
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_08"); //Wedge stammt aus dem Neuen Lager der Kolonie und hat sich dort als Bandit auf die Diebesk�nste verstanden.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_09"); //Das hat ihn hier schnell zum geschicktesten Schatzsucher gemacht.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_10"); //Keiner versteht es mit solcher Finesse vorzugehen und unentdeckt zu bleiben.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_11"); //Der Abenteurer Alkor wiederum ist einer f�rs Grobe ... und grob wird er auch manchmal, wenn er zu viel getrunken hat.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_12"); //Nun, ich bin auf jeden Fall wirklich �berrascht, dass die Saufnase noch nicht in die ewigen Jagdgr�nde des Moores eingegangen ist.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_13"); //Bei dem ganzen wertvollen Krempel, den er schon hier angeschleppt hat, muss er schon die eine oder andere gef�hrliche Expedition im Moor unternommen haben ...
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_14"); //Ach ja, fast h�tte ich ja unsere Ehreng�ste vergessen ... die im Dienste des K�nigs Stehenden. (lacht)
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_15"); //Sie stehen meistens drau�en vor der Taverne in ihrem kleinen Lager.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_16"); //Das Los hat es so gewollt, dass sie die Situation hier im Auge behalten d�rfen.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_C_1_16_17"); //Aber so ganz gl�cklich scheinen sie, glaube ich, damit nicht zu sein, h�h�.

	Mod_Botschek_Info_C = TRUE;

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_Mod_Botschek_Informationen_Infos();
};

FUNC VOID Info_Mod_Botschek_Informationen_B()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_B_15_00"); //Wo gibt es was zu holen?
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_B_16_01"); //Du meinst glitzerndes Gold.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_B_16_02"); //Diese Information kostet nur 50 M�nzen ... kein Vergleich zu dem, was du finden kannst.

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_AddChoice	(Info_Mod_Botschek_Informationen, "Ein andermal.", Info_Mod_Botschek_Informationen_B_2);

	if (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Hier", Info_Mod_Botschek_Informationen_B_1);
	};
};

FUNC VOID Info_Mod_Botschek_Informationen_B_2()
{
	Info_Mod_Botschek_Informationen_2();

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);
};

FUNC VOID Info_Mod_Botschek_Informationen_B_1()
{
	Info_Mod_Botschek_Informationen_1();

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_B_1_16_00"); //Nun, das meiste, was im vorderen Bereich des Moores auf den offenen Wegen herumlag, haben Wagemutige schon geborgen ... aber nicht alle haben es zur�ckgeschafft.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_B_1_16_01"); //Eine Moorleiche in Abenteurerkluft verspricht also meist auch klingende M�nzen.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_B_1_16_02"); //Ansonsten musst du eher abseits der Hauptwege suchen, im Morast, in versteckten Truhen oder verfallenen Geb�uden.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_B_1_16_03"); //Du kannst dich nat�rlich auch noch tiefer ins Moor begeben, als es die meisten bislang taten ...
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_B_1_16_04"); //Hin und wieder kann auch eine Spitzhacke hilfreich sein, wenn du auf alte Gr�ber triffst.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_B_1_16_05"); //Ach ja, rechts im Moor gibt es noch eine gro�e Halle. Leider ist der Zugang versperrt.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_B_1_16_06"); //Denjenigen, dem es gel�nge, sich Zutritt zu verschaffen, w�rde gewiss gro�er Reichtum erwarten ...

	Mod_Botschek_Info_B = TRUE;

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_Mod_Botschek_Informationen_Infos();
};

FUNC VOID Info_Mod_Botschek_Informationen_A()
{
	AI_Output(hero, self, "Info_Mod_Botschek_Informationen_A_15_00"); //Auf welche Gefahren muss ich im Moor achten?
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_16_01"); //Ohh, auf einige. F�r nur 70 Goldm�nzen wirst du erfahren, was dich dort alles erwartet.

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_AddChoice	(Info_Mod_Botschek_Informationen, "Ein andermal.", Info_Mod_Botschek_Informationen_A_2);

	if (Npc_HasItems(hero, ItMi_Gold) >= 70)
	{
		Info_AddChoice	(Info_Mod_Botschek_Informationen, "Hier", Info_Mod_Botschek_Informationen_A_1);
	};
};

FUNC VOID Info_Mod_Botschek_Informationen_A_2()
{
	Info_Mod_Botschek_Informationen_2();

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);
};

FUNC VOID Info_Mod_Botschek_Informationen_A_1()
{
	Info_Mod_Botschek_Informationen_1();

	B_GiveInvItems	(hero, self, ItMi_Gold, 70);

	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_00"); //Gut. Fangen wir mit dem Unbelebten an.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_01"); //Da w�ren die giftigen Rauchschwaden, die den gr��ten Teil des Moores bedecken.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_02"); //Sie entsteigen den Kratern, die du �berall im Moor finden wirst.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_03"); //Wenn du nicht gerade ein harter Bursche bist, wirst du ohne Gegengift nicht weit kommen.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_04"); //Falls du wiederum im Moor etwas flackern siehst, mach besser einen Bogen drum.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_05"); //Sonst k�nnte dich eine feurige Explosion rasch in Beliars Reich bef�rdern ...
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_06"); //Geradewegs von dort kommen scheinbar die ganzen Untoten, welche das Moor bev�lkern.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_07"); //Pass gut auf, wohin du trittst, denn die Moorleichen werden sich aus dem schlammigen Untergrund erheben.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_08"); //Sie sind jedoch nicht die schnellsten� zumindest gemessen an den Geistern der Krieger, die das Moor unsicher machen.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_09"); //Sie greifen alles an, was geht und steht.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_10"); //Nicht viel freundlicher sind da die Pflanzen, welche im Moor wuchern.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_11"); //Einige fest verwurzelt im Boden, andere auf schnellen Sohlen ... jedoch alle schwerlich mit einem einfachen K�chenmesser klein zu kriegen.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_12"); //Zuletzt haben einige Abenteurer noch davon berichtet, vermummte Gestalten im Moor gesehen zu haben ...
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_13"); //�ber diese ist jedoch am wenigsten bekannt.
	AI_Output(self, hero, "Info_Mod_Botschek_Informationen_A_1_16_14"); //Nur sind sie von allen Kreaturen des Moores die einzigen, die mehr im Sinn zu haben scheinen, als die Vernichtung von Eindringlingen ...

	Mod_Botschek_Info_A = TRUE;

	Info_ClearChoices	(Info_Mod_Botschek_Informationen);

	Info_Mod_Botschek_Informationen_Infos();
};

INSTANCE Info_Mod_Botschek_Trade (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Trade_Condition;
	information	= Info_Mod_Botschek_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Botschek_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Botschek_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Botschek_Pickpocket (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_Pickpocket_Condition;
	information	= Info_Mod_Botschek_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Botschek_Pickpocket_Condition()
{
	C_Beklauen	(133, ItMi_Gold, 63);
};

FUNC VOID Info_Mod_Botschek_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Botschek_Pickpocket);

	Info_AddChoice	(Info_Mod_Botschek_Pickpocket, DIALOG_BACK, Info_Mod_Botschek_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Botschek_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Botschek_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Botschek_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Botschek_Pickpocket);
};

FUNC VOID Info_Mod_Botschek_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Botschek_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Botschek_Pickpocket);

		Info_AddChoice	(Info_Mod_Botschek_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Botschek_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Botschek_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Botschek_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Botschek_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Botschek_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Botschek_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Botschek_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Botschek_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Botschek_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Botschek_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Botschek_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Botschek_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Botschek_EXIT (C_INFO)
{
	npc		= Mod_7650_OUT_Botschek_REL;
	nr		= 1;
	condition	= Info_Mod_Botschek_EXIT_Condition;
	information	= Info_Mod_Botschek_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Botschek_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Botschek_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};