# Label Applicator (S Lane)

## S-Lane sticker applicator
Als een product in eigen verpakking verzonden mag worden, kan het handig zijn om gebruik te maken van een automatische S-Lane. Bij deze manier van echecken wordt het verzendlabel automatisch op de doos van het product geplakt.
Hierdoor zit het label altijd recht, en op de zelfde plek op de doos.

Het echeck proces is bijna hetzelfde als S bulk echecken. Zorg ervoor dat je bij het picken sorteert op de juiste klant. Het is namelijk niet handig als je producten in moet pakken in een drager bij dit proces.

Bij het verwerken scan je de producten 1 voor 1. Na het scannen plaats je het product op de rollenbaan, en duw je het tegen de achtergeleiding. Vervolgens duw je het product over de rollenbaan, tot deze gaat draaien. Je kunt nu verder met het volgende product. De stickerkop plakt automatisch het label op het product.

![label applicator.JPG](../../../Attachments/label%20applicator-545aca14-a26e-460e-a72c-83b39a255d18.JPG)



********** De informatie hieronder is meer van technische aard **********

![Afdeling - IT - man.png](../../../Attachments/Afdeling%20-%20IT%20-%20man-c6f3a96e-0f99-4c12-a056-0044eca0df99.png)
## Technische informatie bij de Label Applicator
De S-Lane is een gewoon echeckstation waar een lokale printer op geïnstalleerd is. Bij het instellen van het station is deze printer gekozen als labelprinter.

S-Lane 1 in Breda is uitgevoerd met een Codipack labelapplicator met een Evolabel t43 printer. De driver voor deze printer is lokaal geïnstalleerd.

Er is geen koppeling tussen de echeck en de rollenbaan. De baan gaat draaien zodra de sensor een product ziet.

![Aansluiting pc S-Lane 01.png](../../../Attachments/Aansluiting%20pc%20S-Lane%2001-edae7130-3c9d-4e42-9cfe-f27eb642a1ca.png)
De printer zit via een lokaal netwerk verbonden met de MONPC.

De printer heeft het vaste ipadress 172.19.7.180.

De MONPC heeft een vast ipadress 172.19.7.179.

Beide hebben een subnetmask van 255.255.0.0

Het is van belang dat de standaardgateway bij beide devices wordt ingevuld, anders kunnen ze elkaar niet vinden bij het installeren van de drivers.

De standaardgateway is 172.19.7.1

### [Evolabel QuickTamp G2 Applicator (SW G2) Manual 2.5.0 EN.pdf](https://montanl.sharepoint.com/:b:/s/RandD/EWpNp0fFxIhKtEb9SGOwg5wBgCUpSJpYZycHnJ_s8Qni6g?e=ezNOdr)


### [Evolabel User Manual (SW G2) - 2.1.0 - nl.pdf](https://montanl.sharepoint.com/:b:/s/RandD/EcVx1Neu6x9BiryRHPtjsaMBRvLh8jOTpeTZXSOwiB2mvQ?e=xTe7e9)


