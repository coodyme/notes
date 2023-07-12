#react 
#frontend 
#interview-question 

## What is State?

State refers to an internal React object that allows components to store and manage data. It represents the internal state of the component.

It is an important concept, because it enables components to update and re-render in response to user actions. With state, we can create interactive and dynamic user interfaces.

- The information may change over the lifetime of the component.
- Whenever the state object changes, the component re-renders.
- It is recommended to make state as simple as possible to minimize the number of stateful components.
- It is private and fully controlled by the component.
- It is mutable and can be updated using the `setState` function.
- It is not accessible to any other component till the owner component decides to pass it.

![](../-/attachments/state-and-props-00.png)

As we can see in this image, `State` is used for internal communication within the component

For example:

```jsx
import React, { useState } from 'react';

function Counter() {
  const [count, setCount] = useState(0);

  const increment = () => {
    setCount(count + 1);
  }

  return (
    <>
      <p>Count: {count}</p>
      <button onClick={increment}>Increment</button>
    </>
  );
}

export default Counter
```

In this example, we defined a Counter component that uses the [useState](3-hooks/11-use-state.md) hook to manage its sate.

As we can see the `useState` hook returns a `count` variable that represents the current count value and a `setCount` function to update the count value by calling it.

## What are Props?

Props (properties), are a way to pass data from a **parent** component to its **child** components. They are similar to function args.

- Props are immutable, which means that once they are passed to a component, they cannot be modified.
- Used to pass data from parent component to child component
-  Props can be used to customize the behavior or appearance of a component

For example

```jsx
function Child(props) {
	return ( 
		<> 
			<p>Name: {props.name}</p> 
			<p>Age: {props.age}</p> 
		</> 
	);
}

export default Child;
```

```jsx
function Parent() {
	return ( 
		<Child name="Foo" age={30} />
	);
}

export default Parent;
```

In this example, we have a `Child` component, which takes two props `name` and `age`. The `Parent` component passes the value of `Foo` and `30` to the props when it renders the `Child` component.

## What is the difference between State and Props?

|    Type    |                                 State                                 | Props                                                   |
|:----------:|:---------------------------------------------------------------------:|---------------------------------------------------------|
| Use Case   | Store the data of the components that have to be rendered to the view | Pass data and event handlers to the children components |
| Mutability | State holds the data and can change over time                         | Immutable when it is set, props cannot be changed       |