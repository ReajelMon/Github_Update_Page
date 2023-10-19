# 3. Product

## Product


| Field | Validation| Description |
|--|--|--|
| Sku	|Text, required, unique	|The SKU of the product, a unique identifier to be chosen by the client|
|Description|	Text, required	|Description of the product|
|Barcodes|	Text array, required	|The barcodes of the product, only two are supported at the moment. Must be at least one when creating a new product.|
|WeightGrammes|	Number, read only|	The weight of de product in grams|
|LengthMm|	Number, read only|	The length (longest side) of the packaged product in millimeters|
|WidthMm|	Number, read only|	The width of the packaged product in millimeters |
|HeightMm|	Number, read only|	The height (shortest side) of the packaged product in millimeters|
|Stock|	Stock, read only. Not returned when empty|	The different types of stock for a product, see Stock for more info.|
|ImageUrl|	Text, post/put only|	Url of the location of the image to download|
|SupplierCode|	Text, optional, unique|	Code of the Supplier. It has to be an existing Supplier.|
|PurchasePrice|	Number, put only|	The price of purchase.|
|SellingPrice|	Number, put only|	The selling price of the product.|
|PurchasePriceHidden|	Number, put only|	The price of purchase. Not visible on MontaPortal
|Food|	Boolean, put only	|Property to set the item as a ‘food’ item. |
|MinimumExpiryPeriodInbound|	Number, put only|	Minimum number of days between inbound and expiry date. (If the number of days between inbound and expiry date is below this minimum, the inbound can be rejected)|
|MinimumExpiryPeriodOutbound|	Number, put only|	Minimum number of days between outbound order picking and expiry date. (If the number of days between outbound order picking and expiry date is below this minimum, the products will not be picked)|
|Cool|	Boolean, optional, put only|	Products marked ‘cool’ shall be placed in cooling cells to keep it as fresh as possible.
|Note|	Text, optional|	The note field can be used as a extra description field for a product. It is also possible to use this field on your packing list. Maximum: 2056 carachters.|
|PurchaseStepQty|	Number, optional, read only|	Indicates the quantity of the product that can be fitted in a single container/box/etc.|
|RegisterSerialNumber|	Boolean, optional|	This option will enforce the registration of serial numbers in the outbound process for B2C orders.
|RegisterSerialNumberB2B|	Boolean, optional|	This option will enforce the registration of serial numbers in the outbound process for B2B orders.|

### Stock

|Field|	Validation|	Description|
|--|--|--|
|StockInboundForecasted|	Number, read only. Not returned when empty|	Stock that is in forecast but not yet received.|
|StockQuarantaine|	Number, read only. Not returned when empty|	Stock returned from orders that has been damaged or became unsellable|
|StockAll|	Number, read only. Not returned when empty|	All stock in warehouse excluding quarantaine|
|StockBlocked|	Number, read only. Not returned when empty|	Stock on blocked locations|
|StockInTransit|	Number, read only. Not returned when empty|	Stock that is received but not yet placed in warehouse|
|StockReserved|	Number, read only. Not returned when empty|	Stock that has been reserved by order reservations |
|StockInboundHistory|	Number, read only. Not returned when empty|	All stock that has been received ever, excluding stock received from returns|
|StockAvailable|	Number, read only. Not returned when empty|	All stock on pickable locations. You may want to include StockInTransit here.|
|StockSplitProduct|	Number, read only. Not returned when empty or parameter ‘includeSplitStock’ not set|	All stock in split products. This is the sum of all underlying split products(the child products)|
|StockWholeSaler|	Number, read only. Not returned when empty|	All stock availeble at wholesaler(s)|
|PerWarehouse|	List of objects|	Stock per warehouse. Only warehouses with stock are in the list. |

### GET /rest/v5/product/{sku}

To retrieve details of a product by sku.
Provide SKU in query parameters if it contains a slash, e.g. /product/?sku=2334345

#### Example
`GET https://api.montapacking.nl/rest/v5/product/2334345 HTTP/1.1
Host: api.montapacking.nl
Authorization:
`

Response:

`HTTP/1.1 200 OK
{
"Sku":"2334345",
"Description":"Grote Beker",
"Barcodes":["AHKS81"],
"WeightGrammes":60,
"LengthMm":50,
"WidthMm":50,
"HeightMm":15,
"SupplierCode":null,
“Food”:false,
“Cool”:false,
“Note”:”Test note”,
“PurchaseStepQty”:12
}
`
### GET /rest/v5/product?barcode={barcode}
To retrieve details of a product by barcode.

#### Example
`GET https://api.montapacking.nl/rest/v5/product?barcode=AHKS81 HTTP/1.1
Host: api.montapacking.nl
Authorization:
`

Response:

`HTTP/1.1 200 OK
{
"Sku":"2334345",
"Description":"Grote Beker",
"Barcodes":["AHKS81"],
"WeightGrammes":60,
"LengthMm":50,
"WidthMm":50,
"HeightMm":15,
"SupplierCode":null,
“Food”:false,
“Cool”:false,
“Note”:null,
“PurchaseStepQty”:null
}
`
### GET /rest/v5/products?page={number}
To retrieve details of al products
Provide page in query parameters to go to next page , e.g. /products?page=1

#### Example
`GET https://api.montapacking.nl/rest/v5/products HTTP/1.1
Host: api.montapacking.nl
Authorization:
`

Response:

`HTTP/1.1 200 OK
{
"Products":[
{
"Product":{
"Sku":"0000142",
"Description":"BENNETT - Dirty Grey Stripe - S",
"Barcodes":[
"3105031201611"
],
"WeightGrammes":null,
"LengthMm":1,
"WidthMm":1,
"HeightMm":1,
"Stock":{
"StockInboundForecasted":1,
"StockQuarantaine":0,
"StockAll":0,
"StockBlocked":0,
"StockInTransit":0,
"StockReserved":0,
"StockAvailable":0,
"StockWholeSaler":0,
"Batches": [
{
“Reference”: “batch-01”,
"Quantity": 1,
"BestBeforeDate": "2019-02-18T00:00:00"
},
{
“Reference”: “batch-01”,
"Quantity": 29,
"BestBeforeDate": "2019-02-19T00:00:00"
}
]
},
"SupplierCode":null,
"PurchasePrice":null,
"SellingPrice":null,
"PurchasePriceHidden":null,
"Food":false,
"MinimumExpiryPeriodInbound":null,
"MinimumExpiryPeriodOutbound":null,
"Cool":false,
"Note":null,
“PurchaseStepQty”:12
}
}
]
}
`

### GET /rest/v5/product/{sku}/stock
To retrieve details of a product including stock.

Provide SKU in query parameters if it contains a slash, e.g. /product/stock?sku=2334345

Optional: Use “?includeSplitStock=true” to add the ‘StockSplitProduct’ to your response

####  Example
`GET https://api.montapacking.nl/rest/v5/product/2334345/stock HTTP/1.1
Host: api.montapacking.nl
Authorization:

Response:

`HTTP/1.1 200 OK
{
"Sku":"2334345",
"Description":"Grote Beker",
"Barcodes":["AHKS81"],
"WeightGrammes":60,
"LengthMm":50,
"WidthMm":50,
"HeightMm":15,
"SupplierCode":null,
"Stock":{
"StockInboundForecasted":0,
"StockQuarantaine":0,
"StockAll":6,
"StockBlocked":0,
"StockInTransit":4,
"StockReserved":0,
"StockInboundHistory":124,
"Batches": [
{
“Reference”: “batch-01”,
"Quantity": 1,
"BestBeforeDate": "2019-02-18T00:00:00"
},
{
“Reference”: “batch-02”,
"Quantity": 29,
"BestBeforeDate": "2019-02-19T00:00:00"
}
]
}
}`

### GET /rest/v5/product/updated_since/{updatedSince}
To retrieve details of all products with changed stock since the provided DateTime. Max 7 days in the
past.

Optional: Use “?stock=1&stock=3” to determine which stock you want to see in the response. Below
are the corresponding values listed with the type of stock. If none is provided, Stock will not be
returned.

####  Example
`GET https://api.montapacking.nl/rest/v5/product/updated_since/2016-04-
14T16:38:27?stock=2&stock=3&stock=7 HTTP/1.1
Host: api.montapacking.nl
Authorization: Basic dGVzdDp0ZXN0= `

Response:

`HTTP/1.1 200 OK
{
"Products":[{
"Product":{
"Sku":"2334345",
"Description":"Grote Beker",
"Barcodes":["AHKS81"],
"WeightGrammes":60,
"LengthMm":50,
"WidthMm":50,
"HeightMm":15,
"SupplierCode":null,
"Stock":{
"StockQuarantaine":0,
"StockAll":5,
"StockInboundHistory":124
}
}
}]
} `
