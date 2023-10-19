# Koppeling maken

## Benodigde gegevens

Description
BaseUrl: https://api.plugandpay.nl/v2/
RelatieId
ApiKey

![image.png](../../../../../Attachments/image-ea4cb29c-060d-4ca1-b62e-8ed328c5aa56.png)

Hierna dient er nog een orderimport dataflow toegevoegd te worden:

tblRelatieSystemConnectionTypes
Zoek hier het ID op van de orderimport dataflow van Plug&Pay

![image.png](../../../../../Attachments/image-a7aed00f-3efe-411c-975c-f4a8ebed5a7e.png)

De relatieconnection gaan we dan aanmaken via: tblRelatieSystemConnections
Hier maken we een nieuwe entry en geven we het RelatieID en TypeID in en zetten we de kolom Disabled op True.

tblRelatieSystemConnectionTypeOrderImportPlugAndPaySettings

![image.png](../../../../../Attachments/image-fd4179b3-3718-4607-838c-e95d2a83c8a3.png)

Maak ten slotte de dataflow instellingen aan in tblRelatieSystemConnectionDataFlowOrderImportSettings en vergeet het DefaultEsettingsID niet in te vullen.
![image.png](../../../../../Attachments/image-cac02c4d-50f4-4967-9a4b-06225285ba8f.png)
