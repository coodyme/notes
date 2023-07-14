
Both React Context API and Zustand have their own advantages and drawbacks. To determine which one you should use, consider the following scenarios:

- If your application has a simple global state and you prefer using built-in React features, React Context API might be the better choice for you.

- If your application has complex state updates, async actions, or requires better performance optimizations, Zustand is likely the better option.

Keep in mind that you can also use both solutions in the same application, depending on your needs. For example, you can use React Context API for simple global state management and Zustand for more complex parts of your application.

## What is Zustand?

A small, fast and scalable bearbones state-management solution using simplified flux principles. Has a comfy API based on hooks, isn't boilerplatey or opinionated.

## What is Context API?

Context allows us to “wrap” the components we want access to and easily pass data values to a state lower in the component tree

**API will enable us to manage the application tree better, passing data through the component tree without manually passing props** at each level.

## When to use Context API?

- **Data must be available in different components at multiple levels of nesting.** It is always worth asking yourself: is the data I need available in various components and levels? 

- **There is no way to configure the component tree differently to avoid the “global” state.”** Changing the components’ composition and moving the state higher or lower is enough to solve a given problem in the application.