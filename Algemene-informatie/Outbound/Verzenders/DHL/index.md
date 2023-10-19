# DHL

## Varianten

<u>DHL parcel</u><br />
Voor zendingen binnen Nederland. Kunnen niet bij een DHL servicepunt ingeleverd worden voor verzending.

<u>DHL parcel buspakje</u><br/>
Voor zendingen binnen Nederland die door de brievenbus passen. Is goedkoper omdat de bezorger niet hoeft aan te bellen. Kunnen niet bij een DHL servicepunt ingeleverd worden voor verzending.

<u>DHL parcel groot</u><br />
Voor zendingen met DHL Parcel die groter zijn dan eigenlijk door DHL toegestaan waardoor DHL een toeslag zal rekenen.

<u>DHL servicepunt</u><br />
Voor zendingen binnen Nederland naar DHL afhaalpunten. Kunnen niet bij een DHL servicepunt ingeleverd worden voor verzending.

<u>DHL For You</u><br />
Voor zendingen binnen Nederland. Deze kunnen bij servicepunten ingeleverd worden voor verzendingen.

<u>DHL For You buspakje</u><br />
Voor zendingen binnen Nederland die door de brievenbus passen. Is goedkoper omdat de bezorger niet hoeft aan te bellen. Deze kunnen bij servicepunten ingeleverd worden voor verzendingen.

<u>DHL For You pickup point</u><br />
Voor zendingen binnen Nederland naar DHL afhaalpunten.  Deze kunnen bij servicepunten ingeleverd worden voor verzendingen.

<u>DHL Parcel Connect</u><br />
Voor zendingen van Nederland naar een aantal landen binnen de Europese Unie.

Alle gegevens van het pakket worden in een grote QR-achtige barcode op het verzendlabel geprint. In het ontvangst land wordt deze barcode uitgelezen en wordt het pakket aangemeld. De track&trace code werkt dus pas als het pakket aangekomen is in het land van ontvangst.

<u>DHL Parcel Connect Pickup point</u><br />
Voor zendingen van Nederland naar een afhaalpunt in een aantal landen binnen de Europese Unie.

<u>DHL pallet</u><br />
Voor pallet zendingen van Nederland naar een aantal landen binnen de Europese Unie.

<u>DHL Paket</u><br />
Voor zendingen binnen Duitsland. Momenteel ondersteunen de volgende vestigingen deze vervoerder via een directe linehaul:

- Edisonweg
- Weide
- Papland
- Molenaarsgraaf
- Waspik
- Breda
- Krefeld

<u>DHL Paket Internationaal</u><br />
Voor zendingen vanuit Duitsland.



Hiermee kan ook naar Packstations verzonden worden. Dit vereist dat de consument het adres op de juiste manier intypt in de webshop. Zie https://www.dhl.de/en/privatkunden/pakete-empfangen/an-einem-abholort-empfangen/packstation/empfangen-packstation.html.

<u>DHL Europlus</u><br />
Voor zakelijke pakketten van Nederland naar een aantal landen binnen de Europese Unie. Die worden bijvoorbeeld niet na 1700 uur geleverd omdat bedrijven dan dicht zijn.

<u> DHL Warenpost (Internationaal) </u><br/>
Voor zendingen wereldwijd in klein formaat vanuit een vestiging in Duitsland (Krefeld)

## Retouradres

Bij DHL Parcel is het niet mogelijk om een afwijkend retouradres in te stellen. Dit omdat DHL parcel alle retouren van een magazijn verzameld en dan in bulk terugstuurt. Het retouradres is dus altijd het retouradres van het magazijn.

Bij DHL For You is het wel mogelijk om een afwijkend retouradres in te stellen.

## Adresvalidaties en maximale lengte velden

<u>DHL parcel (incl buspakje, servicepunt en groot)</u><br />
- Niet mogelijk naar postbussen
- Huisnummer: verplicht, moet numeriek zijn, niet langer dan 5 cijfers
- Huisnummer toevoeging: mag niet langer zijn dan 7 karakters

Bij de digitale aanmelding van de zending bij DHL:
- Naam: wordt afgekapt na 100 karakters
- Plaats (stad): de aanmelding gaat fout als de plaats langer is dan 80 karakters

Bij DHL servicepunt zendingen:
- Bedrijfsnaam verplicht
- Factuuradres is verplicht. Deze moet de gegevens bevatten van de consument die het komt afhalen, zodat DHL dit kan controleren.
- In de verzender opties moet de code van het servicepunt ingevuld zijn.

<u>DHL Parcel Connect (incl pickup point)</u>
- Straat: mag niet langer zijn dan 35 karakters
- Huisnummer: indien ingevuld mag het niet langer zijn dan 35 karakters
- Huisnummer toevoeging: indien ingevuld mag het niet langer zijn dan 35 karakters
- Postcode: mag niet langer zijn dan 9 karakters
- Plaats (stad): moet ingevuld zijn en mag niet langer zijn dan 35 karakters

Bij zendingen naar een pickup point:
- Factuuradres is verplicht. Deze moet de gegevens bevatten van de consument die het komt afhalen, zodat DHL dit kan controleren.
- In de verzender opties moet een aantal gegevens van het pickup point ingevuld zijn.
- Als het pickup point een Packstation is (kluisje) dan moet er ook een Postnummer ingevuld zijn in de shipper opties. De consument moet deze ingevuld hebben in de webhshop. Hiermee kan de consument zijn order afhalen uit het kluisje. Zie https://www.dhl.de/de/privatkunden/hilfe-kundenservice/packstation/allgemein.html.

<u>DHL Pallet</u>

Geen extra validaties.

<u>DHL Paket</u>

Als het huisnummer veld niet ingevuld is halen we dit uit de straat. Dit nummer mag niet aan het begin staan.

Wat betreft packstations: We lezen alle adresregels uit. We zoeken dan of er in het adres de naam ‘packstation’, gevolgd door een nummer voorkomt. Voor het postnummer zoeken we naar het hoogste getal in de adresvelden. Dit kunnen we doen omdat het postnummer altijd uit 7 getallen of meer bestaat. Kunnen we geen matchend postnummer vinden, dan blokkeren we de order. Want een postnummer is verplicht bij een packstation.

<IMG  src="https://dev.azure.com/MontaDevelopment/5fff3e6e-27f7-4963-9439-e37495beaca7/_apis/git/repositories/14fd90f4-c987-4606-9344-d763c8ce81ad/Items?path=/.attachments/image-a58a9ddf-1cd7-4ef5-9e4c-9469154447f1.png&amp;download=false&amp;resolveLfs=true&amp;%24format=octetStream&amp;api-version=5.0-preview.1&amp;sanitize=true&amp;versionDescriptor.version=main"  alt="image.png"/>
