# Pickstromen op basis van specifieke Hardware

## Echeckwall pickstroom

[![Echeckwall_150.png](../../../Attachments/Echeckwall_150-2a00af01-5c85-4e91-9577-09d53a6a2a16.png)](https://vragen.montapacking.nl/Docs/Algemene-informatie/Apparaten/Echeckwall/)

Alleen orders die passen in de Echeckwall vakjes worden ingepland. Orders die daarbuiten vallen komen in de reguliere M, S of HM-order pickstroom. Orders die in de Echeckwall passen komen niet meer in de reguliere M-order pickstroom.

Het in-uitschakelen van de Echeckwall pickroute kan door IT gedaan worden in het veld tblMagazijnLocatieVerdieping.EcheckwallEnabled

Verder kan per relatie ingesteld worden dat een relatie NIET via de echeckwall gepickt moet worden (https://gomonta.montapacking.nl/Office/Relatie/Index)

![klantUitsluitenVanEcheckwall.JPG](../../../Attachments/klantUitsluitenVanEcheckwall-0552d2bd-70ac-4d7d-beb6-285d6c831de7.JPG)

Er kan worden gekozen of S-orders wel of niet meegenomen worden in de Echeckwall pickstroom. Dit omdat het niet in alle gevallen logistiek gezien handig is S-orders mee te picken.
Dit kan via het magazijn instellingen scherm in gomonta (https://gomonta.montapacking.nl/WMS/Shift/WarehouseSettings#PutToLightAndEcheckwall) onder het kopje 'Put to Light en Echeckwall picken'. Door het getal 0 in te vullen bij 'Maximale aantal S-orders in Echeckwall pickroute ', worden S-orders niet meer meegenomen in de Echeckwall pickroute


![EcheckwallInstellingen.JPG](../../../Attachments/EcheckwallInstellingen-029f59d8-52b2-45cb-a559-b6770c639674.JPG)

Wanneer M of HM orders veel items bevatten, is het soms raadzaam ze niet via de echeckwall te verwerken in verband met het grote aantal scans tijdens sorteren. Via de instelling  'Maximaal aantal items in Echeckwall order' kunnen orders met veel items uitgesloten worden van de Echeckwall pickroute.

![EcheckwallInstellingen.JPG](../../../Attachments/EcheckwallInstellingen-029f59d8-52b2-45cb-a559-b6770c639674.JPG)


## Echeckwall XL pickstroom
[![Echeckwall_150.png](../../../Attachments/Echeckwall_150-2a00af01-5c85-4e91-9577-09d53a6a2a16.png)](https://vragen.montapacking.nl/Docs/Algemene-informatie/Apparaten/Echeckwall/)

De Echeckwall XL pickstroom werkt vrijwel hetzelfde als de [Echeckwall pickstroom](https://vragen.monta.nl/Docs/Algemene-informatie/Outbound/Pickstromen-op-basis-van-specifieke-Hardware/#echeckwall-pickstroom) die hierboven beschreven is. Waarbij in de Echeckwall XL pickstroom de LM en HLM orders worden meegenomen. Een Echeckwall XL pickstroom is alleen beschikbaar op een verdieping als reguliere Echeckwall is ingeschakeld EN er is een EcheckwallXL (tblEcheckwallStelling.EcheckwallXL = true voor deze verdieping) dan komt de EcheckwallXL pickstroom beschikbaar Verder kan de beschrijving van de [Echeckwall Pickstroom](https://vragen.monta.nl/Docs/Algemene-informatie/Outbound/Pickstromen-op-basis-van-specifieke-Hardware/#echeckwall-pickstroom) gevolgd worden.


## Put To Light pickstroom
[![Put-to-light_150.png](../../../Attachments/Put-to-light_150-ddcac856-096e-4da1-b4a1-e2e746afbda8.png)](https://vragen.monta.nl/Docs/Algemene-informatie/Apparaten/Put-To-Light/)

PutToLight is in te schakelen door een aantal hoger dan 0 in te vullen bij 'Put to Light Aantal orders' in het instellingen scherm per magazijn/verdieping (https://gomonta.montapacking.nl/WMS/Shift/WarehouseSettings#PutToLightAndEcheckwall)
PutToLight orders zijn ook zichtbaar in de reguliere M en HM pickstromen. (er is een wens om dit aan te passen)


![PutToLightlInstellingen.JPG](../../../Attachments/PutToLightlInstellingen-6b738da4-213f-4be0-8db1-ca98e371df6a.JPG)

Wanneer M of HM orders veel items bevatten, is het soms raadzaam ze niet via de Put To Light te verwerken in verband met het grote aantal scans tijdens sorteren.
M-orders of HM-orders met veel items kunnen worden uitgesloten door 'Maximaal aantal items in een order' in te stellen. Ook kan via 'Put to Light Maximale afmetingen' ingesteld worden dat orders met te grote producten niet in de Put To Light pickstroom gepland worden




## Monta Pac-man verpakkingsmachine

[![Montapacker_150.png](../../../Attachments/Montapacker_150-40368f16-55e7-4b9c-93d7-2e01b90b77fc.png)](https://vragen.monta.nl/Docs/Algemene-informatie/Apparaten/Monta-Pacman/)

In de verify wordt via een stapelalgoritme bepaald of de producten van de order niet te groot zijn voor de maximale afmetingen die de Monta Pac-man machine aan kan. Ook wordt in de verify gekeken of de producten niet te klein zijn voor de minimale afmetingen van de Monta Pac-man.
Deze afmetingen van de monta pac man zijn door IT instelbaaar in tblMontapackerContainerSettings
Ook een totaal ordergewicht > 15 kg wordt uitgesloten. Dat is nu nog hardcoded.
Orders naar landen met proforma (tblCountryCodes.ProFormaInvoiceRequired) worden uitgesloten omdat het printen van douane documenten lastig is op de machine. Als aan alle voorwaarden voldaan is tijdens het verifieren van de order, krijgt de order dan ReadyToPickState Montapacker (nr19), dit is niet echt een pickstroom, maar een filtermogelijkheid over bestaande pickstromen.
Over het algemeen kunnen dan orders uit de volgende pickstromen onder dit filter vallen.

S

M

HM

Zie ook deze [pagina](https://vragen.monta.nl/Docs/Algemene-informatie/Apparaten/Monta-Pacman/#pickstroom-voor-monta-pacman) voor meer info.


![montapacker_pickstroom.png](../../../Attachments/montapacker_pickstroom-c4e2652d-48e3-4d6c-a269-0d2d27aa699e.png)



## BVM verpakkingsmachine
[![BWM Inpakmachine_150.png](../../../Attachments/BWM%20Inpakmachine_150-5ba1604e-5c81-49cc-bb67-de74a411a032.png)](https://vragen.monta.nl/Docs/Algemene-informatie/Apparaten/BVM/)

De BVM verpakkingsmachine pickstroom is in te schakelen door bij de outbound magazijninstellingen de verpakkingmachine aan te zetten. (https://gomonta.montapacking.nl/WMS/Shift/WarehouseSettings#PickingSizes)

![image.png](../../../Attachments/image-ade34e4f-5147-4913-b632-e946eb5c9cf6.png)

Een orders moet aan de volgende eisen voldoen om in de pickstroom te komen:
- De order moet een S-orders zijn.
- De afmetingen van order moeten groter zijn dan 140 bij 90 bij 1 mm.
- De afmetingen van order moeten kleiner zijn dan 500 bij 400 bij 100 mm.
- De klant moet toestaan dat de orders ingepakt mogen worden door de verpakkingsmachine. Dit is in te stellen in het relatie instellingenscherm.
![image.png](../../../Attachments/image-41019596-6a8e-474a-8ab5-4fc30e27c45a.png)
- Als een order een toevoegproduct heeft, dan moet deze toegestaan zijn voor de verpakkingsmachine. Dit kan worden ingesteld in het product instellingenscherm.![image.png](../../../Attachments/image-8375767a-acff-4789-bba4-6765f32c34e1.png)

Orders die geschikt zijn voor de BVM machine zijn te herkennen via onderstaande pickstroom op de scanner

![image.png](../../../Attachments/image-8336c887-2294-4959-9de9-9914ccf6796e.png)
