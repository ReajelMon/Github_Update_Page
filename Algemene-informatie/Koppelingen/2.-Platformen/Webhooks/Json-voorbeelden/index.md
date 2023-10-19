# Json voorbeelden

## Stock update

[
{
"Sku": "", <br>
"Barcodes": [
"", <br>
""
], <br>
"WebshopStock": 0, <br>
"WebshopStockForecasted": 0, <br>
"QuarantaineStock": 0, <br>
"FinancialStock": null, <br>
"Created": "2022-11-14T16:57:30.5269083+01:00", <br>
"ReservedStock": 0, <br>
"StockPicking": null
}
]

##Inbound update
[
{
"Type ": "Inbound", <br>
"Created ": "0001-01-01T00:00:00", <br>
"InboundGroupReference ": null, <br>
"InboundForecastGroupReference ": null, <br>
"InboundForecastGroupComment ": null, <br>
"InboundForecastGroupId ": null, <br>
"InboundForecastGroupSupplierCode ": null, <br>
"Sku ": null, <br>
"Barcodes ": [], <br>
"BatchName ": null, <br>
"Quantity ": 0, <br>
"Quarantaine ": false, <br>
"InboundForecastComment ": null, <br>
"InboundForecastReference ": null, <br>
"ReturnedEorderWebshopOrderId ": null
}
]


##Order update
[
{
"QueueItemId ": 0, <br>
"MontaEorderId ": 0, <br>
"WebshopOrderId ": null, <br>
"Reference ": null, <br>
"Origin ": null, <br>
"InternalWebshopOrderId ": null, <br>
"ConsumerDetails ": null, <br>
"Quarantaine ": false, <br>
"Ordered ": null, <br>
"Received ": "0001-01-01T00:00:00 ", <br>
"Backorder ": false, <br>
"Blocked ": false, <br>
"BlockedMessage ": null, <br>
"UpdateCauseCode ": null, <br>
"Shipped ": false, <br>
"Deleted ": false, <br>
"Queued ": false, <br>
"Picking ": false, <br>
"Returned ": false, <br>
"StatusCode ": null, <br>
"DeliveryStatusId ": null, <br>
"DeliveryStatusDescription ": null, <br>
"ShipperId ": null, <br>
"ShipperCode ": null, <br>
"PlatformShipperCode ": null, <br>
"ShipperDescription ": null, <br>
"TrackAndTraceCode ": null, <br>
"TrackAndTraceLink ": null, <br>
"PartialShipmentParentOrSelfWebshopOrderId ": null, <br>
"PartialShipmentParentOrSelfInternalWebshopOrderId ": null, <br>
"AllPartialShipmentsShipped ": false, <br>
"CreationSystemId ": 0, <br>
"ShippedDateTime ": null, <br>
"EstimatedDeliveryFrom ": null, <br>
"EstimatedDeliveryTo ": null, <br>
"ShipperOptions ": [], <br>
"Lines ": [], <br>
"LinesDeleted ": [], <br>
"LinesDeletedFromSplit ": [], <br>
"Colli ": [], <br>
"Events ": [], <br>
"ImportedFromRelatieSystemConnectionId ": null, <br>
"ParentOrderImportedFromRelatieSystemConnectionId ": null, <br>
"ProductSerials ": []
}
]

##Stock mutation
[
{
"Type ": 0, <br>
"Sku ": null, <br>
"Barcodes ": null, <br>
"BatchName ": null, <br>
"Quantity ": 0, <br>
"Quarantaine ": false, <br>
"Created ": "0001-01-01T00:00:00 ", <br>
"Description ": null, <br>
"LogDescription ": null, <br>
"MutationCode ": null, <br>
"WebshopStock ": null
}
]

##Return received
[
{
"MontaReturnId ": 0, <br>
"ForecastCode ": null, <br>
"Created ": "0001-01-01T00:00:00 ", <br>
"ReturnedPartialShipmentParentOrSelfWebshopOrderId ": null, <br>
"ReturnedOrderWebshopOrderId ": null, <br>
"ReturnedOrderConsumerDetailsInvoiceDebtorNumber ": null, <br>
"ReturnedOrderReference ": null, <br>
"ReturnedOrderOrdered ": null, <br>
"ReturnedOrderOrigin ": null, <br>
"ReturnedOrderShipperCode ": null, <br>
"MontaCauseId ": null, <br>
"MontaCauseTypeCode ": null, <br>
"MontaCauseDescription ": null, <br>
"CustomerCauseCode ": null, <br>
"CustomerCauseDescription ": null, <br>
"Comment ": null, <br>
"Lines ": []
}
]


