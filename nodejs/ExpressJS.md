# ExpressJS


# Response

Sending a response

- res.send([body])
    
    body can be: Buffer, String, Object, Array
    
    - Sets automatically Content-Type in Headers
    - Set manually res.set('Content-Type', 'text/html');

```jsx
app.get('/test', (req, res) => {
	// do something
})

```

Sendng JSON response

Content-Type: application/json

```jsx
app.get('/api/test', (req, res) => {
  res.send({ hello: 'world' });
});
```

End Response

```jsx
res.status(404).end();
```

We can use res.end() if we want to end the response WITHOUT providing any data.

res.send() and res.json() always call res.end() after sending data.