# (Interne) Koppeling tussen Monta en Exact

De koppeling tussen Exact en Monta doet het volgende:
- Klanten die in Exact aangemaakt zijn ook in Monta aanmaken
- Facturen die in Exact betaald zijn ook in GoMonta op betaald zetten

## Monta klant "omhangen" naar andere Exact klant

IT kan dit regelen.

[[Doelgroep: IT

- In tblRelaties de ExactAdministratieRelatieID's omwisselen
- In tblRelatieFactuurAdres de RelatieID's omwisselen
- In tblRelaties de bedrijfsnaam aanpassen.

Let op: het is nog niet bevestigd of dit werkt. Maar recent heb ik (jvds) dit gedaan voor Klaas om Braumarkt om te hangen naar Grainvest. Ik zou nog terughoren van Klaas of het gewerkt heeft.



