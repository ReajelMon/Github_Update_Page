# Dropshipment

Dropshipment is dat de leverancier van een klant zelf de orders verzend.

Aangezien er dus geen voorraad van de leverancier aanwezig is, komen de orders in backorder. Het is natuurlijk mogelijk de backorder handmatig te verwijderen uit Montaportal en de dropshipper de orderinformatie te sturen zodat die de order kan gaan verwerken.

Om dit handwerk te voorkomen zijn verschillende mogelijkheden. Hierin moet onderscheid gemaakt worden in:

1. De dropshipper werkt ook met Monta, wat op twee manieren kan:
* De dropshipper heeft het fulfilment ondergebracht in een magazijn van Monta
* De dropshipper doet het fulfilmet zelf met de MontaWMS software
2. De dropshipper werkt niet met Monta

Ook kan de klant de wens hebben om de voorraad van de dropshipper mee te tellen in de voorraadkoppeling naar de webshop.

## De dropshipper werkt ook met Monta

### Orders

Om dit op te zetten moet als eerste bij de klant een apart kanaal worden gemaakt voor de dropship orders. Dit kanaal moet worden gekoppeld aan het magazijn waar de voorraad ligt. Dit kan een magazijn zijn van Monta, die het fulfilment doet voor de dropshipper, of een eigen magazijn van de dropshipper als die MontaWMS gebruikt.

Vervolgens kan op twee manier ingeregeld worden dat de orders worden omgezet naar die origin:

1. Bij de klant kan worden ingesteld dat alle orders worden omgezet naar het magazijn waar de voorraad is.
2. Bij de supplier kan het ID van het magazijn worden ingesteld waar de order naartoe omgezet worden worden.

Het verschil is dat smaak 1 alleen werkt als er voorraad is van de producten in het andere magazijn. Bij smaakt 2 worden ook backorders omgezet naar het kanaal wat gekoppeld is aan dat magazijn.

Smaak 1 kan ook als nadeel hebben dat alle orders worden omgezet naar het magazijn waar de voorraad is, terwijl dit soms alleen gewenst is voor orders van die supplier.

### Voorraad

Via een [groothandel koppeling](../../Algemene-informatie/Voorraadbeheer/Wholesale) kan voorraad van de dropshipper klant beschikbaar worden gemaakt worden voor de klant die het verkoopt.

Bij het omzetten van de orders wordt dan ook de voorraad in het magazijn intern omgeboekt van de dropshipper naar de klant.

Het dropship systeem bied ook de mogelijk om aan de dropshipper te laten zien hoeveel er in backorder staan van een product bij de klant die het verkoopt. Voor het geval de dropshipper achteraf inkoopt. De orderinformatie zelf krijgt de dropshipper pas de zien als de order is omgezet.

## De dropshipper werkt niet met Monta

### Orders

Aangezien de dropshipper niet met Monta werkt, moeten de orders uit de backorders gehaald worden. En liefst moet ook automatisch de dropshipper geïnformeerd worden.

Hiervoor zijn verschillende oplossingen:

1. Automatisch orderregels van bepaalde producten verwijderen
2. Individuele orders automatisch op shipped zetten en mailen naar de dropshipper
3. Op vaste momenten alle orders handmatig op shipped zetten en mailen naar de dropshipper
4. Op vaste momenten alle orders automatisch op shipped zetten en mailen naar de dropshipper

#### Automatisch orderregels van bepaalde producten verwijderen

Bij de split- and added products kan ingesteld worden dat bepaalde producten automatisch uit de orders verwijderd worden.

Nadelen zijn:
- de dropshipper wordt niet automatisch geïnformeerd wordt over de order
- als een order alleen zulke producten heeft blijft een lege order over die wordt geblokkeerd

Ondanks de nadelen kan dit een prima oplossing zijn in sommige situaties.

#### Individuele orders automatisch op shipped zetten en mailen naar de dropshipper

Er kan ingesteld worden dat orders van producten van de dropshipper automatisch op shipped worden gezet, en dat er een mailtje met de order informatie naar de dropshipper wordt gestuurd.

Als een order deels ge-dropshipt moet worden, wordt deze gesplitst.

Dit wordt toegepast op de orders als ze in backorder zouden gaan. Dus als de klant toch eigen voorraad heeft van de producten, gaat de order niet in backorder en worden ze niet op shipped gezet en naar de supplier gemaild.

Dit kan door IT ingesteld worden.



In tblPortalPurchaseSuppliers moeten de kolommen SetOrdersDropshipped en MailOrdersToSupplier op 1 gezet worden.

Ook moet een e-mail template ingesteld worden met type OrderToSupplier. Dit template wordt gebruikt voor de e-mail naar de klant.



#### Op vaste momenten alle orders handmatig op shipped zetten en mailen naar de dropshipper

Als het om veel orders gaat, is het niet handig dat de dropshipper veel losse mailtjes binnenkrijgt. Daarom is het ook mogelijk om op vaste momenten meerdere orders tegelijk te verwerken.

Op de supplier details pagina kan geklikt worden op de knop [Put all backorders from this supplier on shipped (dropship)]. Deze zet de orders van producten van die supplier automatisch op shipped. Hierbij wordt ook een Excel gegenereerd met alle productinformatie, de verstuurd kan worden naar de dropshipper.

#### Op vaste momenten alle orders automatisch op shipped zetten en mailen naar de dropshipper

In deze smaak wordt de voorgaande smaak geautomatiseerd. Dit kan op Montaportal ingesteld worden.



De geplande taak SupplierDropshipper voert het uit.



### Voorraad

Er zijn twee mogelijkheden om voorraad van de dropshipper beschikbaar te maken voor de klant.

1. Een apart magazijn maken en daar de voorraad in importeren
2. Een aparte Montaportal omgeving maken de voorraad delen met het [groothandelsysteem](../../Algemene-informatie/Voorraadbeheer/Groothandelsysteem)

Smaak 1 heeft als nadeel dat voorraad uit een ander magazijn ook wordt gerekend als beschikbare voorraad in het inkoopsysteem. Het inkoopsysteem zal dus niet de suggestie geven om de producten in te kopen omdat ze al op voorraad zijn. Terwijl de wens kan zijn om het inkoopsysteem juist te gebruiken om in te kopen bij de dropshipper.
