# Webhooks

## Dataflows

<details>
<summary>Order Update</summary>

Order update
[
{
"QueueItemId ": 0,
"MontaEorderId ": 0,
"WebshopOrderId ": null,
"Reference ": null,
"Origin ": null,
"InternalWebshopOrderId ": null,
"ConsumerDetails ": null,
"Quarantaine ": false,
"Ordered ": null,
"Received ": "0001-01-01T00:00:00 ",
"Backorder ": false,
"Blocked ": false,
"BlockedMessage ": null,
"UpdateCauseCode ": null,
"Shipped ": false,
"Deleted ": false,
"Queued ": false,
"Picking ": false,
"Returned ": false,
"StatusCode ": null,
"DeliveryStatusId ": null,
"DeliveryStatusDescription ": null,
"ShipperId ": null,
"ShipperCode ": null,
"PlatformShipperCode ": null,
"ShipperDescription ": null,
"TrackAndTraceCode ": null,
"TrackAndTraceLink ": null,
"PartialShipmentParentOrSelfWebshopOrderId ": null,
"PartialShipmentParentOrSelfInternalWebshopOrderId ": null,
"AllPartialShipmentsShipped ": false,
"CreationSystemId ": 0,
"ShippedDateTime ": null,
"EstimatedDeliveryFrom ": null,
"EstimatedDeliveryTo ": null,
"ShipperOptions ": [],
"Lines ": [],
"LinesDeleted ": [],
"LinesDeletedFromSplit ": [],
"Colli ": [],
"Events ": [],
"ImportedFromRelatieSystemConnectionId ": null,
"ParentOrderImportedFromRelatieSystemConnectionId ": null,
"ProductSerials ": []
}
]





</details>

<details>
<summary>Full Stock Update</summary>
</details>

<details>
<summary>Return Received Update</summary>

Return received
[
{
"MontaReturnId ": 0,
"ForecastCode ": null,
"Created ": "0001-01-01T00:00:00 ",
"ReturnedPartialShipmentParentOrSelfWebshopOrderId ": null,
"ReturnedOrderWebshopOrderId ": null,
"ReturnedOrderConsumerDetailsInvoiceDebtorNumber ": null,
"ReturnedOrderReference ": null,
"ReturnedOrderOrdered ": null,
"ReturnedOrderOrigin ": null,
"ReturnedOrderShipperCode ": null,
"MontaCauseId ": null,
"MontaCauseTypeCode ": null,
"MontaCauseDescription ": null,
"CustomerCauseCode ": null,
"CustomerCauseDescription ": null,
"Comment ": null,
"Lines ": []
}
]


</details>

<details>
<summary>Changed Stock update</summary>

Stock update
[
{
"Sku": "",
"Barcodes": [
"",
""
],
"WebshopStock": 0,
"WebshopStockForecasted": 0,
"QuarantaineStock": 0,
"FinancialStock": null,
"Created": "2022-11-14T16:57:30.5269083+01:00",
"ReservedStock": 0,
"StockPicking": null
}
]

</details>

<details>
<summary>Inbound Update</summary>


Inbound update
[
{
"Type ": "Inbound",
"Created ": "0001-01-01T00:00:00",
"InboundGroupReference ": null,
"InboundForecastGroupReference ": null,
"InboundForecastGroupComment ": null,
"InboundForecastGroupId ": null,
"InboundForecastGroupSupplierCode ": null,
"Sku ": null,
"Barcodes ": [],
"BatchName ": null,
"Quantity ": 0,
"Quarantaine ": false,
"InboundForecastComment ": null,
"InboundForecastReference ": null,
"ReturnedEorderWebshopOrderId ": null
}
]

</details>

<details>
<summary>Stock Mutations Update</summary>


Stock mutation
[
{
"Type ": 0,
"Sku ": null,
"Barcodes ": null,
"BatchName ": null,
"Quantity ": 0,
"Quarantaine ": false,
"Created ": "0001-01-01T00:00:00 ",
"Description ": null,
"LogDescription ": null,
"MutationCode ": null,
"WebshopStock ": null
}
]


</details>


[webhook_dataflows.txt](../../../../Attachments/webhook_dataflows-49623922-4fc4-4a5a-977f-0bf6ee39dca4.txt)

##Webhook koppelingen aanmaken
### 1. Zoek de IDs op van de koppeling die je wilt gaan maken
--> Zoek in de database de benodigde type id's op via de volgende query:

SELECT TOP (1000) [ID]
,[Description]
,[PlatformID]
,[DataFlowID]
,[ExecutionInterval]
FROM [Monta_Backend].[dbo].[tblRelatieSystemConnectionTypes]
where platformid = 11


###2. Maak de connections in tblrelatiesystemconnections
--> Vul het relatieid in
<br>
--> Vul het connectiontypeid in
<br>--> Vul true in bij disabled
<br>--> Zoek het aangemaakte ID op

###3. Maak de dataflowsettings aan
--> Zoek de juiste dataflowsettingstabel op en vul daar het in stap 2 aangemaakte id in met de gewenste instellingen.


###4. Maak de platformsettings aan (tblRelatieSystemConnectionPlatformWebhookSettings)
--> Vul het relatiesystemconnectionid van stap 2 in
<br>--> Vul de door de klant aangeleverde URL inclusief eventuele accountgegevens in en vul dit aan met het relatieid

Als het om een orderstatusupdate gaat kan je meerdere statussen instellen <br>door in de tabel "[tblRelatieSystemConnectionDataFlowOrderUpdateStatussesOnly]" meerdere records aan te maken met verschillende planningcodes.
<br>De beschikbare planningcodes zijn te vinden in tblEorderPlanningCode



