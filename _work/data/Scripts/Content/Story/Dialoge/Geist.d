INSTANCE Info_Mod_Geist_EIS_Hi (C_INFO)
{
	npc		= Mod_7646_DMR_Geist_EIS;
	nr		= 1;
	condition	= Info_Mod_Geist_EIS_Hi_Condition;
	information	= Info_Mod_Geist_EIS_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Geist_EIS_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Geist_EIS_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_00"); //(irgendein komisches Geistger�usch)
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_01"); //Was, wie ... woher kommt das?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_02"); //Von mir ...
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_03"); //Ein ... Geist?!
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_04"); //Ein Mensch. Wie viele �onen ist es her, dass ich ein lebendiges Gesch�pf vor mir sah ...
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_05"); //Was ... wer bist du?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_06"); //Ich ... ich bin eine ruhelose Seele, gefangen an dem Ort, wo ich einst mein Leben lie�.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_07"); //Aber ... wie kommt das? Warum bist du nicht ins Jenseits eingegangen, wie jeder Sterbliche eines Tages?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_08"); //Nun, die Umst�nde meines Schicksals sind mir selbst bislang nicht v�llig klar ... und lange liegt alles zur�ck.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_09"); //Mag sein, dass die Magie dieses Ortes eine Rolle dabei spielt ... dagegen spricht jedoch, dass die Seelen anderer Gesch�pfe und Menschen, die hier ihr Leben nach mir lie�en, nicht mehr unter uns weilen.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_10"); //Dann gibt es noch eine m�gliche Erkl�rung, die aber nach all den Jahren immer unwahrscheinlicher erscheint ...
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_11"); //Sprich ...
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_12"); //Ein Versprechen, dass ich abgab, ehe ich meine Schritte hierhin ins Verderben lenkten.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_13"); //Ein Versprechen?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_14"); //Ja ... solange nicht zu ruhen, bis ich meinen Bruder gefunden habe ... oder seine sterbliche H�lle ins Reich der Erde eingekehrt ist.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_15"); //Aber ... was hat sich damals ereignet? Und wie lange bist du denn nun schon an diesen Ort gebunden?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_16"); //Wie lange ...? Sind es viele Jahrzehnte, oder gar schon Jahrhunderte? Genauer vermag ich es nicht sagen.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_17"); //Damals war ich ein junger Mann, in der Bl�te meines Lebens.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_18"); //Mein Bruder Strewak ... er war J�ger. Er durchstreifte immer wieder f�r mehrere Tage die Gegend nach Beute.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_19"); //Einmal blieb er jedoch viel l�nger fort, als gewohnt und wir begannen uns Sorgen zu machen ... bis er nach vielen Tagen doch endlich wieder auftauchte.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_20"); //Aber er war ver�ndert ... und berichtete von einer vermummten Gestalt.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_21"); //Ein vermummte Gestalt?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_22"); //Ja, mein Bruder berichtete von dieser Gestalt. Dieser Wanderer soll er aus einer g�nzlich anderen Region der Erde bis hierhin gepilgert sein.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_23"); //Es m�sste zweifelsfrei Jahre gedauert haben ... falls Strewak sich die ganze Geschichte nicht nur eingebildet hatte.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_24"); //Eingebildet? Wieso? Und was wollte der Pilger eigentlich hier?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_25"); //Nun, da berichtete mein Bruder Strewak mir eben so manches, was mich zweifeln l�sst, ob es wirklich wahr sein kann.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_26"); //Denn dieser Wanderer war auf der Suche nach einer uralten Kultst�tte.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_27"); //Er versprach meinem Bruder eine gro�e Belohnung, wenn er ihn durch das Eisgebiet f�hren w�rde.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_28"); //Mein Bruder willigte ein und sie zogen los. Viele Tage waren sie unterwegs, bis sie irgendwo im Norden auf einen Turm trafen.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_29"); //Dort soll der Wanderer mit seinen H�nden auf einen Schlag ein Feuermeer entfacht haben, welches das Eis vor ihnen Schmolz und einen Zugang zu einem gro�en Tempel freilegte.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_30"); //Sie schritten hinein und sollen dort zun�chst einer Scharr untoter und d�monischer Gesch�pfe begegnet sein, welche der Vermummte jedoch unbeeindruckt bezwang.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_31"); //Sie gingen weiter und kamen an einen Gang der von Flammen durchzogen war.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_32"); //Nun wandte sich der Wanderer an meinen Bruder, �bergab ihm einige magische Artefakte oder Schriftst�cke, von denen er sagte, dass er sie nicht mehr br�uchte ... und durchschritt die Flammen, bis meines Bruders Augen ihn nicht mehr vernahmen.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_33"); //An dieser Stelle der Erz�hlung brach mein Bruder in sich zusammen.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_34"); //Ich vernahm nur noch, dass er etwas von einer Sprache erz�hlte, die ihm magisch vermittelt worden sei und von dem Innersten des magischen Frostes, welches ihm den Zugang erm�glichen sollte.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_35"); //Wir brachten ihn ins Bett, damit er sich erholen k�nne. Am n�chsten Morgen war er jedoch verschwunden.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_36"); //Ein Dorfbewohner meinte noch ihn nach S�den habe gehen zu sehen.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_37"); //Ich brach sofort auf und versprach meiner besorgten Mutter, solange nicht zu ruhen, bis ich meinen Bruder gefunden habe ... oder � so f�gte ich leise hinzu, als ich mich abgewandt hatte - seine sterbliche H�lle ins Reich der Erde eingekehrt sei.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_38"); //Denn mir waren die Gefahren da drau�en durchaus bewusst ...
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_39"); //Das hat es also damit auf sich ... aber, was geschah dann?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_40"); //Nun, viel zu berichten gibt es nicht mehr. Ich hatte einst von diesem magischen Ort im S�dwesten geh�rt.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_41"); //Hier begab ich mich hin ... und lie� mein Leben durch die Hand eines D�mons.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_42"); //Seitdem bin ich an diesen Ort gebunden ... und leider sieht es nicht danach aus, als k�nnte sich in absehbarer Zeit daran etwas �ndern.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_43"); //Nun, ich k�nnte mich etwas umsehen, oder umh�ren.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_44"); //Hab Dank. Jedoch lebt von den Menschen meiner Zeit sicher niemand mehr.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_45"); //Und in dem langen Zeitraum und den weiten dieses Gebietes wird es kein leichtes Unterfangen werden, Hinweise zu finden.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_46"); //Und doch ... trotzdem weckt dein Erscheinen wieder etwas Hoffnung in mir ...
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Hi_15_47"); //Ja, mal schauen. Wenn ich etwas erfahren habe, gebe ich dir bescheid.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_48"); //Nun, wie dir mein Schicksal vermittelt haben sollte, ist es nicht ganz ungef�hrlich.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Hi_10_49"); //Pass also gut auf dich auf ... auf dass wir uns im Diesseits wieder sehen.

	Log_CreateTopic	(TOPIC_MOD_GEIST_BRUDER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GEIST_BRUDER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GEIST_BRUDER, "In der H�hle nahe dem Eremiten begegnete mir ein Geist. Er scheint seit Ewigkeiten an diesen Ort gebunden zu sein. Dies k�nnte mit einem Versprechen zusammenh�ngen, dass er einst gab: nicht eher zu ruhen, bis er seinen Bruder Strewak gefunden habe � oder dessen Leib in den Scho� der Erde eingekehrt sei. Dieser war einst einem vermummten Wanderer begegnet, der von weit weg her kam und hier etwas suchte. Strewak begleitete ihn, bis sie im Norden auf einen Steinkreis trafen und der Pilger magisch einen Tempel freilegte. Sp�ter durchschritt er im Inneren einen Gang voller Flammen, w�hrend Strewak zur�ckblieb und zu seinen Verwandten ins Dorf zur�ckkehrte. Er berichtete noch etwas von dem Innersten des magischen Frostes, welche ihm Zugang erm�glichen sollte und verschwand am n�chsten morgen gen Westen. Sein Bruder gab das Versprechen ab und kam auf der Suche nach Strewak um. Ich werde schauen, ob ich bei meinen weiteren Erkundungen in dieser Welt etwas herausfinde und seinem ruhelosen Geist zur l�ngst �berf�lligen Einkehr ins Jenseits verhelfen kann.");
};

INSTANCE Info_Mod_Geist_EIS_Strewak (C_INFO)
{
	npc		= Mod_7646_DMR_Geist_EIS;
	nr		= 1;
	condition	= Info_Mod_Geist_EIS_Strewak_Condition;
	information	= Info_Mod_Geist_EIS_Strewak_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich habe deinen Bruder gefunden?";
};

FUNC INT Info_Mod_Geist_EIS_Strewak_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Geist_EIS_Hi))
	&& (Mod_Geist_EIS_Bruder == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Geist_EIS_Strewak_Info()
{
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_00"); //Ich habe deinen Bruder gefunden?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_01"); //(ungl�ubig, verwirrt) Wie, was sagst du ...? Das klingt unglaublich. Du m�chtest mich hoffentlich nicht zum Narren halten ...
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_02"); //Aber so sprich ... wo und unter welchen Umst�nden? Was ist mit ihm?
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_03"); //Er hat unl�ngst das Zeitliche gesegnet.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_04"); //Sein K�rper jedoch befand sich in den eisigen Klauen eines Unget�mes, was ihn vor dem Verfall bewahrte.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_05"); //Daher ging sein K�rper niemals in das Reich der Erde �ber.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_06"); //Das innerste des magischen Frostes ... das meinte er also. Ich� w�rde gerne wissen, ob ...
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_07"); //Ja?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_08"); //Nein, das ist gar nicht notwendig. Ich sp�re, wie sich mein Geist allm�hlich vom Diesseits l�st. In kurzer Zeit werde ich meinen Bruder selbst fragen k�nnen.
	AI_Output(hero, self, "Info_Mod_Geist_EIS_Strewak_15_09"); //Dann war es also tats�chlich das Versprechen.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_10"); //Ja, mit Gewissheit. Ich ... aber, wie kann ich dir nur danken?
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_11"); //a, die Magie des Ortes, mit der ich so lange verbunden war, werde ich zum Teil auf dich �bergehen lassen.
	AI_Output(self, hero, "Info_Mod_Geist_EIS_Strewak_10_12"); //Ich ... leb wohl.

	B_SetTopicStatus	(TOPIC_MOD_GEIST_BRUDER, LOG_SUCCESS);

	B_GivePlayerXP	(2000);

	hero.attribute[ATR_MANA_MAX] += 10;
	hero.attribute[ATR_MANA] += 10;

	hero.protection[PROT_MAGIC] += 10;
	hero.protection[PROT_FIRE] += 5;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Geist_EIS_EXIT (C_INFO)
{
	npc		= Mod_7646_DMR_Geist_EIS;
	nr		= 1;
	condition	= Info_Mod_Geist_EIS_EXIT_Condition;
	information	= Info_Mod_Geist_EIS_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Geist_EIS_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Geist_EIS_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};