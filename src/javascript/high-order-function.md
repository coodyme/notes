
## What are HOF and how they works ?

A high-order function is a function that takes one or more functions as arguments or returns a function as its result.

- Allows functions to be treated as values
- Returns a function

For example:

```js
function doTwice(func) { 
  func(); 
  func(); 
} 

function sayHello() { 
  console.log("Hello!"); 
} 

doTwice(sayHello);
```