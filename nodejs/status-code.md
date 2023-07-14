#nodejs 
#backend 
#interview-question 

## When to Use 400 Bad Request?

Let's start with a simple case: a client calls your protected API, omitting a required parameter. In this case, your API should respond with a `400 Bad Request` status code

For example, if your client calls your API with an empty value for the required `data` parameter, the API could reply with the following response:

## When to Use 401 Unauthorized?

- An access token is missing.
- An access token is expired, revoked, malformed, or invalid for other reasons.

## When to Use 403 Forbidden?

Let's explore a different case now. Assume, for example, that your client sends a request to modify a document and provides a valid access token to the API. However, that token doesn't include or imply any permission or scope that allows the client to perform the desired action.


https://auth0.com/blog/forbidden-unauthorized-http-status-codes/