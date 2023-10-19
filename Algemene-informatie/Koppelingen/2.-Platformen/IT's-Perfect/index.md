# IT's Perfect

IT's perfect is een ERP systeem voor Fashion.

Klanten sluiten hun webshop aan op IT's perfect en IT's perfect stuurt de orders weer door naar Monta. Dit gaat via een XML over FTP koppeling. Zie [Koppelingen - XML over FTP](../../../../Algemene-informatie/Koppelingen/2.-Platformen/FTP/XML-over-FTP) voor meer informatie.




## IT's Perfect koppeling maken

- 2 Esettings (B2C en B2B) en Montaportal maken
- RelatieSystemConnectionID's Jacky Luxury opschrijven: PII 10683, OI 10678, OU 10679, FSU 10686, RRU 10685, IFI 10682, IU 10681
- Mappen Jacky Luxury kopiëren en prefix van aanpassen in FTP op extern bureaublad
- FTP gebruiker Jacky Luxury kopiëren en prefix aanpassen en nieuw wachtwoord instellen
- RelatieSystemConnectionTypes met PlatformID 9 opschrijven (PI 61, OI 32, OU 35, FSU 67, RRU 65, IFI 51, IU 45)
- RelatieID Jacky Luxury en nieuwe klant opschrijven: 27668 -> 27794
- EsettingID's opschrijven: 4979 & 4980 -> 5221 & 5222
- RelatieSystemConnections aanmaken met disabled op true
- RelatieSystemConnectionID's nieuwe klant opschrijven: 12212, 12213, 12215, 12216, 12217, 12218, 12219 -> 12249 t/m 12255
- DataFlows aanmaken met nieuwe RelatieSystemConnectionID's
- PlatformFtpSettings kopiëren en relatiesystemconnectionID's, prefixes en relatieID aanpassen
- Type Inbound/OrderStatusUpdate FtpXmlSettings aanmaken
- DataflowOrderImportSettingsOrigins van Jacky Luxury kopiëren
- Configmappen kopiëren naar \\montapacking.nl\dfs\Appdata\RelatieSystemConnections



## FAQ

### 1. backorders

Een backordersplits kan worden gemaakt op 2 momenten:
1.	Bij het importeren
2.	Achteraf in de Montaportal of echeck.

Deze twee manieren worden ook verschillend afgehandeld.

1.	Bij het importeren:
Als je wilt dat Monta® nooit de backorder vasthoudt dan kan Monta® de Backorderhandeling aanzetten.
Dit betekent dat we bij het importeren de niet voorradige orderlines verwijderen uit de orders.
Vervolgens zetten we na het verzenden van de order de verzonden orderlines op afgehandeld in Itsperfect.
De overige orderlines komen op backorder in Itsperfect, en daar creëren ze een nieuwe order voor deze producten zodra er voorraad is.
Als er tijdens het importeren blijkt dat we helemaal geen van de artikelen kunnen versturen wordt de gehele order geannuleerd in ITsperfect.

2.	Achteraf in de Montaportal of echeck.
Als je in de Montaportal of via de echeck een backorder maakt is het van belang dat de -1 order wordt verwijderd.
Monta® zet de verzonden orderlines op afgehandeld in Itsperfect.
De overige orderlines komen op backorder in Itsperfect, en daar creëren ze een nieuwe order voor deze producten zodra er voorraad is.
**Als we een -1 order versturen dan wordt dit nooit teruggekoppeld richting ItsPerfect.**


### 2. Verwijderde orders
Als een deel van de order niet op voorraad stuurt Monta® de 0 terug via de Backorderhandeling. Want als we de producten die wel op voorraad zijn verstuurd hebben, sturen we een bericht naar ITSP met de verzonden producten. ITSP ziet dan de producten die er niet in zitten en die worden dan ook bij ITSP geannuleerd.

Als een order helemaal niet verzonden wordt, omdat ze in Montaportal verwijderd worden, stuurt Monta® de order met aantal 0 in de regels.



