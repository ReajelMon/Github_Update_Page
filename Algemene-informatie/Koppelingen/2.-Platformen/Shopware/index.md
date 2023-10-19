# Shopware

## Dataflows
- Order Import
- Order Update
- Full Stock Update
- Changed Stock Update
- Product Match (Incl. Product import)
- Changed Product Match (Letop: Dit onderdeel wordt niet standaard toegevoegd aan de koppeling)


Deze koppeling beschikt over dataflow instellingen. Meer informatie hierover is te vinden via [Dataflow instellingen](../../../../Algemene-informatie/Koppelingen/1.-Koppelingen-dataflow/Dataflow-Settings)

<br>

### Route van de Order:
Monta haalt alle orders binnen met de betaal-status `Paid` en `Authorized` en order-status `Open`. Zodra monta de order heeft geimporteerd zullen we de status wijzigen naar `Inprogress`. De orders zullen worden verstuurd voor Monta. In de orderupdate van Shopware zetten we de "delivery status" op "shipped". Daarnaast zetten we de order-status op "completed". Dit laatste is ook uit zetten door deze instelling op false te zetten.

<br>

### Instellingen
`SetOrderToCompleted` = Standaard zetten we de order-status op "completed". Dit is ook uit zetten door deze instelling op false te zetten.

<br>

### Installatie:

Navigeer in je Shopware admin omgeving naar Instellingen > Integraties > Kies voor "integratie aanmaken"

![MicrosoftTeams-image (12).png](../../../../Attachments/MicrosoftTeams-image%20(12)-5755c39a-c04a-4e42-bbef-b154a86a76a9.png)

Vul een herkenbare naam in en selecteer bij rollen "content" (let op: laat het vinkje "beheerder" uit staan!)

![MicrosoftTeams-image (13).png](../../../../Attachments/MicrosoftTeams-image%20(13)-2e727f48-bf5e-4ffa-b84f-191f3ad72500.png)

Koppieer de gegenereerde toegangs-id en veiligheidssleutel en gebruik deze voor de installatie op de Montaportal.
