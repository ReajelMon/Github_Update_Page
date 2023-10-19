# Bol.com

## Dataflows
Bij de bol koppeling hebben we de volgende dataflows beschikbaar:
- Changed Stock Update
- Product Match (Letop: deze Productmatch bevat geen product import)
- Full stock update
- Order Import
- Order Update
- Return Forecast Import
- Refund Create (Letop: Dit onderdeel wordt niet standaard toegevoegd ana de koppeling)
- Changed Product Match (Letop: Dit onderdeel wordt niet standaard toegevoegd ana de koppeling)


Deze koppeling beschikt over dataflow instellingen. Meer informatie hierover is te vinden via [Dataflow instellingen](../../../../Algemene-informatie/Koppelingen/1.-Koppelingen-dataflow/Dataflow-Settings)

<br>

### Bijzonderheden

#### Order import  `Annuleringen binnenhalen`:
Bij deze koppeling is het mogelijk om annuleringen binnen te halen.
Dit is in te stellen in de ``Dataflow settings`` van de koppeling.
LETOP: Het is niet mogelijk om wijzigingen binnen te halen.


#### Productinformatie:
Letop: Binnen bol worden er vaker producten aangemaakt onder een andere barcode dan dat er fysiek op het product staan. Onze klanten doen dit zodat ze beter vindbaar zijn in Google en Bol. Het is echter van belang dat de Barcode in monta overeen komt met de barcode die fysiek op het product staat. De combinatie van die twee kan ervoor zorgen dat de productmatch de producten niet aan elkaar kan koppelen. Let hierop.
