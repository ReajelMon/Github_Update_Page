# Dataflow Information

## Purchase order export
Momenteel kunnen wij (voor nu alleen ExactOnline) in montaportal aangemaakte inkoopordes exporteren naar platformen.
Het is van belang dat de klant een referentie meegeeft in de inkooporder. Dit is benodigd voor de andere dataflows.
Als dit niet wordt gedaan, worden er dubbele inkooporders geïmporteerd uit de platformen.

Daarnaast wordt er pas een planning aangemaakt wanneer een inbound forecast wordt aangemaakt.
Er zijn te veel scenario's waar rekening gehouden moet worden als er producten zijn zonder inbound forecast.

Voor de purchase order export wordt er een request gedaan voor de suppliers (bij ExactOnline ook een aparte request voor de account items).
Voor de benodigde settings, zie de "[Dataflow Settings](../../../../Algemene-informatie/Koppelingen/1.-Koppelingen-dataflow/Dataflow-Settings)" pagina voor meer informatie.
Suppliers waar wij een match hebben gevonden, worden opgeslagen in _tblRelatieSystemConnectionDataFlowSupplierMatch_.
Verder wordt er ook gekeken op basis van de "SupplierTitle", als de supplier al een entry heeft in de volgende database tabel _tblPortalPurchaseSuppliers_.
Indien deze nog niet bestaat, wordt een nieuwe entry aangemaakt.
