A _higher-order component_ (_HOC_) is a function that takes a component and returns a new component. Basically, it's a pattern that is derived from React's compositional nature.

We call them **pure components** because they can accept any dynamically provided child component but they won't modify or copy any behavior from their input components.

HOC can be used for many use cases:

1. Code reuse, logic and bootstrap abstraction.
2. Render hijacking.
3. State abstraction and manipulation.
4. Props manipulation.

### Diff

### HOC

High-Order Components (HOCs) and Hooks are both advanced React concepts that allow you to enhance and reuse component logic. However, they achieve this in different ways and have different use cases. Let's explore the differences between them

In summary, HOCs and Hooks are both powerful techniques to enhance React components. HOCs are a pattern that allows you to wrap components and add behavior, while Hooks are functions that allow functional components to use state and other React features. Hooks are considered more modern and are often the preferred approach in new React projects due to their simplicity and better encapsulation of logic.

- HOCs are a pattern in React that enables component composition. They are functions that take a component as input and return a new component with added props or behavior.

### Hook

Hooks are functions provided by React that allow you to use state and other React features in functional components. They enable you to "hook into" React's lifecycle and state management without writing class components.

- Hooks provide a more direct and concise way to add state and lifecycle methods to functional components, making the code easier to read and maintain.