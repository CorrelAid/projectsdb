Um diese Prozesse zu automatisieren und eine nutzerfreundlichere Interaktion mit den Recherchereergebnissen zu ermöglichen, teilt sich unser Lösungsansatz in zwei große Arbeitsschritte auf:

1. Die (teilweise) Automatisierung der Datengenerierung und -verarbeitung.
2. Die Erstellung einer [interaktiven Weltkarte](https://erlassjahr.de/informieren/karte-ueberschuldete-staaten-weltweit/), die automatisch auf die aktualisierten Daten zugreift

Alle Schritte wurden in R programmiert. Das Erscheinungsbild der Weltkarte basiert auf leaflet - einer Java-basierten OpenSource Bibliothek zur Erstellung von interaktiven Karten. Zur Erstellung der Weltkarte und zur Veröffentlichung auf der Homepage der Organisation nutzen wir shiny. 

### 1. Automatisierung der Datengenerierung und -verarbeitung

Um die Organisation bei der Datengenerierung und -aufbereitung zu unterstützen, haben wir zunächst sicher gestellt, dass bestimmte, bisher manuell bearbeitete Aufgaben automatisiert werden. Hierzu haben wir ein Skript geschrieben, durch das zu Beginn eines jeden neuen Schuldenreportjahres eine neue Excel-Tabell erstellt wird, die dadurch bereits eine Vielzahl von Informationen beinhaltet. Dafür nutzen wir zum einen die Informationen aus dem Schuldenreport im vergangenen Jahr und übernehmen direkt alle Informationen, die sich nicht von Jahr zu Jahr ändern. Hierzu zählen z.B. die geografischen Regionen oder auch die Links zu den Länderprofilen auf der Website von erlassjahr. Darüberhinaus werden alle vorhandenen Daten der Weltbank zu verschiedenen Verschuldungskategorieren geladen und direkt in die Excel-Tabelle eingefügt. Diese Rohdaten wurden bisher händisch von der Webseite der Weltbank kopiert und in eine Excel-Tabelle eingefügt. Durch unsere Automatisierung entfällt dieser Schritt und muss nur noch bei fehlenden Daten manuell ergänzt werden.


Bei der Beschaffung anderer Rohdaten, konnte keine vergleichbare Automatisierung eingearbeitet werden, da die Daten oftmals durch intensive Recherche aus einer Vielzahl von wechselnden Quellen entstehen. Sobald diese jedoch manuell in die Excel-Tabelle eingefügt wurden, ist es nun möglich mit einem zweiten Skript die Berechnung der Indikatoren und Kategorisierungen zu automatisieren. Hierfür haben nutzen wir die Rohdaten der Excel-Tabelle und kreieren automatisch Einstufungen der Länder in höhere oder nedrigere Verschuldungskategorien. 

### 2. Erstellung einer interaktiven Weltkarte

Basierend auf der neu generierten Datengrundlage, haben wir im zweiten Schritt eine [interaktive Weltkarte](https://erlassjahr.de/informieren/karte-ueberschuldete-staaten-weltweit/) mit shiny und leaflet programmiert. Diese Karte greift dabei immer auf die neusten Daten, die erlassjahr vorliegen zu und kann dadurch stetig aktualisiert werden, sollte es Veränderungen in der derzeitigen Schuldensituation geben, die in der Karte eingearbeitet werden sollen.


Der interaktive Charakter der Weltkarte erlaubt es - im Gegensatz zur statischen PDF Version des Schuldenreport - die Verschuldungssituation der Länder nun differenzierter und detailierter zu betrachten. Es ist nun beispielsweise möglich, nicht nur die aggregierte Verschuldungssituation der Länder zu betrachten. Eine Auswahl und Filterfunktion erlaubt nicht nur die aggregierte Verschuldungssituation pro Land, sondern auch in einzelnen Verschuldungskategorien die Situation der Länder zu betrachten. Zudem ist es möglich, nur Länder nach bestimmten Region, Einkommensituationen oder Risikofaktoren anzeigen zu lassen. Darüber hinaus zeigt die Maus (der Mauszeiger) beim Ziehen über einzelnen Länder zusätzliche Informationen an, biespielsweise die konkreten Zahlen der Verschuldungssituation. Durch einen Klick auf das Land ist es zudem möglich, direkt auf das Länderprofil auf erlassjahr.de weitergeleitet zu werden, um dort einen ganzheitlichen Eindruck über die Verschuldungssituation eines Landes zu erhalten. Die individuelle Kartenauswahl kann zudem direkt als Bild heruntergeladen werden. Dadurch sind die Informationsunterlagen direkt auf die unterschiedliche Vorgaben und Interessenschwerpunkte zugeschnitten.


Der schlussendliche Arbeitsablauf für die Organisation sieht nun wie folgt aus. Anstatt händisch alle Informationen in eine Excel-Tabelle zu übertragen und mit Adobe Indesin eine Karte einzufärben, wird nun in einem Hauptskript das aktuelle Jahr des Schuldenreports bestimmt. Anschließend wird durch zwei Klicks die Excel-Tabelle mit allen vorhandenen Informationen aus dem vorherigen Schuldenreport und der Weltbank automatisch erstellt.


Sobald diese Tabelle manuell ergänzt wurde, genügt ein weiterer Klick im Hauptskript um die verschiedenen Indikatoren und Kategorisierungen automatisch zu berechnen. Sobald alle Daten vollständig sind, kann durch einen letzten Klick die Karte aktualisiert werden. Jeder Arbeitsschritt wird im Skript durch eine ausführliche und deutliche Anleitung begleitet und wurde durch eine Einführung praktisch erläutert.
