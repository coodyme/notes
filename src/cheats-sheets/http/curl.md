```bash
curl -sX POST 'api/login' -H 'Content-Type: application/json' -d '{"email": "email@email.com", "password": "pass"}' | jq -r .access_token
```

```bash
curl -s [https://sia-api.usereserva.com/api/devolucoes/pedido/1684369](https://sia-api.usereserva.com/api/devolucoes/pedido/1684369) -H 'Content-Type: application/json' -H "Authorization: Bearer ${SIA_TOKEN}" | jq
```
