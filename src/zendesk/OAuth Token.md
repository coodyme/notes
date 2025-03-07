You can follow the steps bellow to generate an OAuth full_token to use in your application manually or you can use [[#Automatically generate]] script.

## Create an API Token

Before start, we will need to create an API Token to make requests in Zendesk API

`https://{subdomain}.zendesk.com/admin/apps-integrations/apis/zendesk-api/settings/``

replace `{subdomain}` to your instance domain and access using your `email` and `password` then click into `Add API Token`

![[zendesk_oauth_ss_1.png]]


## Setup Authorization 

We need to setup `Authorization` and `Environments`. If you are using postman or another API platform you will need to setup environment variable for Authorization following the steps bellow

Create `environment` variables

![[zendesk_oauth_ss_2.png]]

Now we need to create `Authorization` with `Environment` as `Basic Auth

![[zendesk_oauth_ss_3.png]]

Fill `Username` input with your Zendesk instance account email followed by /token and `Password` with API Tokem we have been generated before

## Create OAuth Client

Access the link bellow replacing `subdomain` with your Zendesk instance domain

`https://{subdomain}.zendesk.com/admin/apps-integrations/apis/zendesk-api/oauth_clients`

To create a client, we just need to click on `Add OAuth Client` button and give a name and description.

![[zendesk_oauth_ss_0.png]]

## Generate OAuth Token

Finally we can use Zendesk API to generate our `full_token` following the endpoints bellow.

- List Client ->   `GET /api/v2/oauth/clients` 
  
Pick the `id` from created client and then send a post request using the following body passing the `id` to `client_id` field

```json
{"token": {"client_id": "9486889422747", "scopes": ["read", "write"]}}
```

- Create Token ->   `POST /api/v2/oauth/tokens` 
  
Now, you can pick the `full_token` field to use in your apps.

## Automatically generate

Create a file called script.js, copy the code bellow and paste inside that file. Then you just need to fill `EMAIL`, `TOKEN`, `SUBDOMAIN`, `NAME` and `IDENTIFIER` inputs before run `node script.js` using node version >= 18

`email` and `token` are relative to your Zendesk Account mentioned before in [[#Create an API Token]]

```js
// ZENDESK_EMAIL
const EMAIL = ''
// ZENDESK_API_TOKEN
const TOKEN = ''
// ZENDESK_SUBDOMAIN
const SUBDOMAIN = ''
// OAUTH_CLIENT_NAME
const NAME = ''
// OAUTH_CLIENT_IDENTIFIER
const IDENTIFIER = ''

const API = `https://${SUBDOMAIN}.zendesk.com/api`
const HEADERS = {
  'Content-Type': 'application/json',
  Authorization: `Basic ${btoa(`${EMAIL}/token:${TOKEN}`)}`
}

function errorHandler(error) {
  if (error) {
    const identifier = error.details.identifier
    const desc = identifier[0].description
    return new Error(desc)
  }

  return new Error('Unknown error')
}

async function init() {
  if (!EMAIL || !TOKEN || !SUBDOMAIN || !NAME || !IDENTIFIER) throw new Error('Missing required environment variables')
  
  const clientResponse = await fetch(
    `${API}/v2/oauth/clients`,
    {
      method: 'POST',
      headers: HEADERS,
      body: JSON.stringify({client: {name: NAME, identifier: IDENTIFIER}})
    }
  )

  const clientData = await clientResponse.json()

  if (clientData?.error) {
    const error = errorHandler(clientData)
    throw error
  } 

  const { id, name, identifier } = clientData.client

  console.log(`Client ID: ${id} | Name: ${name} | Identifier: ${identifier} -> Created`)

  const tokenResponse = await fetch(
    `${API}/v2/oauth/tokens`,
    {
      method: 'POST',
      headers: HEADERS,
      body: JSON.stringify({token: {client_id: id, scopes: ["read", "write"]}})
    }
  )

  const tokenData = await tokenResponse.json()

  if (tokenData?.error) {
    const error = errorHandler(tokenData)
    throw error
  } 

  const { full_token } = tokenData.token

  console.log(`Token: ${full_token} -> Created`)
}

init()

```
