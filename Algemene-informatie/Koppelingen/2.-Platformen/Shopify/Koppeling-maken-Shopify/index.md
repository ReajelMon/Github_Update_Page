# Koppeling maken Shopify

Om de koppeling met Shopify te maken moeten er een aantal stappen worden doorlopen.

## Locatie aanmaken in Shopify:
Om alles goed te laten verlopen is het van belang dat je in de Shopify omgeving een nieuwe locatie aanmaakt.
Deze locatie moet Monta heten. De producten die hier komen te liggen moeten worden toegewezen aan de Monta locatie.
[[Hier een link van de informatiepagina van shopify(https://help.shopify.com/nl/manual/locations/assigning-inventory-to-locations)

<br>


## Ieder product SKU, Barcode en omschrijving:
Om de producten te importeren in de Montaportal is het van belang dat alle producten, in de Shopify omgeving, een SKU, omschrijving en barcode hebben. De SKU moet uniek zijn voor ieder product. De barcode moet de code zijn die fysiek op het product staat. Zou jij dit kunnen aanvullen in het Shopify account en mij een terugkoppeling kunnen geven wanneer dit gelukt is?

<br>

## Koppeling Shopify
Hierna kun je in je eigen Shopify omgeving [de Monta connector app installeren.](https://apps.shopify.com/montapacking?surface_detail=montapacking&surface_inter_position=1&surface_intra_position=2&surface_type=search) Door deze app te installeren kun je gemakkelijk en snel de koppeling met ons maken. Deze app zal je doorsturen naar het Montaportal. Hier zal hij vragen welke onderdelen je gebruik van wilt maken. Laat daarbij alle vinkjes aan staan.
Nadat je de koppeling hebt gemaakt kun je contact opnemen met ons om deze koppeling te activeren.

<br>



## Koppeling handmatig maken via Postman
Om de koppeling te maken heb ik een aantal api Keys nodig.
Meer informatie over het aanmaken van api keys is te vinden via deze link:
[Generate private API credentials (Vanaf stap 4)](https://shopify.dev/tutorials/generate-api-credentials)

Om de koppeling te kunnen maken heb je de volgende gegevens nodig van de klant:
•	Voorbeeld url
•	Consumer key
•	Consumer secret

Tijdens het aanmaken van de api kun je ons bepaalde rechten toekennen. Wij hebben lezen en schrijven rechten nodig voor alles wat te maken heeft met voorraad; producten; fulfilment en orders.

```
Rechten:
read_fulfillments,
write_fulfillments,
read_products,
write_products,
read_product_listings,
read_orders,
write_orders,
read_all_orders,
read_locations,
read_inventory,
write_inventory

```



