#react 
#frontend 
#docs

## Creating and nesting components

A component is a piece of the user interface that has its own logic and appearance.

- In React, components are JavaScript `functions` that return a markup.
- React components must starts with a `capital letter` , while HTML tags must be `lowercase`

```jsx
function Button() {
	return (
		<button>My Button</button>
	)
}

export default function App() {
	return (
		<div>
			<h1> My App </h1>
			<Button />
		</div>
	)
} 
```

## Writing markup with JSX

`JSX` is a syntax extension for JavaScript that allows you to write HTML-like code in your JavaScript files.

- Describes the structure of user interface
- JSX is not required to use but it is common and recommended way to write `React Components`
- Components can't return multiple JSX tags, you have to wrap them into a shared parent using a `div` or `Fragment`

```jsx
function Page() {
	return (
		<>
			<h1>Hello World</h1>
			<p>Hi there!</p>
		</>
	)
}
```

## Adding styles

In React, you can specify a `CSS` class with `className`, it is the similar to HTML `class` 

```jsx
<div className='divider' />
```

And in your `CSS` file

```css
.divider {
	display: 'flex';
}
```

## Displaying data

To display data you can use curly braces `{}` to embed `JavaScript` expressions into `JSX` code.

In general, you can use curly braces to embed any valid JavaScript code into JSX, for example:

- Embed a variable
- A function call
- A conditional expression

```jsx
function App() {
  const name = 'John';
  const age = 30;

  function handleClick() {
    alert('Button clicked!');
  }

  return (
    <>
      <p>Hello, {name}!</p>
      <p>You are {age} years old.</p>
      <button onClick={handleClick}>Click me!</button>
      {age >= 18 ? <p>You are an adult.</p> : <p>You are a minor.</p>}
    </>
  );
}

export default App;
```

In this example, curly braces are used to embed the `name` and `age` variables, the `handleClick` function, and a conditional expression into the JSX code.

You can use a regular object `{}` inside the `style={}` attribute when your styles depend on JavaScript variables, for example:

```jsx
function Button() {
	return (
		<button style={{
			backgroundColor: "black",
			color: "white",
		}}>
			Click me!
		</button>
}
```

## Conditional rendering 

There is no special syntax for writing conditions in React. You will use the same techniques as you use when writing `JavaScript` code.

```jsx
let component;
 
if (condition) {
	component = <Button />
 } else {
	component = <Toggle />
}

return (
	<>
		{component}
	</>
)
```

or you can use `ternary` operator

```jsx
<>
	{condition ? (
		<Button />
	) : ( 
		<Toggle />
	)}
</>
```

but when you don't need the `else` statement, you can just use logical `AND &&`

```jsx
<>
	{condition && <Button />}
</>
```

For more complex conditional rendering scenarios you can use `switch` statement.

Overall, conditional rendering is a powerful technique that can help you create dynamic and response interfaces.

## Rendering lists

To render a list in React using `loops` can be done like:

```jsx
const products = [  
	{ title: 'Cabbage', id: 1 },
	{ title: 'Garlic', id: 2 },
	{ title: 'Apple', id: 3 },  
];
	
function App() {

	return (
		<ul>
		{products.map(product => (
			<li key={product.id}> 
				{product.title} 
			</li>
		))}
		</ul>
	)
}

export default App;
```

For each item in a list, you should pass a `string` or `number` that uniquely identifies that item among its siblings. Usually, a key should be coming from you data, like a database identifier.

For more information about why we need to use keys take a look at [[keys-in-react]]