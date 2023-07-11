#react 
#frontend 
#interview-question

##  What is a React Hook

React Hooks are simple JavaScript functions that we can use to isolate the reusable part from a function components.

- Hooks can be stateful and can manage side-effects
- React provides a bunch of standard in-built hooks
- Before the introduction of Hooks, state and life cycle methods could only be used in [[class-components]]

>**Call Hooks only at the top level of your React function**: You shouldn't call Hooks inside loops, conditions, or nested functions.

> **Call Hooks from React Functions only**: You shouldn't call Hooks from regular JavaScript functions.

### useState

Allows functional components to have local state. It returns an array with two elements: the current state value and a function to update the state

- Will trigger a re-render

Learn more about in [[11-use-state]]

### useEffect

Is used to perform side effects in functional components, such as data fetching, subscriptions, or DOM manipulation.

It runs after the component has rendered and ca be used to handle component life cycle events like componentDidMount, componentDidUpdate, and componentWillUnmount 

Learn more about in [[4-use-effect]]

### useContext

Allows functional components to access the value of a React context. It receives a context object as an argument and returns the current context value

Learn more about in [[1-use-context]]

### useRef

Returns a mutable ref object, which can hold a value that persists across component renders. It is commonly used to access DOM elements or to store mutable values without triggering a re-render.

Learn more about in [[10-use-ref]]

### useMemo

Used to memoize expensive computations so that they are only recalculated when their dependencies change. It takes a function and an array of dependencies, and it returns the memoized value.

Learn more about in [[8-use-memo]]

### useCallback

It is similar to useMemo, but it memoizes functions instead of values. It is useful when passing callbacks to child components to prevent unnecessary re-renders.

Learn more about in [[0-use-callback]]