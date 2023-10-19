# XML over FTP

Het is mogelijk om bij monta data via XML over FTP uit te wisselen. Monta heeft een standaard koppeling om deze data uit te wisselen. De bestanden kunnen op de server van de klant, of op de server van Monta worden geplaatst.

Monta heeft een vast format voor de XML bestanden. Als de klant een eigen format heeft, kunnen aan de klant van Monta XSLT bestanden ingesteld worden om het format van de klant te vertalen naar het Monta format en andersom.


## Onderdelen koppeling

De koppeling van Monta heeft een aantal standaard dataflows:

- Import product information from XML or Excel files from FTP (Product import)
- Import orders from XML or Excel files from FTP (Order import)
- Order status update XML to FTP (order update)
- XML with stock of all products to FTP (Full stockupdate)
- XML with stock of products with changed stock to FTP (Changed stock update)
- Import inbound forecasts from XML or Excel files from FTP (Vooraanmeldingen)
- Import inbound updates from XML or Excel from FTP (Terugkoppeling vooraanmeldingen)
- Return Received updates (Terugkoppeling retour)

## Beschikbare data binnen dataflows

Per dataflow kan bepaalde data worden uitgewisseld. Hieronder is per dataflow aangegeven welke data er kan worden uitgewisseld.

## Product Import

|Column type|Supported  |
|--|--|
|Products  | Product |
|  Sku| Sku |
|Barcodes  | Barcode |
| Supplier code | SupplierCode  |
| Delete | Delete  |
[ProductInformationImport.xml](../../../../../Attachments/ProductInformationImport-5c02d657-9437-46b9-8476-561937a706bf.xml)

*Klant plaatst op server
<br>

## Order Import

*Klant plaatst op server

[Order.xml](../../../../../Attachments/Order-89e5ebb6-3b39-4d7b-a27d-a454d6895374.xml)

Met de instelling UpdateWhenAlreadyExistsAndPlatformSupportsIt kunnen we orderwijzigingen en annuleringen importeren.

### Verzenderkeuze importeren

In AllowedShipperCodes in de XML kan de klant één of meer codes aangeven waarmee de order verzonden mag worden. Deze codes moeten gemapt worden in de order import instellingen.

## Order Update

[OrdersUpdated.xml](../../../../../Attachments/OrdersUpdated-4c675b95-e0f1-4d4c-8b99-eaff920d1ab7.xml)

## Order Full Stock

[StockUpdates_FullStock_Voorbeeld.xml](../../../../../Attachments/StockUpdates_FullStock_Voorbeeld-7216d106-d0ea-468f-b9d2-53a180387d33.xml)

## Changed Stock

[DD_SM20221116115032571.xml](../../../../../Attachments/DD_SM20221116115032571-d08bf0ee-5b86-4e6a-a6b9-3ab54f9af8ea.xml)

## Inbound forecasts
*Klant plaatst op server

[InboundsForecast.xml](../../../../../Attachments/InboundsForecast-b67d7286-af91-4853-b795-ebdd7c992edc.xml)

## Inbound updates

[InboundsUpdated.xml](../../../../../Attachments/InboundsUpdated-2eee5a55-4075-49e5-b4cb-716718cdca5e.xml)

## Return Received Updates

[ReturnReceived_Example.xml](../../../../../Attachments/ReturnReceived_Example-92a47fe0-676e-45dc-b44b-a8a4a672fa78.xml)
