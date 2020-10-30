CorrelAid konnte dem Team des Weltladen Dachverbands helfen, indem die manuelle und somit fehleranfällige und sehr zeitaufwendige Erstellung von individualisierten Berichten automatisiert wurde. Hierzu wurden die frei zugängliche Statistik-Software R sowie implizit das Textsatzsystem Latex zum Erstellen von Tabellen innerhalb der Berichte verwendet.

Im Zuge des Projekts wurden außerdem Vorschläge zur Optimierung der Fragebögen entwickelt und umgesetzt. 


Um eine langfristige Wirkung des Projekts sicherzustellen, wurde darauf geachtet, das Team des Dachverbands dazu zu befähigen, die Analyse zukünftig selbst auszuführen. 
Die von CorrelAid entwickelten Skripte wurden hierzu ausführlich und persönlich mit Mitarbeiter:innen des Dachverbands besprochen und deren Durchführung umfangreich getestet. Außerdem wurde der Code sinnvoll kommentiert. Für Nachfragen stand das Projektteam außerdem zusätzlich zur Verfügung, worauf der Weltladen Dachverband auch wiederholt zurück gegriffen hat. Die Durchführung auf der lokalen Maschine der Mitarbeiter:innen läuft mittlerweile reibungslos.


### Technischer Lösungsansatz
Die Daten wurden mit R eingelesen und aufbereitet (Datenqualitätskontrolle, Aggregation, Erstellen neuer Variablen). Dabei wurden deskriptive Auswertungen für alle Läden sowie für die individuellen Läden und ihre jeweilige Peergroup durchgeführt. Die Ergebnisse wurden für die individualisierten Berichte benötigt, welche wiederum mit Rmarkdown generiert wurden. Tabellen in den Berichten wurden mit dem R-Paket kableExtra erstellt, die Grafiken mittels ggplot2. Der gesamte Prozess kann nun für alle für alle teilnehmenden Weltläden angestoßen werden und läuft dann automatisch durch.
