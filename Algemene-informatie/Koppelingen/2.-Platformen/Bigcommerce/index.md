# Bigcommerce

## Koppeling algemeen

### Standaard onderdelen

Bij Monta hebben we standaard koppelingen die voor al onze klanten werken. Op deze manier kunnen we de bedrijfszekerheid van de koppelingen garanderen. De koppeling van BigCommerce bevat de volgende onderdelen:

- Order Import (Importeert statussen: `11: Awaiting Fulfillment` en `5: Cancelled`)
- Product Match (Incl. Product informatie import)
- Changed Stock Update
- Full Stock Update
- Order Update (Zet orderstatus naar `2: Shipped`)
- Changed Product Match (Letop: Dit onderdeel wordt niet standaard aan de koppeling toegevoegd. )

Deze onderdelen noemen we dataflows en zijn afhankelijk van elkaar in te stellen en te activeren. Meer informatie van deze dataflows kun je [`hier`](../../../../Algemene-informatie/Koppelingen) vinden
<br>



### Speciale onderdelen:
Speciale onderdelen zijn onderdelen van een koppeling die wel bestaan, maar die niet actief worden aangeboden. Dit is vaak omdat dit óf instabiele koppelingsonderdelen zijn; óf omdat hier data over heen gaat die extra aandacht nodig heeft. Mocht er interesse zijn in een speciaal onderdeel, _neem dan contact op met Monta IT._


#### Deelleveringen:
De koppeling van Bigcommerce ondersteunt geen deelleveringen update. De order wordt op verzonden gezet wanneer de originele order wordt verzonden.

#### Orderwijzigingen:
Met de instelling UpdateWhenAlreadyExistsAndPlatformSupportsIt kunnen we orderwijzigingen en annuleringen importeren.



<br>

## Koppeling maken
Om de koppeling te maken moet er contact zijn met een Medewerker van Monta. We zullen daarbij vragen naar een aantal gegevens die we nodig hebben om een koppeling te maken. Ga naar

`LINK NAAR KOPPELING MAKEN PAGINA`

om de benodigde gegevens te bekijken.

<br>

## Instellingen
Deze koppeling heeft (nog) geen koppeling specifieke settings.

Er zijn ook een aantal dataflow settings (Dit zijn settings die voor alle koppelingen gelden)

Deze kun je hier vinden: [Dataflow instellingen](../../../../Algemene-informatie/Koppelingen/1.-Koppelingen-dataflow/Dataflow-Settings)

<br>

## Checkout Module
Deze koppeling ondersteund onze universele checkout. Meer informatie over de module en configuratie kun je hier vinden:

[Bigcommerce checkout ](../../../../Algemene-informatie/Checkout-module)

## FAQ
Hieronder zijn staan onderwerpen waar vaak onduidelijkheid over is bij deze koppeling.





