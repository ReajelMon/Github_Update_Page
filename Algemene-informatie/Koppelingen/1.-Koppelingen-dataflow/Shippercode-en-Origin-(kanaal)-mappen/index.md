# Shippercode en Origin (kanaal) mappen

## Verzendcode mappen:
Bij de meeste koppelingen importeren wij de verzender code vanuit de webshop mee. Het is mogelijk om op basis van de verzendercode die Monta importeert een actie te ondernemen.

### 1. Verzender aanpassen:

We kunnen op basis van de verzendercode die Monta® importeert de gewenste verzender binnen de order plaatsen. Zo kunnen we dus de code koppelen aan één bepaalde verzender.

LET OP! Alles vanaf haakje openen ( wordt genegeerd door onze koppelingen, dit om meerdere vergelijkbare codes gemakkelijk aan 1 vervoerder te kunnen koppelen.

Dit kan worden ingesteld in de backend van Monta in de tabel: `tblRelatieSystemConnectionDataFlowOrderImportSettingsShippers`

#### 1.1   VerzenderOptie toevoegen
Het is mogelijk om aan de bovenstaande mapping ook een verzender optie toe te voegen. Een voorbeeld hiervan kan zijn "PostNL Avondlevering"

Dit kan worden ingesteld in de backend van Monta in de tabel `tblRelatieSystemConnectionDataFlowOrderImportSettingsShipperOptions`.

### 2. Kanaal aanpassen
Het is ook mogelijk om op basis van de verzendcode in de order een kanaal te selecteren. De order wordt dan op een andere esetting geplaatst dan de standaard.


_(Usercase: Dit kan bijvoorbeeld interessant zijn bij Afhaalorders. Door de verzendcode afhalen te mappen naar een kanaal die automatisch op verzonden komt te staan zal monta deze order niet versturen, maar kan de order wel via de RMA worden aangemeld)_


Dit kan worden ingesteld in de backend van Monta in de tabel: `tblRelatieSystemConnectionDataFlowOrderImportSettingsShippers`



## Origin (kanaal) mappen
Bij sommige koppelingen importeert monta een origin mee. De origin (Ook wel kanaal genoemd) is de bron van de bestelling. Verschillende origines maken het mogelijk
verschillende instellingen zoals lay-out pakbon engewenste verladers.

### 1. Kanaal aanpassen
Op basis van de gevulde waardes origin kan je de order op een ander kanaal laten binnenkomen dan de standaard.


Dit kan worden ingesteld in de backend van Monta in de tabel:
`tblRelatieSystemConnectionDataFlowOrderImportSettingsOrigins`

Je kan binnen 1 koppeling meerdere mappings hebben naar verschillende origins.

_(Usercase: Bij magento kan je op 1 backend meerdere voorkanten hebben. Bijvoorbeeld bij meerdere talen. Je wilt deze talen op verschillende kanalen binnen monta laten binnenkomen omdat je dan met de pakbonnen en emails hier rekening mee kan houden)_

Standaard importeert monta in de default esetting. Als hij een match vindt in bovenstaande tabel, dan zal hij de order in een andere esetting importeren.
Het is ook in te stellen dat wanneer er geen overeenkomende mapping is, dat hij de order niet importeert. Dit is te doen door de default esetting te verwijderen in de volgende tabel":
`tblRelatieSystemConnectionDataFlowOrderImportSettings`
