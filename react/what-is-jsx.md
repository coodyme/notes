#react 
#frontend 
#interview-question 

## What is JSX?

It is a syntax extension used in React.

- JavaScript XML
- Allows developers to write HTML-like code within JavaScript, combining both markup and logic in a single file
- Basically it just provides the syntatic sugar for the `React.createElement(type, props, ...children)` function

In the example below, the text inside `<h1>` tag is returned as JavaScript function to the render function.

```jsx
export default function App() {
  return (
      <h1 className="greeting">{"Hello, this is a JSX Code!"}</h1>
  );
}
```

If you don't use JSX syntax then the respective JavaScript code should be written as below

```js
import { createElement } from 'react';

export default function App() {
  return createElement(
    'h1',
    { className: 'greeting' },
    'Hello, this is a JSX Code!'
  );
}
```

> Under the hood, JSX gets transpiled into regular JavaScript before being executed in the browser. This transpilation process converts the JSX syntax into function calls that create React elements