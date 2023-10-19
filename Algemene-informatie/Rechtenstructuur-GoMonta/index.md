# Rechtenstructuur GoMonta

In GoMonta heeft een medewerker heeft een rol die bepaald wat hij/zij mag. Elke medewerker heeft ook toegang tot één of meer magazijnen. Wat een medewerker mag (via de rol) mag hij/zij in alle magazijn weer hij/zij toegang toe heeft.

Hieronder volgt een beschrijving van elke rol (van weinig rechten naar veel rechten).

## Productiemedewerker

Een productiemedewerker mag in de Inbound en Voorraadbeheer alleen gegevens bekijken en niks bewerken. Verder heeft deze rol geen toegang tot de Outbound, Customer service en het Admin gedeelte.

Bij de Inbound mag deze rol gegevens inzien van het Inbound dashboard, Inbound forecasts, Inbound forecasts per product en het Koppelen. Bij de Inbound forecasts mag hij de volgende acties niet: Niet-voorgemelde groep aanmaken, Inbounden en een Inbound verwijderen. Bij het Koppelen mag de Productiemedewerker wel een TT01-label downloaden maar mag hij geen TT01 koppelen en verwijderen. Verder mag de Productiemedewerker geen gegevens inzien van de Retouren en Magazijn Inbound Instellingen.

Bij de Voorraadbeheer mag deze rol gegevens inzien van de Actuele voorraad, Materialen, Magazijn locaties en Voorraadboekingen. Bij Materialen mag hij alleen gegevens inzien en niet aanpassen. Ook kan hij de volgende acties voor een materiaal niet: Verplaatsen, Correctieboeking, Opboeken en Omboeken. Ditzelfde geldt ook bij Magazijn locaties. Tot slot, een productiemedewerker heeft bij de Voorraadbeheer geen toegang tot Download verplaats labels, Product Import, Cycle count, Voorraad Mutatie Goedkeuring en de Voorraadbeheer instellingen.

## Probleemoplosser

Een Probleemoplosser mag in de Inbound, Voorraadbeheer en Outbound gegevens bekijken en gedeeltelijk aanpassen. Verder heeft deze rol geen toegang tot Customer service en het Admin gedeelte.

Bij de Inbound mag deze rol even veel als de rol Productiemedewerker alleen kan hij meer acties uitvoeren. De acties die een Probleemoplosser meer kan uitvoeren zijn Inbound forecasts: Niet-voorgemelde groep aanmaken, Inbounden en Verwijderen, Koppelen: Een TT01 Koppelen, Verwijderen en een label downloaden. Verder mag de Probleemoplosser geen gegevens inzien van de Retouren en Magazijn Inbound Instellingen.

Ditzelfde geldt voor de Voorraadbeheer, hier kan de Probleemoplosser even veel inzien maar kan meer acties uitvoeren. Zo kan de Probleemoplosser bij Materialen de basis gegeven aanpassen en open orders per materiaal bekijken. De Probleemoplosser mag geen Excel export maken van Actuele Voorraad, Materiaal aanmaken, Materiaal instructies aanpassen, Efulfilment instellingen aanpassen, Materiaal verplaatsen, Correctieboeking, Opboeken andere locatie, Omboeken​ en bij de Voorraad Mutatie Goedkeuring.

De Probleemoplosser heeft ook toegang tot de Outbound. Hierin kan hij bij de Outbound dashboard, Orders overzicht, Tegen gehouden orders en Actuele Jokers. Bij de Order details kan hij pickbon en attachments downloaden, Adres aanpassen, Verzender aanpassen, Echeck en Shipment resetten. Hij mag hier geen Orders splitten, echecken, shipped zetten en als runner markeren. Bij de Tegen gehouden orders mag een Probleemoplosser wel een Replenishment export maken maar geen Volle pallets resetten. Hij heeft geen toegang tot de pagina's Delayed@Shipper, Runner orders, Bulkpickbonnen, Kratten, Pickingstyle, Orders zonder pickbon, Verzenders en Magazijn outbound instellingen.

## Shiftleader

Een Shiftleader mag in de Inbound, Voorraadbeheer en Outbound gegevens bekijken en gedeeltelijk aanpassen. De Shiftleader mag meer aanpassen dan een Probleemoplosser. Verder heeft deze rol geen toegang tot Customer service en het Admin gedeelte.

Bij de Inbound mag een Shiftleader hetzelfde als een Probleemoplosser, alleen mag hij in tegenstelling tot een Probleemoplosser wel in het Retouren scherm kijken. De Shiftleader mag hierin alleen kijken en geen Retouren verwijderen. Verder mag de Shiftleader geen gegevens inzien van de Magazijn Inbound Instellingen.

Bij de Voorraadbeheer kan een Shiftleader hetzelfde als een Probleemoplosser maar mag hij wel een Excel export maken van Actuele Voorraad, Materiaal instructies aanpassen, Efulfilment instellingen aanpassen, Materiaal verplaatsen, Correctieboeking, Opboeken andere locatie, Omboeken, Cycle Count, Voorraad Mutatie Goedkeuren en kan hij bij Download verplaats labels. Hij heeft geen toegang tot een Materiaal aanmaken, Product Import en Voorraadbeheer instellingen.

Bij de Outbound mag een Shiftleader alles behalve de Afhaaltijden aanpassen bij de Verzenders. Hij heeft toegang tot Delayed@Shipper, Runner orders, Bulkpickbonnen, Kratten, Pickingstyle, Orders zonder pickbon, Verzenders, Outbound dashboard, Orders overzicht, Tegen gehouden orders, Actuele Jokers en Magazijn outbound instellingen. Bij de Order details kan hij pickbon en attachments downloaden, Runner Markeren, Echecken, Shipped zetten, Order splitten, Adres aanpassen, Verzender aanpassen, Echeck en Shipment resetten. Bij de Tegen gehouden orders mag hij een replenishment export maken, Volle pallets resetten en Orders doorzetten naar scanner. Bij Bulkpickbonnen mag hij bulkpickbonnen downloaden en resetten. Bij Kratten mag hij een Krat geschiedenis export maken. Tot slot, mag een Shiftleader ook Pickbonnen aanmaken en downloaden van Orders zonder pickbon.

## Magazijn coördinator

Een Magazijn coördinator mag in de Inbound, Voorraadbeheer, Outbound en Customer service. Het Customer service gedeelte is alleen toegankelijk voor Monta medewerkers en dus niet voor bijvoorbeeld de Makro of AkzoNobel medewerkers. Een Magazijn coördinator kan alles in de Inbound, dus ook in het Retouren scherm een retour verwijderen en heeft hij toegang tot de Magazijn Inbound instellingen. Bij de Voorraadbeheer kan hij ook alles, behalve een Materiaal aanmaken en een Product Import. In tegenstelling tot een Shiftleader kan een Magazijn coördinator wel bij de Voorraadbeheer instellingen. Bij de Outbound mag een Magazijn coördinator ook alles, dus ook de Afhaaltijden aanpassen van Verzenders. Bij de Customer service heeft hij maar toegang tot een scherm, namelijk de Bedrijfsstatistieken. Verder heeft deze rol geen toegang tot het Admin gedeelte.

## Customer service

De rol Customer service mag alles in de Inbound, Voorraadbeheer en Outbound. Customer service mag dus in tegenstelling tot een Magazijn coördinator wel een Materiaal aanmaken en een Product import. Verder heeft deze rol geen toegang tot het Admin gedeelte.

De rol Customer service heeft natuurlijk toegang tot Customer service. Hierin mag hij bij de Bedrijfsstatistieken, Verkoopfacturen aanmaken/gegenereerde/planning, Relaties (ook aanpassen), Esettings (ook aanpassen) en Bezoekers inplannen. Hij heeft geen toegang tot het resetten van een verkoopfactuur en tot de MontaCast.

## Vestigingsmanager

De rol Vestigingsmanager mag alles in de Inbound, Voorraadbeheer en Outbound. Bij Customer service mag een Vestigingsmanager hetzelfde als de rol Customer service, maar mag hij in tegenstelling tot de rol Customer service wel bij de MontaCast. Verder heeft deze rol geen toegang tot het Admin gedeelte en heeft geen toegang tot het resetten van een verkoopfactuur

## Finance

De rol Finance mag alles in de Inbound, Voorraadbeheer en Outbound. Bij Customer service mag de rol Finance hetzelfde als de rol Vestigingsmanager, maar mag hij wel Verkoopfacturen resetten. Verder heeft deze rol geen toegang tot het Admin gedeelte.

## P&O

De rol P&O mag alles in de Inbound, Voorraadbeheer en Outbound. Bij Customer service mag de rol P&O hetzelfde als de rol Vestigingsmanager. Verder heeft deze rol geen toegang tot het Admin gedeelte.

## Sales/Marketing

De rol Sales/Marketing mag alles in de Inbound, Voorraadbeheer en Outbound. Bij Customer service mag de rol Sales/Marketing hetzelfde als de rol Vestigingsmanager. Verder heeft deze rol geen toegang tot het Admin gedeelte.

## Magazijn admin

De rol Magazijn admin mag alles in de Inbound, Voorraadbeheer en Outbound. Bij Customer service mag de rol Magazijn admin hetzelfde als de rol Vestigingsmanager. Verder heeft deze rol wel toegang tot het Admin gedeelte, waarin hij bij het Gebruikersbeheer kan. In het Gebruikersbeheer kan hij gebruikers aanmaken, aanpassen en wachtwoorden aanpassen.

## Directie

De rol Directie mag alles in de Inbound, Voorraadbeheer en Outbound. Bij Customer service mag de rol Directie hetzelfde als de rol Vestigingsmanager. Verder heeft deze rol geen toegang tot het Admin gedeelte.

## IT

De rol IT mag alles in de Inbound, Voorraadbeheer en Outbound. Bij Customer service mag de rol IT hetzelfde als de rol Vestigingsmanager, dus geen Verkoopfacturen resetten. Verder heeft deze rol wel toegang tot het Admin gedeelte. In het Admin gedeelte kan hij Gebruikers, Printers, Echeck stations, Inbound stations, Picking scanners, Internal Rest Credentials en Toggle features beheren. Hij mag geen Rollen beheren.

## IT Advanced

De rol IT Advanced mag alles in de Inbound, Voorraadbeheer, Outbound en Customer service. Verder heeft deze rol wel toegang tot alles in het Admin gedeelte. De rol IT Advanced kan dus ook Verkoopfacturen resetten en Rollen beheren.

​
