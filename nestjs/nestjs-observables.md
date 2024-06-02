Observables can return multiple  values

```ts
const observable = new Observable(observer => {
  setTimeout(() => {
    observer.next('dog')
    observer.next('cat')
    observer.next('bird')
  })
})

observable.subscribe(result => {
  console.log('Observable: ', result)
})

// Expected output
// Observable: dog
// Observable: cat 
// Observable: bird
```

Observables behaves like arrays For example

```ts
observable
  .filter(result => result === 'bird')
  .subscribe(result => {
  console.log('Observable: ', result)
})

// Expected output
// Observable: bird
```

You can unsubscribe from Observable

```ts
observable.unsubcribe()
```