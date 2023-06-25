- Query Language  for `READING` and `MUTATING` data in APIs
- Backend > Describe a schema for data

- Communication between backend and frontend

- Schema First
- Code First

- Resolvers 
- Automatic generate API documentation

### Pros

#### Overfetching

#### Underfetching


### Cons

#### Cache
#### Errors


https://typegraphql.com/docs/introduction.html


http:localhost:3000/graphql

```gql
query {
	users {
		id
		name
		github

		addresses {
			city
			state
			country
		}
	}
}
```