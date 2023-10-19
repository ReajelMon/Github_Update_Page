# Koppeling maken CCV Shop

1) Vraag aan de klant de Base URL, Client ID & Client Secret. Deze kun je in de backend van CCV Shop aanmaken: Mijn Webshop / Instellingen / API Instellingen. Als deze instellingen niet zichtbaar zijn, kan het zijn dat de klant de API App moet installeren uit de CCV Shop Appstore.

2) Maak de platform Settings aan in de _tblRelatieSystemConnectionPlatformCCVShopSettings_ en onthoud de ID / CCVShopPlatformSettingsID

3) Maak de relatiesystemconnections aan in tblRelatieSystemConnections. Dit zijn de dataflows die ondersteund worden:

53	Product Information Import - CCV Shop <br>
54	Order Import - CCV Shop<br>
55	Changed Stock Update - CCV Shop<br>
57	Order Update - CCV Shop<br>
62	Full Stock Update - CCV Shop<br>

en noteer de RSCID's die je hebt aangemaakt.

4) Maak de type settings aan voor elke dataflow die je wilt gebruiken. Zowel de Stock update (62) als de Changed (55) kunnen in  _tblRelatieSystemConnectionTypeStockUpdateCCVShopSettings_

5) Maak de dataflow settings aan voor elke dataflow die je wilt gebruiken. Vergeet hier de tblRelatieSystemConnectionDataFlowOrderUpdateStatussesOnly niet.

Zorg dat je geen _ProductMatchRelatieSystemConnectionID_ meegeeft, in de _tblRelatieSystemConnectionDataFlowStockUpdateSettings_. Anders werkt hij niet aangezien CCV geen selling products optie heeft.


