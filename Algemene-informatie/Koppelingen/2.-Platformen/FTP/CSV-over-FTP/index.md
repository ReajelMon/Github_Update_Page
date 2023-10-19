# CSV over FTP

## CSV over FTP


Het is mogelijk om bij monta data via CSV over FTP uit te wisselen.
Monta heeft een standaard koppeling om deze data uit te wisselen. De bestanden kunnen op de server van de klant, of op de server van Monta worden geplaatst.



### Onderdelen koppeling:
De koppeling van Monta heeft een aantal standaard dataflows:

- Import product information from CSV or Excel files from FTP
- CSV with stock of products with changed stock to FTP
- CSV with stock of all products to FTP
- Order status shipped CSV to FTP
- Import orders from CSV or Excel files from FTP
- Import inbound forecasts from CSV or Excel files from FTP


<br>

## Beschikbare data:
Per dataflow kan bepaalde data worden uitgewisseld. Hieronder is per dataflow aangegeven welke data er kan worden uitgewisseld.

<details closed>
<summary>Product informatie import</summary>
* Klant plaatst data op server.

|Column type|Supported column names|
|--|--|
|Sku|SKU, Sku, sku|
|Description|Name, Description, Article_Description, NAME|
|Barcode|EAN, Ean, Barcode, EANcode, CeEan, secondarybarcode, EAN2, PrimaryBarcode, SecondaryBarcode|
|Sell price|Price, Sell price|
|Purchase price|Purchase price, Cost, Costprice, inkoopprijs, Price_manufacturer, PurchasePrice|
|Supplier product code|Supplier product code, Supplier sku, SupplierProductCode|
|Supplier title|Supplier, Manufacturer|
|Image URL|Image, ImageUrl|
|Minimum stock|Minimum stock, MinStock|
|CustomField|CustomField|
|HSCode|HS_code, douanecode|
|CountryOfOrigin|Country_of_origin, country_of_manufacture|

<br>
</details>
<details closed>
<summary>Order Import </summary>
* Klant plaatst data op server.

|	Column type	|	Supported column names	|
|	--	|	--	|
|	WebshopOrderID	|	WebshopOrderId, Ordernumber, order_number, OrderNumber, bestelnummer, deliveryname, ShipmentRefNo, Ordernummer, order_Number	|
|	Reference	|	Klant order nummer, marketplace_order_id, Sales order nummer, OrderHumanNumber, Reference, MagentoReferentie, Referentie	|
|	OrderedDateTime	|	Orderdate	|
|	Origin	|	storeid, PurchasedWebsite, Origin, webshop_name, Dropshipper	|
|	ShippingAddressCompany	|	ShippingCompany, CompanyName, bedrijfsnaam, shipping_company	|
|	ShippingAddressFirstName	|	ShippingFirstName, FirstName, first_name, shipping_firstname	|
|	ShippingAddressMiddleName	|	ShippingMiddleName	|
|	ShippingAddressLastName	|	ShippingLastName, last_name, tav, deliverycontactname, LastName, Klant, shipping_lastname	|
|	ShippingAddressStreetOrAddress1	|	ShippingAddress1, ShippingStreet, deliveryaddress, Street, Adres, address, adres, shipping_street	|
|	ShippingAddressHouseNumberOrAddress2	|	ShippingAddress2, ShippingHouseNo, HouseNumber, Huisnummer, shipping_street2	|
|	ShippingAddressHouseNumberAdditionOrAdress3	|	ShippingAddress3, ShippingHouseNoAddition, HouseNumberExt, shipping_street3	|
|	ShippingAddressPostalCode	|	ShippingPostalCode, ShippingPostcode, deliveryzipcode, Zipcode, Postcode, zip, postcode, shipping_postcode	|
|	ShippingAddressCity	|	ShippingCity, deliverycity, City, Plaats, city, woonplaats, shipping_city	|
|	ShippingAddressState	|	ShippingState, shipping_region	|
|	ShippingAddressCountry	|	ShippingCountry, deliverycountry, Country, Landcode, country_name, Land, shipping_country_id	|
|	ShippingAddressEmail	|	ShippingE-Mail, ShippingEmail, Email, shipping_email, CustomerEmail	|
|	ShippingAddressPhone	|	postnl_mobile_phone_number, ShippingPhone, Mobiel, Telefoon, shipping_telephone	|
|	InvoiceAddressCompany	|	InvoiceCompany, BillingCompany, bedrijfsnaam, billing_company	|
|	InvoiceAddressFirstName	|	InvoiceFirstName, BillingFirstName, billing_firstname	|
|	InvoiceAddressMiddleName	|	InvoiceMiddleName, BillingMiddleName	|
|	InvoiceAddressLastName	|	InvoiceLastName, BillingLastName, billing_lastname	|
|	InvoiceAddressStreetOrAddress1	|	InvoiceAddress1, BillingAddress1, BillingStreet, InvoiceStreet, adres, billing_street	|
|	InvoiceAddressHouseNumberOrAddress2	|	InvoiceAddress2, BillingAddress2, BillingHouseNo, InvoiceHouseNo, billing_street2	|
|	InvoiceAddressHouseNumberAdditionOrAdress3	|	InvoiceAddress3, BillingAddress3, BillingHouseNoAddition, InvoiceHouseNoAddition, billing_street3	|
|	InvoiceAddressPostalCode	|	InvoicePostcode, BillingPostcode, postcode, billing_postcode	|
|	InvoiceAddressCity	|	InvoiceCity, BillingCity, woonplaats, billing_city	|
|	InvoiceAddressState	|	InvoiceState, BillingState, billing_region	|
|	InvoiceAddressCountry	|	InvoiceCountry, BillingCountry, Land, billing_country_id	|
|	InvoiceAddressEmail	|	InvoiceE-Mail, BillingE-Mail, BillingEmail, InvoiceEmail, email, billing_email	|
|	InvoiceAddressPhone	|	InvoicePhone, BillingPhone, billing_telephone	|
|	OrderInvoiceDebtorNumber	|	Debtornummer, CustomerID	|
|	DeliveryDateRequested	|	postnl_delivery_date, delivery_date_requested	|
|	ShippingDeadline	|	Uiterlijke_verzenddatum	|
|	AllowedShipperCode	|	ShipperInfo, ShippingMethod, Shippercode, IsPickupLocation, ShippingOptionsShipperCode	|
|	ShipperOptionCode	|	postnl_type	|
|	InvoicePaymentMethod	|	PaymentMethod, payment_method_title	|
|	InvoiceShippingTotalExclTax	|	ShippingCost	|
|	InvoiceTotalInclTax	|	GrandTotal, order_grand_total	|
|	InvoiceTotalTax	|	TotalTax, order_tax_amount	|
|	OrderLineSku	|	ArticleSKU, ItemSKU, SKU, productsku, ProductCode, Artikelcode, order_item_sku, item_sku	|
|	OrderLineQuantity	|	OrderedQty, ItemOrdered, Aantal, amount, Colli, product_quantity, item_qty	|
|	OrderLineDescription	|	ItemName, order_item_name, item_name	|
|	OrderLineReference	|	Sales order regel nummer	|
|	InvoiceLinePriceExTax	|	line_price_excl_VAT	|
|	InvoiceLinePricePerPieceExTax	|	ItemPrice, item_price, unit_price_excl_VAT	|
|	InvoiceLinePriceInclTax	|	line_price_incl_VAT	|
|	ShippingDocumentUrl	|	ShippingDocumentUrl	|
|	SurprisePackCodeOrder	|	giftwrap	|
|	SurprisePackCodeLine	|	GiftWrapDesign	|
|	MontacheckoutData	|	montapacking_montacheckout_data, monta_montacheckout_data	|
|	B2B	|	B2b, B2B	|
|	Currency	|	currency, Currency, order_order_currency_code	|
|	InvoiceLineTaxPercentage	|	TaxPercent, item_tax_percent	|
|	InvoiceTotalDiscount	|	order_discount_amount, TotalDiscount	|
|	ProductWeight	|	Weight, ProductWeight	|
|	ProductLength	|	Length, ProductLength	|
|	ProductWidth	|	Width, ProductWidth	|
|	ProductHeight	|	Height, ProductHeight	|
|	CountryOfOrigin	|	CountryOfOrigin, Transport_Country_Of_Origin	|
|	HsTariefCode	|	HsTariefCode, StatisticalCode	|
|	InvoiceLinePricePerPieceIncTax	|	unit_price_incl_VAT	|
|	Shipper option "DHL Parcel Connect Harmonised ID" for shipper "DHL Parcel Connect Pickup Point"	|	Packingstationcode	|
|	Shipper option "DHL Parcel Connect ID (Van Parcelshop or Packstation)" for shipper "DHL Parcel Connect Pickup Point"	|	DHLPCID	|
|	Shipper option "DHL Parcel Connect PostNummer - Verplicht bij PackStation naar Duitsland" for shipper "DHL Parcel Connect Pickup Point"	|	Postnumber	|
|	Shipper option "Code van servicepunt" for shipper "DHL (servicepunt)"	|	DHLPickup	|
|	Shipper option "ID van de DPD parcelstore waar het pakket klaargelegd moet worden om door de consument opgehaald te worden" for shipper "DPD parcelstore"	|	DPDparcelshopNummer	|
|	Shipper option "Code/ID van het pickup point van Pakjegemakt" for shipper "Pakje gemak van PostNL"	|	PakjeGemakBE_PickupPointCode	|
|	Shipper option "Retail ID van pakjegemak voor BE" for shipper "Pakje gemak van PostNL"	|	PakjeGemakBE_PickupPointRetailID	|


### Orderwijzigingen:
Met de instelling UpdateWhenAlreadyExistsAndPlatformSupportsIt kunnen we orderwijzigingen en annuleringen importeren.

</details>
<details closed>
<summary>Order Update </summary>

* Monta plaatst file op server

|	Information in file: 	|
|	--	|
|	WebshopOrderID |
|	Status 	|
|	barcode	|
|	ShipperName	|
|	Trackign link	|
|	Shipper	|
</details>
<details closed>
<summary>Stock update full </summary>

* Monta plaatst file op server

|	Informations in File: 	|
|	--	|
|	SKU	|
|	Stock	|
|	StockForecasted	|
</details>
<details closed>

<summary>Stock Update changed </summary>
* Monta plaatst file op server

|	Information in file: 	|
|	--	|
|	SKU	|
|	Stock	|

In dit gedeelte van de koppeling zijn er ook een aantal instellingen/ keuzes beschikbaar:

|	Settings: 	|
|	--	|
|	Add primary barcode: no/yes	|
|	Forecasted stock in separate column: no/yes	|
|	Allow negative stock: no/yes	|

<br>
</details>
<details closed>
<summary>Inbound forecast </summary>
* Klant plaatst file op server

|	Column type	|	Supported column names	|
|	--	|	--	|
|	Reference	|	POnumber, Reference	|
|	Comment	|	Comment	|
|	ExpectedDeliveryDate	|	ExpectedDeliveryDate	|
|	SupplierCode	|	SupplierCode	|
|	SupplierName	|	SupplierName	|
|	Sku	|	Sku, SKU	|
|	Quantity	|	Quantity, Qty, Quantitiy	|
|	IncludeInWebshopStock	|	IncludeInStock, IncludeInWebshopStock	|
</details>




