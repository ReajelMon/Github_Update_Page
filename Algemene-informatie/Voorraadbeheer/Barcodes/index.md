# Barcodes

## Barcode scannen

Een barcodescanner functioneert als een toetsenbord. De barcodescanner vertaalt de streepjes naar tekens (letters, cijfers, etc) en voert deze in in de software. De ingevoerde tekens worden vergeleken met de barcodes van de producten om het product te vinden.



## GS1 barcodes

Sommige producten bevatten GS1 barcodes. Deze zijn te herkennen aan de (..) in de code. De haakjes zijn alleen verwerkt in de geprinte tekst. De barcode zelf ‘scant’ alleen de nummers tussen de haakjes.

GS1 barcodes bevat een ‘encoded’ EAN. Dat wil zeggen dat e.e.a. omgerekend moet worden om EAN uit deze code te filteren. Zie https://www.omnicalculator.com/finance/gtin-check-digit voor meer info.

Naast GTIN/EAN kan een GS1 barcode ook informatie over Batch, THT, hoeveelheid in omdoos, etc bevatten. https://www.gs1.org/standards/barcodes/application-identifiers


In de meeste Monta-applicaties zal bij het scannen van een GS1 code automatisch de EAN berekend worden.
