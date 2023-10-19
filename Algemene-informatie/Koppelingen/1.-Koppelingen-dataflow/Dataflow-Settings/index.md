# Dataflow Settings

## Product match

- `Import Purchase Price Hidden`:  als je de inkoopprijzen importeert bij import purchase price (voor rapportages), zorgt deze instelling ervoor dat deze onzichtbaar wordt voor Montaportal gebruikers.

- `Overwrite barcodes`: hiermee sta je toe dat barcodes overschreven worden door de koppeling. Dus wanneer je een barcode wijzigt in de webshop, wijzigt deze ook in de Montaportal, met als gevaar dat producten met oude barcodes niet meer verwerkt kunnen worden in het magazijn.

- `Can import product sizes`: hiermee sta je toe dat productafmetingen kunnen worden geïmporteerd vanuit de koppeling. Standaard meten en wegen we nieuwe producten in onze magazijnen.

- `Auto remove first zero in barcodes`: Hiermee worden de 1e voorloopnullen in barcodes automatisch verwijderd.

- `Image Import`: hiermee sta je toe dat de standaard productafbeelding kan worden geïmporteerd vanuit de koppeling. Dit zal o.a. gebruikt worden op de RMA pagina.
Dit is mogelijk bij de volgende koppelingen:
```
Magento
Shopify
WooCommerce
CCVShop
BigCommerce
Exact
LightspeedEcom
MyOnlineStore
Shopware
```

- (Staff functie) `Import product information`: hiermee worden extra productvelden zoals descriptions uitgelezen

- (Staff functie) `Import supplier information`: hiermee worden de suppplier gegevens opgehaald
Dit is mogelijk bij de volgende koppelingen:
```
ExactOnline
```

## Order Import

- `Origin mapping`: de tekst die hier wordt ingevuld moet overeen komt met die origin in Magento/Amazon om alleen orders van die origin te importeren.

- `Do Not import OrderLine Description`: soms geeft een order een orderline description mee aan een materiaal, die gebruiken we in de Montaportal en op de pakbon. Met deze instelling gebruiken we de originele omschrijving van het materiaal.

- `DenyOrderWithUnknownShipperCodes`: Orders met shipperCodes die niet bekend zijn in shipper mapping van klant negeren. Let op : Een lege waarde wordt niet genegeerd, die orders komen dus wel door.

- (Staff functie) `Use Shipping Document As Pro Forma Invoice When Needed`: met deze instelling gebruiken we de pakbon als pro forma invoice wanneer die ontbreekt in de order en nodig is om de order buiten de EU te verzenden, met als risico dat de douane de order terugstuurt. <br>
_Shipping document is used as pro forma because a pro forma is required for this order and only a shipping document is given and the option was given to use the shipping document in this situation_


- (Staff functie) `Do not change Shipper to Cancelled When Deletion Request not possible`: wanneer een order geannuleerd wordt vanuit de webshop maar de order al in de pickstroom zit, zetten we de vervoerder normaal gesproken op "cancelled" zodat de order niet verstuurd kan worden. Met deze instelling doen we dat niet, en versturen we dus alsnog de geannuleerde order.

- (Staff Functie) `Re Use webshop OrderID allowed`: met deze instelling kan een OrderID opnieuw gebruikt worden, dit kan echter alleen bij een FTP-koppeling

- (Staff functie) `UpdateWhenAlreadyExistsAndPlatformSupportsIt`: Hiermee is het mogelijk om wijzigen en annuleringen binnen te halen.

- (Staff functie) `Backorder Handling`: Zie onderstaande tabel voor de mogelijkheden en uitleg wat de mogelijkheden doen. Vul in de database '1' in het kolom.

|Opties|Naam|Uitleg|
| --| --| --|
|0|OrdersShipped|Order volledig uitleveren (Default) - Order blijft in backorder staan tot alle producten op voorraad zijn. Dit is onze default|
|1|AllowSplit|Deellevering toestaan - Versturen wat aanwezig is, de rest in backorder laten staan. Dit heet 'Auto split backorders'|
|2|NoBackOrders|Geen backorders leveren - Versturen wat aanwezig is, de rest annuleren|

Hieronder een overzicht van de platformen die deze functionaliteit wel/niet ondersteunen:

|Platform|Update orders|
| --| --|
|AFAS|Nee|
|Amazon Vendor Central|Ja|
|Amazon|Ja|
|BigCommerce|Ja|
|Bol.com|Ja|
|CCV Shop|Nee|
|Channable|Ja|
|ChannelEngine|Ja|
|Colect|Nee|
|Exact Online|Ja|
|FTP Tabular (CSV / Excel)|Ja|
|FTP XML|Ja|
|Le New Black|Nee|
|Lightspeed eCommerce|Ja|
|Magento 2|Ja|
|ManoMano|Nee|
|Mirakl|Ja|
|MyOnlineStore (Mijnwebwinkel)|Ja|
|Plug&Pay|Ja|
|PrestaShop|Nee|
|Shopify|Ja|
|Shopware|Nee|
|Sylius|Nee|
|WooCommerce|Nee|

- `tblRelatieSystemConnectionDataFlowOrderImportSettingsShippers`: Tabel voor het mappen van shippers voor de order import. Hier kun je per relatiesystemconnection een shipper naam vanuit het platform mappen met een shipper vanuit Monta. Je kunt  ook een esetting kan toevoegen aan deze mapping. Wanneer je dit doet zal hij het kanaal wijzigen op basis van de gekozen shipper.

## Order Update

- `Esetting`: alleen van orders van dit kanaal wordt de status teruggekoppeld naar de webshop.
- `AllowMultipleShippedOrderUpdates`: Als deze setting op 'true' staat zorgt deze ervoor dat dubbele order updates met de status 304(shipped) toegestaan zijn. Deze staat standaard uit.
- `Order update statusses only: (FTP)`

## Stock update

- `Exclude stock in transit`: met deze instelling worden producten die al wel in het magazijn liggen maar nog niet in een stelling zijn gelegd niet meegenomen in de webshopvoorraad. <br>
<details closed>
<summary><small>Klik hier voor uitgebreide uitleg:</small></summary>
Voorraad die nog niet bij ons in de stellingen is gelegd ligt kan bij ons
op een zogenaamde transitlocatie liggen. Deze voorraad is standaard wel al beschikbaar in
de webshop, aangezien deze binnen enkele uren wel in de stellingen komt te liggen om
gepickt te kunnen worden. Je kunt er ook voor kiezen deze voorraad niet beschikbaar te
maken in de webshop, aangezien het gevaar bestaat dat de order te laat komt wanneer de
voorraad niet op tijd in de stellingen komt te liggen.
</details>

<br>

- `Update split product stock`: bij bundels sturen we normaal gesproken de voorraadstand van het aantal bundels dat gemaakt kan worden met de producten in de bundels. Zet je deze instelling uit dan sturen we een voorraadstand van 0. Bundels kunnen hier worden ingesteld: https://www.montaportal.nl/ProductRules/ProductRules?page=0

- `DoNotSubtractStockReserverationsForOrdersOfConfiguredEsettingsIDs`: voor meerdere esettings iets niet uitvoeren ;). Weet niet precies wat de instelling nu inhoudt, maar eerst kon het alleen maar voor 1 esetting, nu voor meerdere. Dat kan dan door één of meerdere esettings in te vullen in kolom EsettingsIds. De kolom esettingsId nu niet meer gebruiken.

- `StockType`: Kies het type voorraad die je wilt importeren. Je kunt kiezen uit "Financiele voorraad" en "Beschikbare voorraad". Dit is aan te passen vanuit het Monta portal bij de koppelingdetails onder 'Instellingen > Configureer voorraadtype'.

## Inbound update
- `WaitUntilInboundForecastGroupApproved`: De inbounds worden pas doorgegeven als alle inbounds van de inboundforecastgroup op approved zijn gezet.
- `WaitUntilInboundForecastApproved` : Een inbound wordt pas doorgegeven als de inboundforecast daarvan op approved is gezet.

## Purchase order export
De Purchase order export dataflow heeft zelf momenteel geen settings tabel.
Echter, de product match heeft wel twee settings die benodigd zijn voor de purchase order export:

- (Staff functie) `Import product information`

- (Staff functie) `Import supplier information`

De purchase order export is afhankelijk van de External supplier ID
