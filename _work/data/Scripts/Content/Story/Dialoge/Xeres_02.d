INSTANCE Info_Mod_Xeres_XW_Hi (C_INFO)
{
	npc		= Xeres_02;
	nr		= 1;
	condition	= Info_Mod_Xeres_XW_Hi_Condition;
	information	= Info_Mod_Xeres_XW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_XW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xeres_XW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_00"); //Wie ich sehe, hast du nicht nur den Weg in mein bescheidenes Reich gefunden, sondern diesmal sogar deine Freunde mitgebracht.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_01"); //Hier sollt ihr also sterben und zu meinen Dienern werden.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_02"); //Du hast es auch geschafft die Macht der G�tter zu verbinden, doch das wird dir gegen mich nichts n�tzen.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_03"); //Ich werde mich nicht zwei Mal durch dieses Schwert verbannen lassen.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_Hi_15_04"); //(h�hnt) Wie konnte es �berhaupt ein Mal dazu kommen, wenn du so m�chtig bist?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_05"); //Plaudern wir also ein wenig, solange sich deine Kumpane dort oben abrackern.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_06"); //Alles begann vor vielen Jahren in Jharkendar. Dort wurde ich geboren. Man kann sagen, zu dieser Zeit herrschte eine Hochkultur.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_07"); //Es gab nur einen Gott, nicht drei, so wie jetzt. Er wurde Radanos genannt und vereinigte die drei jetzigen G�tter in sich.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_Hi_15_08"); //Das wei� ich alles schon.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_09"); //(gen�sslich) Wieso pl�tzlich so hektisch?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_10"); //Ich wuchs also in Jharkendar auf. Mein Vater war ein einfacher Schmied und meine Mutter eine Kr�utersammlerin.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_11"); //Schon in meiner Jugend reifte der Wunsch in mir heran, meinem unbedeutenden Dasein zu entfliehen und Macht zu erringen.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_12"); //Ich experimentierte also viel mit Magie und mit Tr�nken.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_13"); //Damals gab es noch ganz andere M�glichkeiten als heute, Magie zu wirken.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_14"); //Die Anwendung neuer, st�rkerer Zauberspr�che ist heute verp�nt. Fr�her waren dem Forschergeist keine Grenzen gesetzt.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_15"); //So kam es, dass ich nach f�nf Jahren eine M�glichkeit gefunden hatte, die es mir erm�glichte, unsterblich zu werden. Dazu musste ich mich jedoch teilen.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_16"); //Das gr��te Problem war, meine Teile beziehungsweise Machttr�ger zu sch�tzen.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_17"); //Der erste war schw�chlich, doch durch sein Aussehen konnte er unter den Menschen untertauchen und war so sicher davor, get�tet zu werden.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_18"); //Ein Machttr�ger war nat�rlich zu wenig. Ich erschuf einen zweiten. Einen Drachen, zur�ckgeholt von den Toten. Er war sehr m�chtig. Mein Meisterst�ck, sozusagen. Und du hast ihn vernichtet.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_Hi_15_19"); //Woher wei�t du das?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_20"); //Der Drache war eines Teil meines Selbst. Nach seinem Tod ist seine Energie wieder auf mich �bergegangen.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_21"); //Ich habe die Tode von dreien meiner Machttr�ger gesp�rt. Der Drache, der Gestaltwandler, und Urnol. Der Schl�fer ist verbannt.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_22"); //Du hast mir also beinahe meine Unsterblichkeit genommen, mir aber daf�r mehr St�rke verliehen.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_Hi_14_23"); //Ich kann mit einem Fingerschnippen t�ten, wen ich will.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xeres_XW_LesterTot (C_INFO)
{
	npc		= Xeres_02;
	nr		= 1;
	condition	= Info_Mod_Xeres_XW_LesterTot_Condition;
	information	= Info_Mod_Xeres_XW_LesterTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_XW_LesterTot_Condition()
{
	if (Mod_XW_Kap6 == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xeres_XW_LesterTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_00"); //(seelenruhig) Du siehst, ich mache keine Witze.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_01"); //Ich hatte also meine Unsterblichkeit und nahezu unendliche Macht erlangt.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_02"); //Weil sie sich mir nicht unterwerfen wollten, t�tete ich die meisten Bewohner Jharkendars und suchte mir Diener.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_03"); //Als Untote waren die Menschen meines Volkes recht n�tzlich. Doch schon nach kurzer Zeit tauchte ein Fremder auf.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_04"); //Ich vermute, er war ein Gesandter Radanos'. Er trug Uriziel, die vermaledeite G�tterklinge.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_05"); //Durch dieses Schwert gelang es ihm, mich schwer zu verwunden, und Radanos schaffte es, mich hier einsperren.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_06"); //Doch dank meiner Machttr�ger konnte ich nicht sterben. Ich versuchte lange Zeit zu entkommen.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_07"); //Ich erschuf einen weiteren Machttr�ger. Du kennst ihn. Du warst es, der ihn vernichtet hat. Dank dir ist er in Beliars Reich.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_08"); //Er war lange Zeit mein Haustier. Dann sandte ich ihn ins Minental aus, wo er durch Zufall dazu beitrug, die Barriere zu vergr��ern. Mein Kontakt zu ihm brach ab.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_09"); //Doch dann kamst du. Den Teil der Geschichte kennst du ja. Du hattest den Schl�fer auf dem Gewissen, meinen treuen Freund. Ich wollte Vergeltung.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_10"); //Urnol sollte dich nun auf meine F�hrte bringen und das zu Ende bringen, was ich dem Schl�fer nicht auftragen konnte. Und der Plan hat funktioniert.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_11"); //Die Neugier der Wassermagier hat sie dazu gebracht, den Zauber, der �ber mir lag, zu brechen und mich zu befreien.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_12"); //Und nun stehen wir uns gegen�ber: der neue Auserw�hlte der G�tter und ich, der m�chtige und vor allem unsterbliche Xeres.
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LesterTot_14_13"); //Aber jetzt genug der Worte, kommen wir zur Sache. Dir wird es wie deinem Freund ergehen!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xeres_XW_LetzteRunde (C_INFO)
{
	npc		= Xeres_02;
	nr		= 1;
	condition	= Info_Mod_Xeres_XW_LetzteRunde_Condition;
	information	= Info_Mod_Xeres_XW_LetzteRunde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xeres_XW_LetzteRunde_Condition()
{
	if (Mod_XW_Kap6 == 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xeres_XW_LetzteRunde_Info()
{
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LetzteRunde_14_00"); //(stark schnaufend) Gut gek�mpft. Ich bin gewillt, �ber ein Unentschieden zu verhandeln.
	AI_Output(hero, self, "Info_Mod_Xeres_XW_LetzteRunde_15_01"); //Am Ende der Kr�fte angelangt?
	AI_Output(self, hero, "Info_Mod_Xeres_XW_LetzteRunde_14_02"); //(schnaufend) Nie ... Niemals!

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	self.fight_tactic = FAI_HUMAN_COWARD;
};