# Uitzendkracht aanmelden

Monta heeft een online portal waar uitzendbureaus de gegevens van uitzendkrachten kunnen doorgeven. Dit heeft als doel dat de uitzendkracht vrijwel direct aan de slag kan bij Monta, zonder dat eerst nog administratieve zaken ingevuld moeten worden. En daarnaast voorkomt dit het e-mailen van persoonsgegevens, wat door de AVG wetgeving eigenlijk niet meer de bedoeling is.

Onderstaand wordt meer uitgelegd over de werking van het uitzendkracht aanmeld systeem.


## Uitzendkrachtaanmelden.monta.nl
Via [uitzendkrachtaanmelden.monta.nl](https://uitzendkrachtaanmelden.monta.nl/) kan een uitzendbureau gegevens van nieuwe uitzendkrachten vast invullen en de gedragscode laten ondertekenen. Dit is erop gericht dat de uitzendkracht met zo min mogelijk administratieve handelingen in de monta vestiging aan het werk kan, omdat de administratieve zaken al vooraf zijn ingevuld.

Uitzendbureaus die nog geen toegang hebben tot [uitzendkrachtaanmelden.monta.nl](https://uitzendkrachtaanmelden.monta.nl/) kunnen die toegang aanvragen via [techniek@monta.nl](mailto:techniek@monta.nl).
Onderstaand een korte uitleg over de werking van [uitzendkrachtaanmelden.monta.nl](https://uitzendkrachtaanmelden.monta.nl/)

::: video
<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.loom.com/embed/7ca376121a804516a495bb737c531597" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>
:::


## Uitzendkracht gegevens overnemen in montamoney

Wanneer een uitzendbureau de gegevens van een uitzendkracht heeft ingevuld in [uitzendkrachtaanmelden.monta.nl](https://uitzendkrachtaanmelden.monta.nl/), zijn deze gegevens beschikbaar om over te nemen in montamoney. Omdat de meeste gegevens al vooraf ingevuld zijn, is het een stuk minder werk in montamoney, zodat de uitzendkracht zo snel mogelijk een badge heeft en kan starten.

Voor vestigingen waar een uitzendburo intern zit, is er sinds eind oktober 2022 de mogelijkheid dat het uitzendburo al in https://uitzendkrachtaanmelden.monta.nl een badge toekent aan de uitzendkracht, zodat de uitzendkracht sneller aan het werk kan. Wat waarschijnlijk voor de uitzendkracht een prettiger ervaring is en werk scheelt voor de leidinggevende bij Monta.

::: video
<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.loom.com/embed/7213b432fac845b7beb4df1de781828f" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>
:::




********** De informatie hieronder is meer van technische aard **********

![Afdeling - IT - man.png](../../../Attachments/Afdeling%20-%20IT%20-%20man-c6f3a96e-0f99-4c12-a056-0044eca0df99.png)

## Website

De website https://uitzendkrachtaanmelden.monta.nl/ draait op webserver mp-web04

De code is te vinden in project 'EmployementAgencyPortal' op DevOps. De volgende url verwijst naar het project: https://dev.azure.com/MontaDevelopment/Montapacking/_git/EmploymentAgencyPortal

## database

De uitzendkrachtgegevens en de gedragsovereenkomst worden opgeslagen in een aparte database op server MP-SQL06\MSSQL De naam van de database is EmploymentAgency. Het idee hierachter is dat user …..  van de website uitzendkrachtaanmelden.montapacking.nl de enige user is die van buitenaf bij deze database hoeft te komen

## montamoney

Wanneer een uitzendkracht is aangemeld door het uitzendbureau, verschijnt de uitzendkracht in montamoney in beeld bij de leidinggevende (in het medewerker zoek scherm), die de uitzendkracht dan kan worden toegevoegd in montamoney. De gegevens komen dan terecht in de reguliere database en het record uit MP-SQL06\MSSQL\EmploymentAgency wordt gewist, zodat persoonsgegevens van de medewerker niet langer dan nodig zijn in de aanmeld database blijven bestaan.
