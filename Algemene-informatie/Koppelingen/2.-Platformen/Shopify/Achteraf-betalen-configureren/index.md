# Achteraf betalen configureren

#### Korte instructies:

1. Configureer in Shopify dat bij het fulfillen van een order het order automatisch ge'_capture_'ed wordt.

**Let op**: als stap 2 gedaan is zonder eerst stap 1 voltooid te hebben, dan worden de orders fulfilled, zonder dat de klant kan betalen. De 'achteraf betalen partij' weet dan niet dat ze dan bij de consument het bedrag moeten gaan claimen.

2. Zet '_tblRelatieSystemConnectionTypeOrderImportShopifySettings.ImportOrdersWithFinancialStatusAuthorized_' op true.


#### Volledige instructies:

Monta kan orders importeren die achteraf door de consument betaald worden. Een derde partij neemt dan de betaling op zich (AfterPay, Klarna, etc.).

Dit zijn orders met de 'financial_status' **authorized**.

Let op: orders die via PayPall of een creditcard betaald worden hebben ook deze status. Om die er uit te filteren haalt Monta enkel orders op waarbij het 'gateway' veld (deels) overeenkomt met één van de volgende termen: SprayPay, IN3, Billink, Klarna, Riverty, AfterPay, Credit Click.

Zodra een order met deze status verzonden is, moet de desbetreffende derde partij hier van op de hoogte gesteld worden. Dit wordt gedaan door de order te '_capture_'-en.

Het '_capturen_'-en van een order moet door Shopify gedaan worden zodra Monta het order fulfilled.

Hier wordt uitgelegd hoe dit in Shopify geconfigureerd kan worden.

Dit proces bestaat uit 2 stappen:
1. Zet de payment capture settings in Shopify op MANUAL (Settings > Payments > Payment capture (Manage) > Manually > Save
![Stap 1.png](../../../../../Attachments/Stap%201-e18847c9-5bbb-46e8-977b-21ab81fd9c94.png)

2. Workflow aanmaken (afhankelijk van de wensen)
Bijvoorbeeld: If Fulfillment created / order fulfilled > then Capture Payment
![Stap 2.png](../../../../../Attachments/Stap%202-2008fc00-4be9-4d04-a556-939fb10545ba.png)

Voor een uitgebreide documentatie van deze functie kan de officiële help van Shopify geraadpleegd worden: https://help.shopify.com/en/manual/shopify-flow/reference/actions/capture-payment

Om deze orders in Monta te importeren moet bij de RelatieSystemsConnector de volgende setting op _true_ gezet worden: _tblRelatieSystemConnectionTypeOrderImportShopifySettings.ImportOrdersWithFinancialStatusAuthorized_
