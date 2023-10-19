# Urenregistratie

## Uren verwerken in gomonta
Na jaren van trouwe dienst wordt montamoney qua urenverwerking vervangen door gomonta. Zodat gebruikers die alleen nog voor uren verwerken naar de werkplek moeten, dit ook lokaal kunnen doen. Het omzetten naar gomonta zal geleidelijk gebeuren. We vinden het fijn als je al zoveel mogelijk gomonta gebruikt voor uren goedkeuren, maar montamoney blijft ook nog een tijdje beschikbaar voor als je in gomonta tegen issues aan loopt.


sneak preview van uren goedkeur scherm in gomonta:
![uren verwerken gomonta met activiteiten verdeling geanonimiseerd.png](../../../Attachments/uren%20verwerken%20gomonta%20met%20activiteiten%20verdeling%20geanonimiseerd-adbc2ed7-04fb-438b-b3fe-93cc60a7cabc.png)
Het volgende scherm waar aan geprogrammeerd wordt om over te zetten naar gomonta is het medewerker detail scherm uit montamoney.

## Uren in bulk goedkeuren
Wanneer het uren verwerken in gomonta gebruikt wordt, is er de optie om uren in bulk goed te keuren. Zeker bij leidinggevenden die voor veel collega's de uren verwerken, kan dit een voordeel zijn. Wanneer de geklokte uren (afgerond op kwartieren) overeenkomen met het aantal uren in de personeelsplanning en als de activiteiten overeenkomen met de gekozen afdeling in de personeelsplanning, wordt de uren regel groen en kan er in bulk goedgekeurd worden.
![personeelsplanning afdeling.JPG](../../../Attachments/personeelsplanning%20afdeling-9b900c31-3938-4cf5-a218-92086a0db041.JPG)

In bovenstaand voorbeeld zou een uren regel in bulk mogen worden goedgekeurd als het aantal geklokte uren 8 is en de activiteiten vallen onder outbound (Picken, Sorteren of Echecken).

![personeelsplanning uren bulk.png](../../../Attachments/personeelsplanning%20uren%20bulk-6096ec4e-e785-4073-bb89-39ee0a8ddb60.png)

In bovenstaand voorbeeld zijn de activiteiten allemaal outbound activiteiten en komt het aantal gewerkte uren overeen met het aantal geplande uren (2), waardoor de urenregel groen wordt en in bulk kan worden goedgekeurd.

Een goede werkwijze bij uren verwerken zou kunnen zijn om eerst de regels te verwerken die niet groen zijn, vervolgens de groene regels waar je aanpassingen aan zou willen doen. Het restant groene uren regels dat dan overblijft is hetgene dat in bulk goedgekeurd kan worden.

## Verdeling van activiteiten bij uren verwerken.
Vanuit een aantal vestigingen is de wens gekomen om het productiviteits cijfer dat we binnen monta gebruiken (totaal aantal outbound regels gedeeld door totaal aantal uren) meer te specificeren. Er werd aangegeven dat het onderverdelen van dit productiviteits cijfer in de verschillende activiteiten zoals inbound, retouren, echeck etc wenselijk is.
Het is een zoektocht geweest hoe dit mogelijk is, zonder dat het enorm veel extra administratief werk vraagt van de uren verwerker of veel extra urenklok handelingen van de medewerker. We denken nu een manier te hebben gevonden waarbij het administratieve werk zo minimaal mogelijk blijft en er toch op termijn het inzicht in de verdeling over de verschillende activiteiten gemaakt kan worden. Het streven is om dit verdelen van de uren over verschillende activiteiten in te laten gaan op 1 januari 2023, zodat de informatie gelijk van een heel kalenderjaar beschikbaar is.

![activiteiten verdeling percentages.png](../../../Attachments/activiteiten%20verdeling%20percentages-7694f32f-6695-434a-9692-77d01ac13423.png)

In dit voorbeeld is een activiteiten verdeling te zien van 40% inbound en 60% retouren. Dit wordt berekend door de werkdag op te knippen in stukjes van 5 minuten. En dan per stukje van 5 minuten te kijken welk type scans er gedaan is. In dit voorbeeld is de 40% inbound gebaseerd op 28 metingen (tijdvakjes van 5 minuten) en is de 60% retouren gebaseerd op 42 metingen (tijdvakjes van 5 minuten).

De reden dat dit kleine getal met aantal metingen erbij wordt weergegeven is dat je dan kunt zien als een percentage op heel weinig metingen gebaseerd is dat je het wellicht wilt aanpassen.
Als voorbeeld, stel je hebt een medewerker die vrachtwagens lost en de inbound expeditie netjes houdt. Dat zijn werkzaamheden die niet in het systeem te meten zijn, omdat er geen scans zijn. Die uren zou je normaliter op 100% 'Corvee & Intern transport' willen zetten. Maar stel dat deze medewerker 1 inbound scan gedaan heeft om wat voor reden dan ook, dan zal het systeem de suggestie geven dat deze medewerker 100% inbound gedaan heeft, maar omdat er een klein getalletje 1 onder staat, kun je zien dat dit maar op 1 meting gebaseerd is en kun je ervoor kiezen om ook een percentage bij 'Corvee & Intern transport' in te vullen.

Bij medewerkers die als afdeling 'IT, TD, Commercieel & Admin' of 'Kantoor en projectmanagement' hebben staan, zal standaard 100% worden ingevuld bij 'Kantoor'

Het systeem dat de percentages suggereert zal in de loop van de tijd steeds beter worden, zodat in de loop van de tijd het handmatige werk dat je er aan hebt bij uren verwerken steeds minder wordt.





**

**

**

**

********** De informatie hieronder is meer van technische aard **********

![Afdeling - IT - man.png](../../../Attachments/Afdeling%20-%20IT%20-%20man-c6f3a96e-0f99-4c12-a056-0044eca0df99.png)
## Technische informatie bij de verdeling van activiteiten


## R-scripts activiteiten verdeling
De scripts heten personal_scans, personal_picks_raw en personal_echecks_raw. Deze scripts draaien via de ScheduleR op de mp-proc02


## Tabel en stored procedure activiteiten verdeling monta_ai
De tabel die gevuld wordt met de activiteiten verdeling heet tblScanActionsPerUser in de monta_ai database op de mp-sql06. De stored procedure die gebruikt kan worden om de percentages activiteiten over een tijdsperiode per medewerker te laten zien heet getUserActivityForTimeRange en is ook te vinden in de monta_ai database op de mp-sql06

## Tabel waarin de uiteindelijke activiteitenverdeling in wordt opgeslagen.
de tabel tblUrenregistratieActiviteiten in de monta_backend bevat de activiteitenverdeling na het uren verwerken. Via deze tabel kunnen dan toekomstige power bi rapporten gemaakt worden om het productiviteitsgetal onder te verdelen in de verschillende activiteiten.

