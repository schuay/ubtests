# Uebersetzerbau \(SS12\)

Dies ist eine gemeinschaftliche Sammlung von Testfaellen fuer die Uebungsbeispiele
der LVA "Uebersetzerbau \(SS12\)" an der TU Wien.

Kurzes HOWTO (fuer die g0):

	$ git clone git://github.com/schuay/ubtests.git ~/test

Danach koennen die Testfaelle durch diesen Befehl aktualisiert werden:

	$ cd ~/test && git pull

Das Testskript selbst wird von der LVA-Leitung zur Verfuegung gestellt:

	$ /usr/ftp/pub/ubvl/test/scanner/test
	$ /usr/ftp/pub/ubvl/test/parser/test
	$ /usr/ftp/pub/ubvl/test/ag/test
	$ /usr/ftp/pub/ubvl/test/codea/test
	$ /usr/ftp/pub/ubvl/test/codeb/test
	$ /usr/ftp/pub/ubvl/test/gesamt/test

# Namenskonventionen fuer das Skript (Zitat LVA Leitung):

Die Dateien mit der Eingabe heissen *.0, *.1, *.2 oder *.3, wobei die
Ziffer hinten den Exit-Code angibt.  Eine Datei, die einen
Syntax-Fehler enthaelt, werden Sie also z.B. foo.2 nennen.  

Die Dateien mit der Eingabe heissen *.0, *.1, *.2 oder *.3, wobei die
Ziffer hinten den Exit-Code angibt.  Eine Datei, die einen
Syntax-Fehler enthaelt, werden Sie also z.B. foo.2 nennen.  Beim
Scanner-Beispiel gibt es fuer akzeptable Eingaben (also Dateien, die
auf .0 enden) auch noch eine Ausgabe, die ueberprueft werden muss; die
erwartete Ausgabe fuer die Datei bar.0 nennen Sie bar.out.

Bei den akzeptablen Eingaben (also Dateien, die auf .0 enden) muessen
Sie bei codea, codeb, und gesamt zusaetzlich noch eine .call-Datei
schreiben, die C-Code fuer einen oder mehrere Aufrufe von Funktionen
enthaelt, die in der .0/.xin-Datei vorkommen, und das Ergebnis des
Aufrufs ueberprueft; und zwar sollen die Aufrufe wie folgt gemacht
werden:

RET(...);

wobei "..." die Aufrufe und Ueberpruefungen enthaelt und als Ergebnis
true (also 1 in C) liefert, wenn das Ergebnis stimmt, und false (0 in
C), wenn das Ergebnis nicht stimmt.  Zusaetzlich werden Sie
ueblicherweise noch die aufgerufenen Funktionen deklarieren.


## Weitere Namenskonventionen fuer uns:

*	Jeder Testfall hat als Praefix "<nick>_", sodass keine Namenskonflikte entstehen.


# Wie kannst du beitragen?

## mit git:

*	forke das Repository auf github, committe deine Aenderungen und mach einen "Pull Request"
*	clone das Repository, committe deine Aenderungen, erzeuge Patches mit

		git format-patch

	und maile sie oder poste sie im Informatikforum

## ohne git:

*	schicke deine Testfaelle als Anhang per Mail (mit passenden Dateinamen bitte!)
*	poste deine Testfaelle im Informatikforum und haenge sie als Attachment an (mit passenden Dateinamen bitte!)

und natuerlich ist jeder herzlichst dazu eingeladen im Forum ueber Testfaelle zu diskutieren :)

Infforum-Thread: <http://www.informatik-forum.at/showthread.php?92835-Testcase-Sammlung&p=751724>

Mailadresse(n): jakob.gruber_AT_gmail_DOT_com (weitere Freiwillige sind willkommen, einfach eintragen)


# Credits

Dieses README wurde schamlos von https://github.com/lewurm/testub10 adaptiert.
