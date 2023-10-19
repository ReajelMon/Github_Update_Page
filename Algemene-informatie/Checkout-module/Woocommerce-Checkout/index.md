# Woocommerce Checkout

Met de WooCommerce checkout kunnen bezorgopties worden getoond aan de klant in de Woocommerce webshop bij het afrekenen.


## Belangrijk bij WooCommerce checkout

WooCommerce is een open-source softwarepakket die u zelf op een server installeert en onderhoud. Onze checkout module ondersteund de standaard WooCommerce installatie. Het kan echter zijn dat uw webshop aanpassingen heeft, bijvoorbeeld andere plugins, waardoor problemen ontstaan met de Monta checkout plugin. Het is voor Monta niet mogelijk om alle plugins van de wereld goed samen te laten werken. Daarom hebben we de programmacode vrij beschikbaar gemaakt op GitHub zodat de klant zelf een aangepast versie van de checkout kan (laten) maken om deze problemen op te lossen. Bij problemen met veelgebruikte plugins kunnen we natuurlijk kijken of we een oplossing kunnen bieden in onze standaardversie.

Aanvullend betekend dit dat niet elke checkout het zelfde is.

## Talen

De volgende talen in de Woocommerce checkout worden ondersteund:
- Engels (standaard)
- Nederlands
- Duits

## Configuratie

1. Zorg dat alle tarieven en verzendmethoden + opties juist staan in de Monta portal.
2. Installeer de [Monta Checkout App voor Woocommerce](https://wordpress.org/plugins/montapacking-checkout-woocommerce-extension/)
4. Maak in de MP REST Api gegevens aan. Zie handleiding: [Installatie REST API](../../../Handleidingen/Installatie-%2D-Rest-API)
5. Doorloop de stappen:
<details closed>
<summary> Doorloop de benodigde stappen in Woocommerce.</summary>

![image.png](../../../Attachments/image-be8f41c0-f887-4b7b-bfac-d8d481503ef9.png)
Veld "Shop" in Wordpress staat gelijk aan "Channel" in de Montaportal [(**Channel**)](https://www.montaportal.nl/Home/CustomerSettings)
Velden "Username" en "Password kun je doormiddel van de REST API credentials  uit stap 4 invullen.

</details>

5. Vul in Woocommerce de overige velden in naar wens.
6. Test de checkout

## Algemene informatie en functies

Van de volgende functies is bekend dat WooCommerce het **wel** ondersteund:
- Berekenen van verzendmethoden inclusief prijs
- Weergeven van verzendopties
- Weergeven van levertijden
- Leverdag kiezen
- Gratis verzending met coupons
- Automatisch selecteren van in Montaportal geselecteerde voorkeursverzender
- Aanpassen verzendernamen

Van de volgende standaard functies is bekend dat WooCommerce het **niet** ondersteund:


Van de volgende aanvullende functies is bekend dat WooCommerce het **niet** ondersteund:



## Known issues & bugs
- Originele prijs is gebruikt voor het berekenen van korting.

<details closed>
<summary> Foute Vertaling</summary>

Mogelijke oorzaken in fouten vertaling:
Er kan een fout in de website zitten die veroorzaakt dat niet het juiste vertaalbestand wordt ingeladen door Wordpress (montapacking-checkout.nl-NL).

Wellicht dat een plug-in in conflict is wat leidt tot een JS foutmelding. Ook zou het kunnen zijn dat de "server-locale" van PHP anders is dan nl_NL.

</details>
