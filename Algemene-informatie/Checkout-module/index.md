# Checkout module

Met een checkout module kan de klant bezorgopties tonen in zijn webshop bij het afrekenen.


## Algemene beschrijving

De checkout module is een module/plug-in/app die de klant op zijn website kan laten tonen. Deze
module zorgt ervoor dat de consument op de website een vervoerder kan kiezen. De beschikbare
vervoerders worden door middel van slimme programmatuur door Monta geselecteerd. De
klant kan gelijk zien wanneer zijn pakketje aankomt en wat het hem kost. De webshop eigenaar kan
zelf instellen hoeveel een klant voor een bepaalde vervoerder betaalt (Instelbaar per land). Ook kijkt
het systeem of verzending met deze vervoerder mogelijk is in combinatie met o.a. het gewicht; cutoff
tijden en voorkeur van verkoper.

![image.png](../../Attachments/image-da1594a5-fc0d-4024-8e8b-cc336a41a660.png)

Monta heeft voor een aantal webshop platforms een checkout module ontwikkeld. Dit is een extra dienst die gratis gebruikt kan worden. Monta kan niet garanderen dat onze checkout module goed werkt in alle verschillende klantsituaties. Monta garandeert niet dat problemen die in een bepaalde sitatie ontstaan worden opgelost. Voor meer informatie zie [Hoe gaan we om met problemen?](#hoe-gaan-we-om-met-problemen).

Het is niet verplicht om de Monta checkout te gebruiken. Het is ook mogelijk om helemaal geen verzender keuze aan te bieden in de webshop. Er wordt dan een vervoerder bepaald door Monta. Nadeel is dat de consument ook niet de mogelijkheid heeft om bijvoorbeeld een afhaalpunt te kiezen.

Het is ook mogelijk om een andere checkout module te gebruiken of dat de klant zelf iets ontwikkelt. Hierbij moet dan wel ingeregeld worden dat de gekozen verzender in de koppeling wordt overgenomen, zodat Monta het pakket met de gekozen verzender verzend. Zie hiervoor [Kopppeling - Order import - verzenderkeuze importeren](../../Algemene-informatie/Koppelingen/1.-Koppelingen-dataflow#verzenderkeuze-importeren).

## Hoe ziet deze module eruit?

Hoe deze module eruitziet is een beetje verschillend per webshop platform. Op sommige platformen kan de klant ook aanpassingen doen. In de kern ziet de module er zo uit:
<details closed>
<summary> WooCommerce </summary>

<br>In WooCommerce is er sprake van een dynamische weergave. Standaard wordt de default shipper getoond: ![Woocommerce_defaultview.png](../../Attachments/Woocommerce_defaultview-68143fe6-960a-4ede-ae3e-3bcf5301456e.png)

<br> Wanneer je een andere bezorgoptie wilt zien is dit de weergave:
![woocommerce_uitgeklapt.png](../../Attachments/woocommerce_uitgeklapt-2652044b-6bf7-4c77-a8b9-9cd1e556f570.png)

<br> Voor ophaalpunten is dit de weergave:
![Woocommerce_ophaalpunt.png](../../Attachments/Woocommerce_ophaalpunt-dbbdfcd7-43a1-4165-bce8-694925df40fe.png)

</details>

<details closed>
<summary> Shopify</summary>

In Shopify is er sprake van de volgende weergave.
![2023-01-13 09_09_37-Shipping - monta-fulfilment - Checkout en nog 4 andere pagina's - Werk - Microso.png](../../Attachments/2023-01-13%2009_09_37-Shipping%20-%20monta-fulfilment%20-%20Checkout%20en%20nog%204%20andere%20pagina's%20-%20Werk%20-%20Microso-291dbb10-7d1b-477a-a4cf-8c1301a209ac.png)

Aanvullende verzendopties worden in het zelfde schema weergegeven als extra te selecteren opties. Denk hierbij aan: Pick-up punten (Te definiëren in instellingen, standaard 3), Avondlevering, Handtekening etc.

</details>

<details closed>
<summary> Magento </summary>

De Magento weergave heeft veel weg van de WooCommerce weergave:
![Magento-Keuzemenu.png](../../Attachments/Magento-Keuzemenu-7100d4a7-90ce-4955-80f6-a290a8a22404.png)

En heeft ook een apart venster voor ophaalpunten:
![Magento-Afhaalpunt.png](../../Attachments/Magento-Afhaalpunt-b6851a40-b33f-4207-80be-85b99269f78f.png)

</details>

<details closed>
<summary> Lightspeed </summary>

De Lightspeed checkout is vrij gelimiteerd. Dit is een bekende weergave:
![Lightspeed.png](../../Attachments/Lightspeed-38ff9645-88be-42c3-bb04-7c6d0d4221cf.png)
</details>

<details closed>
<summary> BigCommerce</summary>

Voor BigCommerce zijn op het moment van schrijven nog geen actieve klanten die de checkout gebruiken.

![MicrosoftTeams-image.png](../../Attachments/MicrosoftTeams-image-28fb0377-61e7-4d31-a027-113ade309b28.png)

</details>



## Checkout beschikbaar bij platformen

- [WooCommerce: Checkout WooCommerce ](https://wordpress.org/plugins/montapacking-checkout-woocommerce-extension/#description)
- Lightspeed
- [Shopify: Montapacking Checkout ](https://apps.shopify.com/montapacking-checkout)
- [Magento: Montapacking Checkout ](https://marketplace.magento.com/montapacking-montacheckout.html)
- [Bigcommerce Checkout](https://www.bigcommerce.com/apps/monta-checkout/)



## Functionaliteiten
<details closed>
<summary> Berekenen van verzendmethoden inclusief prijs</summary>
<br>
Met deze functie berekent de app alle geschikte vervoerders die ingesteld staan in de montaportal en weergeeft deze in de webshop. Dit is afhankelijk van de adresgegevens en het product. Daarnaast is het mogelijk om prijzen, limitaties en kortingen mee te geven.
<br>
</details>

<details closed>
<summary> Weergeven van verzendopties</summary>
<br>
Met deze functie weergeeft de app alle ingestelde bezorgopties. Denk hierbij aan avondlevering, pick-up points, handtekening bij ontvangst etc.

<br> _Voorbeeld uit Woocommerce:_

![verzendopties.png](../../Attachments/verzendopties-e98478fc-949a-400b-a2e2-3329cf50bf15.png)
</details>

<details closed>
<summary> Weergeven van levertijden </summary>
<br>
Met deze functie weergeeft de app de geschatte leverdatum per vervoerder. Deze informatie komt overeen met de getoonde informatie in de montaportal bij de
berekening.

<br>_Voorbeeld uit Shopify:_
![2023-01-13 09_09_37-Shipping - monta-fulfilment - Checkout en nog 4 andere pagina's - Werk - Microso.png](../../Attachments/2023-01-13%2009_09_37-Shipping%20-%20monta-fulfilment%20-%20Checkout%20en%20nog%204%20andere%20pagina's%20-%20Werk%20-%20Microso-6e2ce202-a212-4820-bc81-d43b3dac0d47.png)
</details>

<details closed>
<summary> Leverdag kiezen </summary>
<br>
Deze functionaliteit biedt de consument de optie om de levering uit te stellen, er kan een datum geselecteerd worden en per datum zal worden berekend welke vervoerders en tijdvakken er beschikbaar zijn.

<br>_Voorbeeld uit Woocommerce:_
![2023-01-13 12_55_12-Kassa - allesvoorUWvloer en nog 4 andere pagina's - Werk - Microsoft​ Edge.png](../../Attachments/2023-01-13%2012_55_12-Kassa%20-%20allesvoorUWvloer%20en%20nog%204%20andere%20pagina's%20-%20Werk%20-%20Microsoft​%20Edge-c271eeb7-d667-4b4c-9431-504fc44f53d3.png)

</details>


<details closed>
<summary> Korting bij uitgestelde leverdag</summary>

Het is mogelijk om korting in te stellen voor de consument voor bepaalde afleverdagen.

Zo'n 70% van de consumenten kiest voor een uitgestelde leverdag als ze daarmee korting kunnen krijgen.

Uitgestelde aflevering zorgt voor een efficiëntere logistieke verwerking: er is minder piekbelasting en er kan beter gepland worden.

Hieronder sceenshots hoe de korting eruit ziet in de verschillende checkouts:

Shopify:<br />
<img src="../../Attachments/MicrosoftTeams-image%20(1)-4f441bd6-ff33-4d99-be5f-918f1ee97c4f.png" width="400" />

Magento:<br />
<img src="../../Attachments/MicrosoftTeams-image%20(2)-4af6edc1-8593-4cde-8e7a-ace5c187d45f.png" width="400" />)

Lightspeed:<br />
<img src="../../Attachments/MicrosoftTeams-image%20(3)-234815bc-aff3-4c4e-9d93-576fa27ee28a.png" width="400" />)

Shopware:<br />
<img src="../../Attachments/MicrosoftTeams-image%20(4)-5046c1ad-c5c0-40f0-834e-938a9b17b524.png" width="400" />)

</details><br>

In de onderstaande tabel kun je gemakkelijk zien welke functionaliteiten _in grote lijnen_ worden ondersteund door een CMS. Voor specifieke informatie kun je hier terecht:

[Shopify Checkout](../../Algemene-informatie/Checkout-module/Shopify-Checkout) -[Woocommerce Checkout](../../Algemene-informatie/Checkout-module/Woocommerce-Checkout) -
[Lightspeed Checkout](../../Algemene-informatie/Checkout-module/Lightspeed-Checkout) -
[BigCommerce Checkout](../../Algemene-informatie/Checkout-module/BigCommerce-Checkout)- [Magento Checkout](../../Algemene-informatie/Checkout-module/Magento-Checkout)


||Shopify|WooCommerce|Lightspeed | BigCommerce |Magento  |
|--|--|--|--|--|--|
|**Afleverdatum weergeven**| Ja |Ja  |Nee  | Onbekend | Ja |
|**Aanvullende actie vereist?**  | App nodig  | Plug-in nodig |Checkout aanzetten via order-import in MP  | App nodig | App nodig |
|**Standaard in CMS beschikbaar?**  | Module of advanced abbonement nodig | Ja | Ja |Ja  | Ja  |
|**Verzendopties**  |Ja  | Ja  | Ja*  |Onbekend  |Ja  |
| **Pick-Up Points**|Ja|Ja  |Ja|Ja |Ja |
| **'Standard delivery**' | Ja  | Ja | Nee | Onbekend | Ja |
| **Leverdag kiezen** | Nee| Ja | Nee | Onbekend | Ja |
| **Check product on SKU** |Ja | Ja | |Nee | |
| **Leading Stock** | Ja|  | |Nee | |
| **Controleren op afmetingen (in de cms)**||Ja  ||Nee | |

*In Lightspeed worden niet alle verzendopties ondersteund. Kijk voor meer info in: [Lightspeed Checkout](../../Algemene-informatie/Checkout-module/Lightspeed-Checkout)

## Instellingen mogelijk

- Welke vervoerders beschikbaar zijn per land.
- Verzendkosten voor consument per land, dus ook naar afhaalpunten in het
buitenland.
- Per vervoerder verschillende Shipper Options zoals: gratis levering vanaf,
avondlevering, niet bij de buren afleveren, tekenen voor ontvangst, etc.
- Afwijkende verzendkosten vanaf een bepaald gewicht. Dit kan met het weegschaal knopje.
- Pick up Points

![image.png](../../Attachments/image-9ad3d925-5446-42bf-b37a-9ffc9b6a6d19.png)

## Eigenschappen en bijzonderheden:

Pickup points worden niet meegenomen in de gewichten/lengte calculatie. Die worden dus altijd getoond. Dit is bij elke checkout van toepassing.

### Leading Stock
Met de optie leading stock kun je specificeren welke voorraadstanden moeten worden gebruikt bij het berekenen van de levertijd/verzendmethode

### Check Product on SKU
Als de opties check product on sku aan staat, gaan we rekenen met de gewichten/afmetingen die in de MP bekend zijn. Aan de hand van die gegevens worden de beschikbare verzenders getoond.


### Controleren op afmetingen
Bij de WooCommerce checkout is het mogelijk om in te stellen dat de checkout rekening houdt met de afmetingen van de producten om de verzender te selecteren. Als in, het is in de restapi ingebouwd, alleen moet er dan een product meegestuurd worden. En dit wordt alleen in woocommerce gedaan. Andere checkout modules houden hier dus geen rekening mee.


### Afleverdatum berekenen
In de checkout berekent Monta de verwachte leverdatum. Dit doen wij op basis van de volgende parameters:
1. Voorraad: Monta kijkt of er voorraad is van het artikel. Indien geen voorraad zal dit de verwachte afleverdatum beïnvloeden.
2. Cutoff: Monta kijkt naar de afhaaltijden van de vervoerder om de inschatting te maken wanneer de order zal worden verzonden.

## Configuratie

Voor de installatie van één van onze checkouts vragen we altijd de klant een google api key in te vullen.
Deze is middels deze url te verkrijgen: https://developers.google.com/maps/documentation/javascript/get-api-key.

![image.png](../../Attachments/image-5e43f79d-02fb-466e-9666-f6e7d748c003.png)
![image.png](../../Attachments/image-0fa1f3f1-8bcb-479e-8795-cc3da72e12b2.png)


## Hoe gaan we om met problemen / aanpassingen vanuit klant?

Shopify en Lightspeed zijn SaaS-oplossingen. De programmatuur is hierbij standaard en
de checkout module werkt hierbij dan ook vlekkeloos.

WooCommerce en Magento checkout zijn softwarepakketten die u zelf op een server installeert en onderhoud. Onze checkout module ondersteund de standaard WooCommerce en Magento installatie. Het kan echter zijn dat uw webshop aanpassingen heeft, bijvoorbeeld andere plugins, waardoor problemen ontstaan met de Monta checkout plugin. Het is voor Monta niet te doen om alle plugins van de wereld goed samen te laten werken. Daarom hebben we de programmacode vrij beschikbaar gemaakt op GitHub zodat de klant zelf een aangepast versie van de checkout kan (laten) maken om deze problemen op te lossen. Bij problemen met veelgebruikte plugins kunnen we natuurlijk kijken of we een oplossing kunnen bieden in onze standaardversie.

## Veel gestelde vragen

<details closed>
<summary> Wat is de functie 'standard delivery'? </summary>
<br>
Standard delivery is een optie die onder één noemer (standaard verzending) alle mogelijke vervoerders (te selecteren in de montaportal) laat zien; waar je bij andere vervoerders apart de vervoerders laat zien. Wij berekenen dan als de order binnen komt de meest geschikte vervoerder op basis van de informatie die bij ons bekend is.

![standaard verzending.jpg](../../Attachments/standaard%20verzending-ea528a2c-d382-4d5f-9696-029ee8d722f3.jpg)
</details>
<details closed>
<summary> Pick-up points worden niet getoond </summary>
<br>
Problemen met het tonen van pickuppoints worden mogelijk veroorzaakt door de google api key:

- De googlekey is niet correct ingesteld (het ontbreken van creditcard gegevens in je google account)
- De googlekey heeft niet al de correcte regels.

Deze instellingen kunnen worden gedaan in de Montaportal onder:
Home-> Settings -> Checkout options

</details>





