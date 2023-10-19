# Zalando

## Algemene toelichting

Monta heeft geen directe koppeling met Zalando. Wel is het mogelijk om te koppelen met zalando via bepaalde andere platformen. Omdat zalando veeleisend is in de manier waarop de pakketten worden verstuurd is er wat additionele inrichting nodig, voordat er met zalando mag worden verstuurd.

### Het volgende is nodig:
- Pakbonnen in specifieke Zalando lay-out; In de taal van het betreffende land.
- Retour label in de doos.

Het uitwisselen van de data (orders importeren, track&trace terugsturen etc.) kan door Zalando aan te sluiten op de webshop met bijv. Channable; Shopify; Magento en ChannelEngine.

Bijzondere velden die we nodig hebben in de koppeling: <br>

- `ItemInvoicePrice / TotalRowInvoiceValue`: Deze invoice data hebben we nodig op de pakbon. <br>
- `RetourTT`: De retour Track& Trace moet worden teruggekoppeld bij de orderupdate na het verzenden.


<br>


## Data:
Zalando vereist op de pakbon bepaalde data die Monta niet altijd standaard importeert. De manier waarop we deze data kunnen importeren kan verschillen per koppeling. Hieronder is een overzicht te vinden van de data die we nodig hebben voor zalando, en in welk veld bij Monta we deze data importeren.

- `Klantennummer`: Dit is het klantnummer van Zalando.
- `Bestelnummer` : Dit moet worden gevuld met het bestelnummer van Zalando.
- `Artikelnummer` = Dit moet worden gevuld met de productcode (artikelnummer) van Zalando. <br>

|Data| Channelengine | Shopify | Magento |Its Perfect|
|--|--|--|--|--|
| Zalando Klantennummer  | CustomerNumber| CustomerNumber|CustomerNumber|CustomerNumber|
| Zalando Bestelnummer | WebshopOrderID | Order Nr. | Reference |Reference|
| Zalando Artikelnummer | Orderline Reference (Note?) | Supplier Product Code | SupplierProductCode |Supplier Porudct code |
| Order Date  | OrderDate | OrderDate | OrderDate | OrderDate |




<br>

### Pakbon templates:

Letop: De pakbonnen moeten aangepast worden naar de juiste data, zie hierboven.

[Pakbon_Zalando_AT.docx](../../../../Attachments/Pakbon_Zalando_AT-d7140a44-74fa-44ad-9a1a-83f3b59d0a9b.docx)

[Pakbon_Zalando_BE_NL.docx](../../../../Attachments/Pakbon_Zalando_BE_NL-312db104-f104-4016-a92d-2b404481c105.docx)

[Pakbon_Zalando_BE_FR.docx](../../../../Attachments/Pakbon_Zalando_BE_FR-db23e6f7-e669-4452-8327-0b1bf7d589ff.docx)

[Pakbon_Zalando_DE.docx](../../../../Attachments/Pakbon_Zalando_DE-d7b06050-737a-4a26-bb69-5042e2db3d93.docx)

[Pakbon_Zalando_NL.docx](../../../../Attachments/Pakbon_Zalando_NL-e3fcd0e1-7cf7-4477-b79d-2f4691046779.docx)

[Zalando pakbonnen per land.zip](../../../../Attachments/Zalando%20pakbonnen%20per%20land-83e868db-dd18-4376-a918-9ea592acf984.zip)
