# Koppeling maken MijnWebWinkel

[Vraag aan de klant de Merchant token](https://www.mijnwebwinkel.nl/support-resources/vraag-antwoord/hoe-maak-ik-een-token-aan-voor-mijn-verzendpartner). Monta is geen erkende verzendpartner, de klant moet dus een algemene token genereren.

### **1) Platform settings**
Maak de platform Settings aan in de `tblRelatieSystemConnectionPlatformMyOnlineStoreSettings` en onthoud de ID / MyOnlineStorePlatformSettingsID



### **2) Relatie System Connections**


Maak de relatiesystemconnections (inactief) aan in tblRelatieSystemConnections.  Dit zijn de dataflows die ondersteund worden:
| ID |  DESCRIPTION|
|--|--|
|29|Product Information Import - MyOnlineStore (Mijnwebwinkel)  |
|31|Order Import - MyOnlineStore (Mijnwebwinkel)  |
|33|Order Update - MyOnlineStore (Mijnwebwinkel)  |
|132|Product Match - MyOnlineStore (Mijnwebwinkel)  |
|133|Full Stock Update - MyOnlineStore (Mijnwebwinkel)  |
|134|Changed Stock Update - MyOnlineStore (Mijnwebwinkel)  |
|146|Changed Product Match - MyOnlineStore (Mijnwebwinkel)  |



en noteer van de nieuwe regels die je hebt aangemaakt het ID. Dit is nu het RelatieSystemConnection ID (RSCID).

###**3) RSC Type settings**
Maak de type settings aan voor elke dataflow die je wilt gebruiken. Ga hiervoor naar de tabellen:

Product Match: `tblRelatieSystemConnectionTypeMyOnlineStoreSettings` en `tblRelatieSystemConnectionTypeProductMatchMyOnlineStoreSettings` <br>

Product Information Import:`tblRelatieSystemConnectionTypeProductInformationImportMyOnlineStoreSettings` <br>

Order Import:`tblRelatieSystemConnectionTypeMyOnlineStoreSettings`<br>

Order update:`tblRelatieSystemConnectionTypeMyOnlineStoreSettings` <br>

Full Stock Update:
`tblRelatieSystemConnectionTypeStockUpdateMyOnlineStoreSettings` <br>

Changed Stock Update:
`tblRelatieSystemConnectionTypeStockUpdateMyOnlineStoreSettings`<br>

Changed Product
Match:`tblRelatieSystemConnectionTypeMyOnlineStoreSettings`<br>

###**4) Dataflow settings**
Maak de dataflow settings aan voor elke dataflow die je wilt gebruiken.
Vergeet hier de tblRelatieSystemConnectionDataFlowOrderUpdateStatussesOnly niet.

###**5) Maak een backgroundjob aan**
Dit kan met de volgende query:


```
insert into tblBackgroundJob(SecondaryId, JobId, JobGuid, BackgroundJobTypeId, CustomerId, Created, MachineName)
values('MyOnlineStore',{PK van tblRelatieSystemConnectionPlatformMyOnlineStoreSettings}, NEWID(), 1, {Relatie-id van de klant}, GETDATE(), 'MP-WEB08')
```


