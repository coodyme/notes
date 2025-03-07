
## What are Pure Functions and how they works?

A pure function is a function that consistently produces the same output given the same inputs and has no side effects.

- Deterministic: A pure function always produce the same result when called with the same inputs
- No Side Effects: A pure function does not modify the state of variables outside its scope, mutate date, or perform any other actions.

For example:

```js
function add(a, b) {
  return a + b;
}
```

On the other hand, a impure function example:

```js
let total = 0

function addToTotal(value) {
  total += value
  return total
}
```