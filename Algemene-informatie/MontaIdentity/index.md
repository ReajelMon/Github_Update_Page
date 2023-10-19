# MontaIdentity

## Monta gebruiker aanmaken

Om een gebruiker toegang te geven tot GoMonta moet deze aangemaakt worden in GoMonta en daarna in MontaIdentity.

Ga naar het gebruikersbeheer in GoMonta. Vul een email en naam in. Optioneel kan er een rol gekozen worden, welke geldt voor GoMonta en de interne processen.

Ook kan er aangegeven worden tot welke magazijnen de gebruiker toegang heeft (systeem technisch).

Als laatste kan er een badge toegevoegd worden. Met deze badge kan een gebruiker inloggen in de interne applicaties (Echeck, Inbound, Retouren, handscanners, enz.).

![new user identity 1.png](../../Attachments/new%20user%20identity%201-4107df69-04ca-4626-95fa-e7088a2d3015.png)

Na het aanmaken van een nieuwe gebruiker komt er een schermpje naar boven. Hierop staat wat informatie vermeld die nodig is om een gebruiker aan te maken in het nieuwe Identity.

![new user identity 2.png](../../Attachments/new%20user%20identity%202-4d792fc6-5f16-4124-8e90-8357886a6276.png)

 
Mocht het schermpje niet naar boven komen of wordt het per ongeluk weg geklikt, kan deze informatie ook teruggevonden worden bij de details van een gebruiker.

![new user identity 3.png](../../Attachments/new%20user%20identity%203-435c682e-bc21-4213-8df2-8d6a9cbca152.png)

Vervolgens moet de gebruiker dus aangemaakt worden in het nieuwe Identity systeem (https://identity.monta.nl).
Na het inloggen kom je standaard op je eigen profiel pagina. Wanneer je admin rechten hebt, krijg je linksboven een menu te zien. Klik daar op het tabje “Users”.

![new user identity 4.png](../../Attachments/new%20user%20identity%204-eb27b7d6-9b61-494f-8d89-1adde0824763.png)


Bij de mobiele weergave moet er eerst op de ingelogde gebruiker geklikt worden. Dit opent een dropdown, met dezelfde menu items.

![new user identity 5.png](../../Attachments/new%20user%20identity%205-88775c33-f5a6-4816-9403-3bee7a2127b2.png)

Het gebruikersoverzicht wordt geopend. Rechtsboven staat de knop “Create new”.

![new user identity 6.png](../../Attachments/new%20user%20identity%206-99a2ffda-fb0a-465d-a33e-ee790097cc49.png)
 

Het aanmaken van een nieuwe gebruiker in het nieuwe Identity systeem, bestaat uit een aantal stappen.

Stap 1: de basis informatie van de gebruiker.

Vul hier de gegevens in, die ook gebruikt zijn in GoMonta, zoals het email-adres en de Guid. Voor de gebruikersnaam wordt ook het email-adres gebruikt.

![new user identity 7.png](../../Attachments/new%20user%20identity%207-c9d2ea4c-7bd9-4489-8054-be2dea6fee7d.png)

Stap 2: voer een wachtwoord in.

Hier moet een sterk wachtwoord ingevuld worden.

![new user identity 8.png](../../Attachments/new%20user%20identity%208-a1e51c90-cc90-46c3-8017-38f0edba033e.png)

De gebruiker verschijnt dan in de lijst en kan inloggen.

![new user identity 9.png](../../Attachments/new%20user%20identity%209-bb363141-8ccb-4c66-b559-751ec3152df4.png)

Voor @monta account gaat het iets simpeler. Hiervoor is alleen stap 1 nodig. Vervolgens wordt er automatisch herkent dat het account via AD moet gaan inloggen.

![new user identity 10.png](../../Attachments/new%20user%20identity%2010-14ffae25-e5da-4fa2-a74c-910b4b8c095a.png)

## Rollen in MontaIdentity

Algemene rollen:

* Superadmin: je mag alle users beheren (van alle relaties) en ook alle technische instellingen aanpassen (zoals client registraties).
* Monta admin: je mag alle users beheren (van alle relaties) maar geen technische instellingen aanpassen.

Rollen per relatie:

* Admin: je mag alle users beheren van deze relatie.
* Employee: deze rol bestaat alleen om de user aan de relatie te koppelen.
