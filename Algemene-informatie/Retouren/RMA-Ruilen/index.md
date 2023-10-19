# RMA Ruilen

De RMA kan ook gebruikt worden om consumenten hun producten te laten ruilen.



## Hoe werkt ruilen?
Ruilen is een nieuw onderdeel van de RMA, waar consumenten kunnen kiezen om een product te ruilen voor een ander, vergelijkbaar product. Denk hier bijvoorbeeld aan een kledingstuk die de consument een maat te klein heeft besteld, of in een verkeerde kleur.

Bepaalde instellingen zijn nodig om ruilen aan te zetten in de RMA. Die worden hieronder beschreven:
<br>

## Opvolgacties
Opvolgacties zijn een nieuw onderdeel van de RMA. Consumenten kunnen via deze opvolgacties aangeven wat ze willen dat er gebeurd aan de hand van hun retour, zoals hieronder aangegeven:

![image.png](../../../Attachments/image-646b2889-e2c1-41e6-8896-90216e167e79.png)

Deze opvolgacties zijn in te stellen in MontaPortal, zoals je hieronder kunt zien:
![image.png](../../../Attachments/image-ef7f2ded-e167-421c-8060-bc3f86e31776.png)
_In het voorbeeld hierboven heeft de consument aangegven zijn product te willen ruilen._

Om ruilen mogelijk te maken moet je één opvolgactie aanmaken waarvan ruilen aan staat, zoals bijvoorbeeld hieronder:
![image.png](../../../Attachments/image-ddc50b6c-b0e4-4bfe-9c1e-196b6416e156.png)

We raden vanuit Monta aan meerdere opvolgacties aan te maken, zoals bijvoorbeeld "Geld terug" of "Winkel krediet". Zo kan de consument ook naast ruilen kiezen wat hij wilt dat er na zijn retouraanmelding gebeurd.

Je kunt ook bepaalde opvolgacties gratis maken om te verzenden. Zo kun je bijvoorbeeld de consument aanmoedigen om "Winkel krediet" of "Ruilen" te kiezen:
![image.png](../../../Attachments/image-d377b475-acda-4935-83ad-0b501c138d50.png)

Na het aanmaken van de opvolgactie moet die ook nog gekoppeld worden aan een retourreden. Opvolgacties kunnen alleen gekozen worden onder die retourreden. Op de detailpagina van retourreden kan dit (_hier kom je via Instellingen -> Retouren -> Retourredenen -> klik op de "wijzigen" knop van een van de retourredenen_):
![image.png](../../../Attachments/image-67066035-febb-4100-912d-c2375dd7a239.png)

We raden aan alle opvolgacties aan al je retourredenen te koppelen, tenzij je een goede reden hebt dit niet te doen.

Zodra je opgvolgacties (waarvan een "ruilen") hebt, en deze zijn gekoppeld aan retourredenen, komen deze te verschijnen in de RMA:
![image.png](../../../Attachments/image-2b2d2ecb-eed9-43dc-9c0d-3ed2d9678d5f.png)

## Productgroepen
Productgroepen worden gebruikt om te bepalen met welke producten de consument kan ruilen. Denk bij een groep aan bijvoorbeeld een shirt, die meerdere kleuren heeft. In de groep zitten die verschillende kleuren als losse producten in de groep. Een consument kan ruilen tussen producten binnen de groep. Bijvoorbeeld:
- In een groep zit een rood, wit en geel shirt.
- De consument wil zijn rode shirt ruilen.
- Dit kan voor de producten in die groep.

Groepen kun je bekijken en ook aanmaken/wijzigen via MontaPortal:
![image.png](../../../Attachments/image-fb8fc5f4-0b8f-44a3-b3c2-4659bdab9660.png)

Een groep bestaat uit meerdere producten:
![image.png](../../../Attachments/image-9ec3b44f-f814-47f2-a8ac-f2c001659d09.png)

En een groep heeft ook meerdere instellingen:
![image.png](../../../Attachments/image-5749ea93-6552-4f24-9f7c-b2429d7b14e5.png)

Verder gaan wij via de product imports van verschillende koppelingen deze ophalen. Dit gebeurd al via Magento koppelingen.

We raden aan de naam van groepen die automatisch zijn aangemaakt (via koppelingen), niet aan te passen, omdat die gebruikt worden om de groepen up te daten.

## De ruilenpagina in de RMA
Als een consument één of meerdere “ruil” opvolgacties kiest komt hij vervolgens op de nieuwe ruilpagina, om specifiek dat product te ruilen voor een ander product:
![image.png](../../../Attachments/image-b529a29d-c3f8-46f1-a693-84cc24241e90.png)

In de RMA kan een consument kiezen uit producten die in dezelfde groep zitten als het product wat hij wil ruilen:
![image.png](../../../Attachments/image-b7189792-5e69-44be-bdd3-8ef2b7789de4.png)

Als een consument een vervangend product heeft gekozen kan hij verder. De rest van de RMA loopt zoals vanouds.
![image.png](../../../Attachments/image-90ef0c93-b3fe-4211-a1a6-9ff5a7fd666c.png)

## Opvolgen van ruilen vooraanmeldingen
In de eerste fase van RMA ruilen gebeurd het aanmaken van nieuwe ruilbestellingen nog niet automatisch. Via MontaPortal kunnen handmatig nieuwe bestellingen aangemaakt worden.

Dit kan ten eerste via de detailpagina van een retour vooraanmelding. Daar wordt getoond welke product de consument gekozen heeft om te ontvangen:
![image.png](../../../Attachments/image-b72fc961-568c-4773-9062-1a3684bc31d3.png)

Via een knop bovenaan de pagina kan een nieuwe bestelling gestart worden:
![image.png](../../../Attachments/image-dbbe4497-f97d-478e-b180-0c4b64dd39dc.png)

Vanaf daar kom je op de standaard plek waar op MontaPortal nieuwe orders aangemaakt worden. De producten en het aantal wat de consument heeft bepaald wordt automatisch gezet:
![image.png](../../../Attachments/image-64927ef5-fcca-42f7-bcae-8335c548ed16.png)

Je kunt ook in bulk meerdere nieuwe bestellingen aanmaken, via de retouren overzichts pagina. De gegevens van de originele Eorder worden gebruikt, waarvan onder andere de verzender en het adres.
![image.png](../../../Attachments/image-818675cb-753f-4228-95f9-adb933064978.png)

Achter de schermen worden de vooraanmelding gekoppeld aan de nieuwe ruilbestelling. Ook te zien op de retour detailpagina:
![image.png](../../../Attachments/image-9a284d46-a235-4c72-8868-25dab1cc4e6c.png)

## Andere ruil-gerelateerde instellingen
Hieronder worden enkele andere ruilen-gerelateerd instellingen uitgelicht:

- Custom velden in de RMA omtrent ruilen.

Via de instellingen van je RMA Portaal in MontaPortal kun je zelf stukken tekst toe voegen in de RMA. Voor ruilen zijn hier twee mogelijkheden voor: TradeInInfoOnTradePage en TradeInInfoFieldAtEndOfProcess:
![image.png](../../../Attachments/image-fa6e2561-bdda-4c68-942e-4af2156199ae.png)

Je kunt de taal ook instellen:
![image.png](../../../Attachments/image-bd4f6346-aed2-4cc5-baae-6bcb8709f342.png)

Je kunt dit gebruiken om de gebruiker toe te lichten betreft ruilbestellingen in de RMA. In de RMA worden deze custom velden op de volgende twee plekken getoond, namelijk op de ruilenpagina:
![image.png](../../../Attachments/image-423faa25-7641-4133-81f5-da5abb070b30.png)

En ook aan het eind van de retouraanmelding:
![image.png](../../../Attachments/image-b1c37fbf-4252-4051-9f87-3c49400a3643.png)
