#javascript 
#interview-question 

## What is Hoisting?

- When the `JavaScript Engine` get our script, the first thing it does is **setting up memory** for the data in our code. Any code is executed at this point, it is simply just preparing everything to be executed.
- Functions are stored with a **reference to the entire function**
- Variables like `let` and `const` are stored `uninitialized`
- Variables declared with `var` keyword are stored with de default value of `undefined`

For example: In execution phase, we can invoke a function before we declared them

- Functions and variables are stored in memory for an execution context before we execute our code. This is called _hoisting_.
- Functions are stored with a reference to the entire functions, variables with the `var` keyword with the value of `undefined`, and variables with the `let` and `const` keyword are stored _uninitialized_.

## Temporal Dead Zone

The `TDZ` is a behavior in JavaScript that occurs when declaring a variable with the `let` and `const` keywords. In **ES6**, accessing a `let` or `const` variable before its declaration causes a `ReferenceError`. The time span when that happens, between the creation of a variable's binding and its declaration, is called `Temporal Dead Zone`


```js
function print() {
  console.log(hello); // undefined
  console.log(world); // ReferenceError
  
  var hello = 'Hello';
  let world = 'World';
}
```