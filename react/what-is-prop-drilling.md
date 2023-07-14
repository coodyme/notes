#react 
#frontend 
#interview-question 

## What is prop drilling?

It is the process by which you pass data from one component of the React Component tree to another by going through other components that do not need the data but only help in passing it around

- Refers to the practice of passing props through multiple components levels of nested components, even when some intermediate component do not actually use those props.

To avoid prop drilling

- Use Context API and useContext Hook
- Component Composition
- State Management Libraries like Redux and Zustand
