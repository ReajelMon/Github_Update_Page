# BigCommerce Checkout

Met de BigCommerce checkout kunnen bezorgopties worden getoond aan de klant in de Woocommerce webshop bij het afrekenen.


## Belangrijk bij BigCommerce checkout

Er zijn nog geen bijzonderheden bekend over het gebruik van de BigCommerce checkout.

## Talen

Het is nog niet bekend welke talen worden ondersteund voor de BigCommerce checkout.


## Configuratie

1. Zorg dat alle tarieven en verzendmethoden + opties juist staan in de Monta portal.
2. Maak in de MP REST Api gegevens aan. Zie handleiding: [Installatie REST API](../../../Handleidingen/Installatie-%2D-Rest-API)
3. Installeer de Monta checkout app in BigCommerce.
4. Doorloop de stappen in BigCommerce.
<details closed>
<summary> Doorloop de benodigde stappen in BigCommerce.</summary>
Na installatie van de app maakt Bigcommerce automatisch de volgende waarden aan:
<br>- Zone (Land of landen waar klant naartoe kan verzenden)
<br>- Carrier(s) ( Onze Carrier die we bij BigCommerce hebben aangevraagd)
<br>- Shipping methods aangemaakt. (Verzenders en verzendopties van Monta)
<br>

Doorloop nu de stappen in BigCommerce.

![bigcommerce installatie.png](../../../Attachments/bigcommerce%20installatie-c4a4dc21-a5a3-4253-9d36-0ba5ac7115ec.png)

1. Ga naar de instellingen op de 'Connection' tab en vul hier de benodigde informatie in. Deze zijn later aan te passen.

Let op:

- Webshop is naam van origin waar je de checkout opties voor opvraagt
- Username: username van rest api
- Password: password van rest api
- Google api: google api key van de klant. Deze is nodig om de coördinaten van het verzend adres van de klant op te vragen en voor de werking van de pick-up points.


2. Test de verbinding via de 'Quote' tab. Vul de gegevens in. Wanneer je geen quotes terugkrijgt, kan het zijn dat je credentials niet kloppen.

![BigCOmmerce quote scherm.png](../../../Attachments/BigCOmmerce%20quote%20scherm-7fdb1839-58bc-460d-8710-ba0c4c882746.png)

</details>

5. Test de live checkout


## Algemene informatie en functies

Van de volgende functies is bekend dat BigCommerce het **wel** ondersteund:

- Berekenen van verzendmethoden inclusief prijs
- Weergeven van verzendopties

Van de volgende standaard functies is bekend dat BigCommerce  het **niet** ondersteund:

- Weergeven van levertijden (NOG NIET GETEST 13/1/2023)
- Leverdag kiezen (NOG NIET GETEST 13/1/2023)

Van de volgende aanvullende functies is bekend dat BigCommerce het **niet** ondersteund:



## Known issues & bugs




<details closed>
<summary> In de 'Get Quote' werkt de checkout, maar op de website niet.</summary>
Let er op dat je Google API key de juiste rechten heeft voor het ophalen van coordinaten op basis van een adres en postcode. Op de Quote tab bij het testen van je connectie wordt de Google API key niet gebruikt omdat er geen straat en postcode zijn ingevuld. Dan kan het op de Quote tab wel goed gaan, maar in de checkout zelf toch niet werken.
</details>




<details closed>
<summary> Ik wil de checkout app verwijderen</summary>
Verwijderen kan door op de app op uninstall te klikken. Bij het deinstalleren worden de shipping method, carrier en Monta zone verwijderd. Mocht je de app weer opnieuw willen installeren, kan door simpelweg de app te zoeken en de app opnieuw te installeren.
</details>
