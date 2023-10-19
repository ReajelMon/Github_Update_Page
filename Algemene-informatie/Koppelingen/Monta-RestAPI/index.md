# Monta RestAPI

Monta
REST API
## Documentation for using Monta’s REST API

### Abstract
With our REST API, our clients are enabled to submit to and retrieve information from our systems.
This document describes the features and usage of this API.

### Connection

Url: https://api.montapacking.nl/rest/v5/.

Please note that HTTPS connection with TLS 1.2 is required.

### Authentication
Authenticate with username and password using HTTP basic authentication. Username and password
can be created in the Montaportal.
This can be done through the following link: https://www.montaportal.nl/Connect/PlatformDetails?platform=RestAPI

### Whitelisting
It is possible to whitelist specific IP addresses. This can be done via de Montaportal. IP’s can be added
per useraccount. All IP’s are allowed when there isn’t an IP added to the white

### Technical details
The API is set up according to the REST standard. Entities are identified with the URL. The HTTP
method specified the action performed on an entity.

- GET To retrieve details of an entity
- POST To create a new entity
- PUT To update an entity
- DELETE To delete an entity
JSON is used for requests and responses.

### Error handling
The HTTP status codes defines the status of a request. These HTTP statuses are used:

- 200 The entity was successfully retrieved or successfully updated
- 204 The entity was successfully deleted
- 400 The entity could not be created, updated or deleted. Details about the problem are
- specified in the response content
- 403 The IP used for the request is not whitelisted
- 404 The entity you tried to retrieve, update or delete could not be found
- 429 Too many requests, rate limit exceeded

### Rate limits
You can do 4500 requests every 5 minutes, 27000 an hour and 270000 requests a day.
