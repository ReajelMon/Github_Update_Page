# Shopify Checkout

Met de checkout module kan de klant verschillende functionaliteiten tonen in zijn webshop bij het afrekenen.


## Belangrijk bij Shopify checkout
Het berekenen van verzendkosten tijdens de checkout is bij Shopify **geen** standaard functie. [**_De webshop dient te beschikken over de module 'Door externe partij berekende verzendkosten'_**.](https://help.shopify.com/nl/manual/shipping/setting-up-and-managing-your-shipping/enabling-shipping-carriers)

![image.png](../../../Attachments/image-6558eee8-354c-4fba-bea7-d373b4a56740.png)

Deze module is inbegrepen bij het [**Advanced Abbonnement**](https://www.shopify.com/nl/prijzen) en is los bij te bestellen via Shopify support voor ca. €20,- per maand.

Het controleren van het actieve Shopify abbonnement kan via IT.

## Talen
De volgende talen worden ondersteund in de Shopify checkout:

- Nederlands
- Engels

## Configuratie

1. Controleer of de doel-webshop beschikt over de juiste module.
2. Zorg dat alle tarieven en verzendmethoden + opties juist staan in de Monta portal.
3. Installeer de [Monta Checkout App voor Shopify](https://apps.shopify.com/montapacking-checkout)
4. Maak in de MP REST Api gegevens aan Zie handleiding: [Installatie REST API](../../../Handleidingen/Installatie-%2D-Rest-API)
5. Doorloop de stappen:
<details closed>
<summary> Vul de benodigde informatie in.</summary>

![2023-01-13 08_43_34-Microsoft To Do.png](../../../Attachments/2023-01-13%2008_43_34-Microsoft%20To%20Do-72bcbf8d-da08-48d0-9de4-4cd009dfc758.png)

</details>

6. Controleer of de checkout werkt.

Binnen Shopify kun je ook vervoerders instellen. Standaard voegt de Monta Checkout deze opties toe.

<details closed>
<summary> De klant kan optioneel extra acties uitvoeren als:
</summary>

- Kosten toevoegen
- Landen uitsluiten
- Vervoerders uitsluiten

![2023-01-13 09_07_38-monta-fulfilment · Manage profile · Shopify en nog 3 andere pagina's - Werk - Mi.png](../../../Attachments/2023-01-13%2009_07_38-monta-fulfilment%20·%20Manage%20profile%20·%20Shopify%20en%20nog%203%20andere%20pagina's%20-%20Werk%20-%20Mi-211f4175-9d42-4f00-9695-8e9bace734b2.png)


</details>
<br>
Het is echter aangeraden om deze instellingen op standaard te laten, omdat dit wellicht kan conflicteren met de gegevens in de MontaPortal.

## Algemene informatie en functies

Shopify ondersteund de meeste front-end functionaliteiten van onze checkout module:

Van de volgende functies is bekend dat Shopify het **wel** ondersteund:
- Berekenen van verzendmethoden inclusief prijs
- Weergeven van verzendopties
- Weergeven van levertijden

Van de volgende standaard functies is bekend dat Shopify het **niet** ondersteund:

- Leverdag kiezen


## Known issues & Bugs
- Alleen de originele artikel kosten kunnen gebruikt worden voor het berekenen van prijzen. Dit is een limitatie van de data die ontvangen word vanuit Shopify.

<details closed>
<summary>Checkout wordt niet weergegeven</summary>
Vaak beschikt de klant niet over de juiste module. Zie `<a href="https://dev.azure.com/MontaDevelopment/MontaDocs/_wiki/wikis/MontaDocs/556/Shopify-Checkout?anchor=belangrijk-bij-shopify-checkout" >Belangrijk bij Shopify Checkout</a>`

</details>





