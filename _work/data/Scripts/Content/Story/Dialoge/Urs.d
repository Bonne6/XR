INSTANCE Info_Mod_Urs_Hi (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hi_Condition;
	information	= Info_Mod_Urs_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urs_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_00"); //(zu sich selbst) Ohh, welch Ungl�ck, er ist fortgelaufen.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_01"); //Was ist los?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_02"); //(erschrocken) H�, wer da?
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_03"); //Nur ein Besucher des Tales.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_04"); //Ohh, Innos sei dank. Ich dachte schon, du seiest ein weiterer Bandit. Das h�tte mir gerade noch gefehlt.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_05"); //Wieso, was ist los?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_06"); //Ach, siehst du diese zwei Banditen da hinten? Voller Bosheit haben die mir ein Rudel Scavenger vor den Karren gejagt.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_07"); //Daraufhin ist mein Wally ausgerissen und hinter ihnen her. Jetzt steh ich hier und kann nicht weg.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_08"); //Wer ist Wally?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_09"); //Mein treuer zahmer Freund. Er zieht mir meinen Karren, da es meine eigenen Kr�fte nicht mehr zulassen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_10"); //Au�erdem h�lt er manch einen Halunken davon ab, mir �rger zu machen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_11"); //So, wie das letzte Mal, als ich im Minental Gesch�fte gemacht hatte.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_12"); //Da haben die beiden Halsabschneider sich auch schon ganz gierig meinen wertvollen Waren gen�hert.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_13"); //Als aber mein Wally sie grimmig anknurrte, da hat der Mut die beiden doch verlassen und sie �berlegten es sich anders.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_14"); //Ahh, Wally ist dein Hund. Na, da sind mir die beiden Banditen aber Helden.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_15"); //Hund ... �hh, na ja, irgendwie schon. Er ist ein Orkhund.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_16"); //Ein Orkhund? Aber ...
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_17"); //Ach, das ist eine Geschichte, die lange zur�ckliegt.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_18"); //Damals habe ich einige Paladine auf dem Festland nahe Faring begleitet, als sie einen Trupp Orks entdeckten.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_19"); //Die Streiter Innos nahmen den Kampf sofort auf und erschlugen mit dem Vorteil der �berraschung alle Orks samt ihren Tieren.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_20"); //Als nun der Staub der Schlacht sich gelegt hatte, h�rte ich ein j�mmerliches Wimmern.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_21"); //Dicht an einen toten Orkhund gedr�ngt entdeckte ich einen zappelnden, hilflosen Welpen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_22"); //Ich brachte es nicht �bers Herz, ihn sich selbst zu �berlassen, nahm ihn mit und zog ihn mit der Hand auf.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_23"); //Achso, nun verstehe ich nat�rlich. Dein Freund und Begleiter ist fort und die Banditen warten nur darauf deine Waren an sich zu nehmen.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_24"); //Hmm, soll ich die beiden Schurken zurechtstutzen?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_25"); //Ach, was w�rde das bringen. In den Bergen haben die ihr Lager und wenn die beiden Hilfe holen, dann habe ich erst richtig �rger.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_26"); //In Schach halten kann ich sie ja noch gerade alleine, aber den Karren ...
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_27"); //(unterbricht) Das verstehe ich nicht. Du kannst keinen Karren ziehen, aber Banditen davon abhalten deine Waren zu pl�ndern?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_28"); //Nun, nachdem mein Wally weglief und die beiden Schurken sich auf meine Waren st�rzen wollten, nutzte ich die Macht Innos, um sie ein weiteres Mal in ihre Schranken zu weisen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_29"); //Als ich den Ball des Feuers in meinen H�nden auflud ...
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_30"); //(unterbricht) Einen Feuerball? Aber ...
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_31"); //Ja, du bringst einen auch dazu, alle ungl�cklichen Details des Vergangenen preiszugeben.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_32"); //Denn einst war ich Magier des Feuers, der ersten drei Kreise m�chtig.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_33"); //Ich begann aber mich tiefer mit den g�ttlichen M�chten auseinanderzusetzen, mit ihrer Wirkung ... und der Beeinflussung und Ausstattung von Gegenst�nden mit deren Macht.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_34"); //Du meinst, Verzauberung?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_35"); //Ja, verzaubern und segnen. Normalerweise ist dies nur in ganz seltenen F�llen gestattet, zum Beispiel, bei der heiligen Weihe eines Paladinschwertes.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_36"); //Ich verstie� nun gegen dieses Gebot, als ich auch einfache Gegenst�nde mit der feurigen Magie Innos� verzauberte und sie an einfache Menschen weitergab.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_37"); //Der oberste Magier des Feuers erfuhr davon und drohte mir mit der Exkommunikation, im Falle eines weiteren Versto�es.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_38"); //Und wie kam es dann dazu? Hast du trotzdem weitergemacht?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_39"); //Nein, ich f�gte mich der Anordnung.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_40"); //Aber ... aber dann wurde ich vor eine Entscheidung gestellt ... ich konnte mich einfach nicht im Sinne Innos entscheiden ... oder das, was der Orden des Feuers als solchen ansah.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_41"); //Ich hatte dir ja bereits von den Umst�nden erz�hlt, wie Wally in mein Leben trat.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_42"); //Aber dass es unter h�chster Strafe verboten war, Kontakte zu finsteren Gesch�pfen zu unterhalten � denn als solche sieht der Orden Orks und ihre Gesch�pfe an - oder diese gar zu beherbergen, das hatte ich verschwiegen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_43"); //Ich zog ihn zwar in einer H�tte au�erhalb der Stadt auf, aber nach einigen Monaten, als er allm�hlich gr��er wurde und ich h�ufiger mit ihm im Wald unterwegs war, fielen wir doch auf.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_44"); //Man stellte mich vor die Wahl, mich dieser Kreatur zu entledigen ... oder den Orden und die Stadt f�r immer zu verlassen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_45"); //Welche Wahl ich traf, muss ich wohl kaum erw�hnen. Er war mir zu sehr ans Herz gewachsen.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_46"); //Hmm, ja eine ergreifende Geschichte. Aber was hast du jetzt vor?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_47"); //Ach ich wei� nicht. Ewig ausharren kann ich hier ja nicht.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_48"); //Aber fort genauso wenig, und damit meine Waren, und vor allem Wally zur�cklassen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_49"); //Er wird bestimmt zur�ckkommen, wenn er das Federvieh etwas herumgescheucht hat.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_50"); //Andererseits k�nnte er auf Gardisten oder S�ldner treffen, die ihm bestimmt nicht wohl gesonnen w�ren.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_51"); //Daher sollte ich ihn vielleicht doch suchen gehen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_52"); //Hmm, lass mich nachdenken ... K�nntest du nicht die Waren f�r mich ausliefern?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_53"); //Dann k�nnte ich w�hrend dessen Wally wieder finden.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_54"); //Ja, warum nicht.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_55"); //Vielen Dank. Also ...

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_56"); //Dann h�tte ich hier zun�chst einen feurigen Hammer f�r den Schmied Thofeistos, im Neuen Lager.

	B_GiveInvItems	(self, hero, ItMw_FeurigerHammer, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_57"); //Du findest ihn in der gro�en Wohnh�hle. Er wird das gute St�ck schon sehns�chtig erwarten. Gewiss wird er 20 Brocken Erz daf�r zahlen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_58"); //Hmm, und von dort aus wirst du am leichtesten das Lager der Waldl�ufer finden, welches du auch noch aufsuchen musst.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_59"); //Folge einfach weiter dem Weg Richtung alte Mine. Dort ist ein Durchgang hinter dem ihr Lager liegt.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_60"); //F�r den J�ger Zelar habe ich diese Ladung magisch verzauberter Pfeile.

	B_GiveInvItems	(self, hero, ItMi_PfeilpaketZelar, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_61"); //Die wollten sie haben, falls sich mal wieder Irrlichter ihrem Lager n�hren. Denn mit normalen Waffen ist denen kaum beizukommen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_62"); //Jedenfalls bekommst du einige wertvolle Felle daf�r.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_63"); //Dann als n�chstes w�re da diese lodernde Pfanne f�r Omid. Er ist der Koch im Haus der Erzbarone.

	B_GiveInvItems	(self, hero, ItMi_MagischePfanne, 1);

	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_64"); //Augenblick mal, eine magische Pfanne f�r den Koch?
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_65"); //Ja, einige der Erzbarone m�gen ihre Speisen immer besonders knusprig durchgebraten.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_66"); //Und der zufriedene Gaumen eines Erzbarons ist in Gold kaum aufzuwiegen. 400 M�nzen solltest du daf�r gewiss bekommen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_67"); //So, dann noch dieses kleine P�ckchen gesegneter Rohlinge f�r den Schmied Darrion, aus dem Sumpflager.

	B_GiveInvItems	(self, hero, ItMi_ErzpaketDarrion, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_68"); //Die daraus geschmiedeten Klingen sollten im Besonderen gegen d�monische Gesch�pfe mehr Wirkung zeigen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_69"); //Die im Sumpflager hatten n�mlich mal fr�her �rger mit einem Erzd�mon, oder so.
	AI_Output(hero, self, "Info_Mod_Urs_Hi_15_70"); //Hmm, kommt mir bekannt vor.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_71"); //Jedenfalls bekommst du ein feines Paket Sumpfkraut daf�r.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_72"); //So, jetzt noch die Lager, die erst vor kurzem entstanden sind.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_73"); //An die Magier in der Klosterruine noch dieser Ring, der das Licht Innos' in sich tr�gt.

	B_GiveInvItems	(self, hero, ItRi_Licht, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_74"); //Wird er angelegt, erhellt er dem Tr�ger f�r einige Zeit die Umgebung.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_75"); //Einer der Verwandlungsmagier wollte den haben, um auch noch sp�t nachts seine Forschungen ohne Einschnitte fortsetzen zu k�nnen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_76"); //Falls du noch nicht wei�t wo du sie findest: Folge einfach diesem Fluss Stromabw�rts, bis er sich in zwei L�ufe trennt.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_77"); //Links davon liegt die Klosterruine. Du wirst den Ring bei der Torwache Ferco abgeben und daf�r eine Zauberrune bekommen.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_78"); //Den Rest verkauf ich ein andermal, wenn weniger �rger in der Luft liegt.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_79"); //Sobald du dann alles zusammenhast, wirst du mich  hier finden.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_80"); //Zur Belohnung sollst du eines meiner besten St�cke bekommen. Du wirst gewiss zufrieden sein.
	AI_Output(self, hero, "Info_Mod_Urs_Hi_12_81"); //Lass dir aber bitte nicht zu viel Zeit. Ewig kann ich hier nicht ausharren.

	Log_CreateTopic	(TOPIC_MOD_URS_HUND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_URS_HUND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_URS_HUND, "Dem H�ndler Urs ist unterhalb des Passes sein Orkhund Wally ausgerissen. Da die Banditen in der n�he sind und er seinen Wally schnell wieder finden will, werde ich derweil seine wichtigsten Waren an den Mann bringen. Im Neuen Lager erwartet der Schmied Thofeistos einen feurigen Hammer, f�r welchen ich Erz bekomme. In der N�he der alten Mine treffe ich auf die Waldl�ufer. F�r mehrere gesegnete Pfeile bekomme ich einige wertvolle Felle. Im Alten Lager soll ich dem Koch der Erzbarone Omid eine lodernde Pfanne �bergeben, f�r welche einige Goldm�nzen herausspringen. Schmied Darrion im Sumpflager wartet auf einige gesegnete Rohlinge, wof�r ich ein Packet Sumpfkraut bekomme. Dem Flusslauf unterhalb des Passes folgend, werde ich links eine Klosterruine finden, in welcher Verwandlungsmagier wohnhaft sind. Der Torwache Ferco �bergebe ich einen Ring des Lichtes und bekomme im Gegenzug eine Rune. Wenn ich alles zusammenhabe, soll ich es Urs bringen, wof�r er mir eine zufrieden stellende Belohnung versprochen hat. Ich sollte mich aber beeilen, da er nicht ewig an Ort und Stelle bleiben kann.");
};

INSTANCE Info_Mod_Urs_Hund (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund_Condition;
	information	= Info_Mod_Urs_Hund_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hund_Condition()
{
	if (Mod_Urs_Hund == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_00"); //(erfreut) Ahh, da bist du ja.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_01"); //Ich hab deinen Zettel gelesen. Aber wie ich sehe hast du Wally immer noch nicht gefunden.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_02"); //(betr�bt) Nein, leider auch hier nicht. (nachdenklich) Jetzt gibt es noch eine letzte M�glichkeit. Ja, nat�rlich, dort wird er sein.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_03"); //Ja?
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_04"); //Das Orkgebiet. Wahrscheinlich haben ihn seine Instinkte und Erinnerungen dorthin gef�hrt. Da werde ich ihn finden.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_05"); //Ins Orkgebiet? Das ist doch glatter Selbstmord ... selbst mit deiner Magie.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_06"); //(nachdenklich) Nein, nicht unbedingt. Es wird nicht die Flamme Innos sein, die mir dort sicherer Passage gew�hrt.
	AI_Output(hero, self, "Info_Mod_Urs_Hund_15_07"); //Was meinst du?
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_08"); //Nun, ein kleines Ritual.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_09"); //Das wirst du dann schon sehen� aber dazu ben�tige ich die Sachen, die du zum Tausch f�r meine Waren bekommst.
	AI_Output(self, hero, "Info_Mod_Urs_Hund_12_10"); //Hast du vielleicht schon alles?
};

INSTANCE Info_Mod_Urs_Hund2 (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund2_Condition;
	information	= Info_Mod_Urs_Hund2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ich hab alles.";
};

FUNC INT Info_Mod_Urs_Hund2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hund))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 20)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	&& (Npc_HasItems(hero, ItRu_TrfMolerat) == 1)
	&& (Npc_HasItems(hero, ItAt_WargFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_TrollFur) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund2_Info()
{
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_00"); //Ich hab alles.

	B_ShowGivenThings	("Urs Waren gegeben");

	Npc_RemoveInvItems	(hero, ItMi_Nugget, 20);
	Npc_RemoveInvItems	(hero, ItMi_HerbPaket, 1);
	Npc_RemoveInvItems	(hero, ItRu_TrfMolerat, 1);
	Npc_RemoveInvItems	(hero, ItAt_WargFur, 2);
	Npc_RemoveInvItems	(hero, ItAt_ShadowFur, 2);
	Npc_RemoveInvItems	(hero, ItAt_TrollFur, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_01"); //Ausgezeichnet. Das hast du wirklich vortrefflich gemacht.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_02"); //Das Gold sollst du ruhig behalten, ich brauche es nicht ... und, achja, hier deine eigentliche Belohnung.

	B_GiveInvItems	(self, hero, ItRi_Versengung, 1);

	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_03"); //Dieser Ring wird deine Angriffe mit etwas Feuer und Magie verst�rken.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_04"); //Gut, danke. Und was jetzt weiter?
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_05"); //Nun, um dieses Ritual zu vollf�hren, ben�tige ich einen mystischen, magischen Ort.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_06"); //Nicht weit von hier habe ich in einem Waldst�ck einen Steinkreis gesehen.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_07"); //W�hrend meiner Zeit als Feuermagier hatte ich mich mal mit den Relikten alter Kulturen befasst.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_08"); //Es hie�, dass diese Kreise einst dazu in der Lage gewesen seien, Schranken von Magie, Raum und Zeit zu �berwinden.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_09"); //Das klingt aber nach sehr machtvollen Riten.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_10"); //Ja, in der Tat. Die Magier fr�herer Kulturen, mussten in eine Art magischen, meditativen Zustand verfallen und ihre Kr�fte vereinen oder starke �u�ere Quellen magischer Energie nutzen.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_11"); //Magische Quelle? Du meinst das magische ...
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_12"); //Genau, das magische Erz. Und ein P�ckchen Sumpfkraut sollte mehr als genug sein, um f�r einen meditations�hnlichen Zustand zu sorgen.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_13"); //Nun gut, aber was f�r ein Ritual willst du eigentlich vornehmen?
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_14"); //Ich gedenke die Kraft eines etwas st�rkeren Tieres auf die Verwandlungsrune zu �bertragen.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_15"); //Als Molerat w�rde ich im Orkgebiet wohl nicht allzu weit kommen, sondern schnell als Mittagshappen f�r die ganzen wilden Kreaturen enden.
	AI_Output(hero, self, "Info_Mod_Urs_Hund2_15_16"); //Ahh, das hat es also mit dem Ritual auf sich.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_17"); //Genau. Gut, die n�tigen Sachen habe ich ja.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_18"); //Nun muss ich aber noch die ganzen magischen Kreaturen beim Steinkreis �berwinden.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_19"); //Es sollte durchaus in meine Macht stehen, und ich wei�, dass du bereits viel f�r mich getan hast.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_20"); //Ich w�re dir jedoch sehr dankbar, wenn du mir ein weiters mal helfen w�rdest, indem du mir gegen die Wesen beim Stenkreis beistehst.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_21"); //Wenn du den Ring anlegst, wirst du sogar Irrlichtern, die gegen gew�hnliche Waffen gr��tenteils gefeit sind, schaden k�nnen.
	AI_Output(self, hero, "Info_Mod_Urs_Hund2_12_22"); //Nun gut, dann mal auf zum Steinkreis.

	B_LogEntry	(TOPIC_MOD_URS_HUND, "Urs wird sich jetzt zum Steinkreis begeben, um eine neue Verwandlungsrune zu kreieren. Er will damit Wally finden, der vermutlich im Orkgebiet unterwegs ist. Ich sollte Urs dabei unterst�tzen, die Kreaturen beim Steinkreis klein zu kriegen. Ich k�nnte den neuen Ring bei der Gelegenheit gleich anlegen und erproben.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ZUSTEINKREIS");

	self.aivar[AIV_Partymember] = TRUE;

	B_GivePlayerXP	(600);

	Wld_InsertNpc	(Wisp,	"OW_PATH_WARAN01_SPAWN02");
	Wld_InsertNpc	(Wisp,	"FP_ROAM_OW_BLOODFLY_WALD_OC4");
	Wld_InsertNpc	(Wisp,	"FP_ROAM_OW_BLOODFLY_WALD_OC2");
};

INSTANCE Info_Mod_Urs_Hund3 (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund3_Condition;
	information	= Info_Mod_Urs_Hund3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hund3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hund2))
	&& (Npc_GetDistToWP(hero, "OW_FOREST_EAST_UMWEG_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund3_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hund3_12_00"); //So, nun kann es beginnen.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATSTEINKREIS");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Urs_Hund4 (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_Hund4_Condition;
	information	= Info_Mod_Urs_Hund4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urs_Hund4_Condition()
{
	if (Mod_Urs_Hund == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Urs_Hund4_Info()
{
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_00"); //Du hier?
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_01"); //Nur zu Besuch bei alten Bekannten. Und ich bin auch �berrascht dich hier anzutreffen ... wie ich sehe mit Wally.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_02"); //Ja, das war vielleicht ein Abenteuer, das glaubst du nicht.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_03"); //Nachdem ich in die Gestalt eines Wargs geschl�pft war, wollte ich geradewegs ins Orkgebiet.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_04"); //Nur hatte ich vergessen, dass die meisten Menschen nicht sonderlich erfreut sind �ber das Erscheinen eines solchen Gesch�pfes ... es h�tte nicht viel Gefehlt, und der Bolzen eines Gardisten h�tte mich erwischt.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_05"); //Naja, als ich mich dessen entsonnen hatte, habe ich nat�rlich schnell Fersengeld gegeben, um mich dann � zuerst ganz ungewohnter Weise � mitten unter Orkhunden in Sicherheit zu bringen.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_06"); //Und wie konntest du unter den ganzen Vierbeinern Wally finden?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_07"); //Gar nicht. Er hat mich gefunden. Allerdings musste ich dazu erst eine ganze Weile durchs Orkgebiet streifen.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_08"); //Nach einem Tag f�hlte ich mich unter den ganzen Orks und Vierbeinern schon fast etwas heimisch.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_09"); //Und als der Hunger kam, ertappte mich sogar dabei, wie ich instinktiv einem Scavenger nachjagte, der sich ins Orkgebiet verlaufen hatte.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_10"); //Na ja, das alles aber jetzt nur im Kurzen.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_11"); //Jedenfalls kam ich nach einiger Zeit auch nahe einem Turm vorbei, wo ein Rudel Orkhunde kampierte.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_12"); //Auch hier, so schien es  zun�chst, war ich nicht richtig und ich wollte schon weiterlaufen, als ich pl�tzlich ein lautes Bellen aus dem verlassenen Geb�ude vernahm.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_13"); //Als ich mich umdrehte, sah ich, wie Wally herausgest�rmt kam.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_14"); //Er hatte mich wohl zun�chst nur gewittert und blieb irritiert vor mir, in der ungewohnten Gestalt, stehen.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_15"); //Als ich mich gerade schon zur�ckverwandeln wollte, entsann ich mich des nahen Rudels Orkhunde und schritt erst einige Meter weiter, worauf Wally mir nach einigem Z�gern vorsichtig folgte.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_16"); //Als ich dann endlich in meiner normalen Gestalt vor ihm stand, war die Wiedersehensfreude nat�rlich gro�.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_17"); //Nun, war auch nicht gerade unaufwendig. Hmm, und Wally konnte sich einfach wieder so von seinen Artgenossen l�sen?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_18"); //Nun, seine Instinkte lassen Wally nat�rlich schon zu dem Umfeld seiner fr�hen Welpenzeit streben.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_19"); //Aber letztendlich hat er wohl zu lange unter Menschen gelebt und sich an mich gew�hnt ... so wie ich mich an ihn, als treuen Freund und Begleiter.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_20"); //Ja, so leicht lasst ihr beide euch wohl nicht trennen. Und dann seid ihr weiter zusammen durchs Orkgebiet gestreift?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_21"); //Ja, denn an den Ausg�ngen zum Orkgebiet sa�en Orks auf Warg auf Gardisten zu dicht nahe beieinander, sodass wir nicht h�tten vorbeik�nnen, ohne zwischen dir Fronten zu geraten ... ganz gleich, ob als Mensch, als Warg oder Mensch in Begleitung eines Orkhundes.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_22"); //Das w�re nicht gut gegangen.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_23"); //So suchten wir einen anderen Ausweg und trafen nach einiger Zeit auf die verlassene Bergfestung, mit diesen freundlich gesonnenen Orks.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_24"); //Unglaublich, oder?
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_25"); //Ach, so manches ist m�glich ...
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_26"); //Ja, was es nicht alles gibt. Einige engstirnige Innosdiener w�rden das f�r ein Ding der Unm�glichkeit erkl�ren.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_27"); //Die Welt ist eben doch nicht so einfach in Finsternis und Licht, Gut und B�se geteilt, wie manch scheinheiliger Pfaffe es darstellen m�chte.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_28"); //Ja, da ist was Wahres dran. Und was habt ihr beide nun weiter vor?
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_29"); //Das wissen wir noch nicht so genau.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_30"); //Aber wie ich zumindest von den Orks hier erfahren habe, gibt es gleich in der N�he einen schmalen Pfad der aus dem Orkgebiet f�hrt und nicht von Gardisten bewacht wird.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_31"); //Den werden wir nehmen ... und dann weiterschauen.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_32"); //Hmm, jedenfalls irgendwohin, wo man wegen seines besten Freundes nicht gleich aus der Stadt gejagt wird oder Schwachk�pfe sofort das Schwert gegen ihn z�cken.
	AI_Output(hero, self, "Info_Mod_Urs_Hund4_15_33"); //Dann viel Gl�ck noch.
	AI_Output(self, hero, "Info_Mod_Urs_Hund4_12_34"); //Danke, dir ebenfalls. Bestimmt sehen wir uns mal wieder.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Urs_EXIT (C_INFO)
{
	npc		= Mod_7649_OUT_Urs_MT;
	nr		= 1;
	condition	= Info_Mod_Urs_EXIT_Condition;
	information	= Info_Mod_Urs_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Urs_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urs_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};