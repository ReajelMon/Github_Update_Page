# 2. Health

## Health
Provides information about the status of the API.

### GET /rest/v5/health

| **Field** | **Description** |
|--|--|
| Description | A description of the status |
| LoggedIn | If a valid login was provided |


### Example
`GET https://api.montapacking.nl/rest/v5/health HTTP/1.1
Host: api.montapacking.nl
Authorization:
#### Response
`HTTP/1.1 200 OK
{"Health":{"Description":"OK","LoggedIn":false}}`
