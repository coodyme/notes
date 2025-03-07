
https://www.freecodecamp.org/news/better-react-performance-usecallback-vs-usememo/

https://www.joshwcomeau.com/react/usememo-and-usecallback/

https://overreacted.io/before-you-memo/

## useMemo

Allows you to optimize the perfomance of the components by memoizing the result of a computation

- React will invoke the function and remember its result
- The next time the component renders, react will check if any of the dependencies have changed, React will return the memoized result without re-computing the function
- Howver if any of the dependencies have chanmge, will occur recompute


## useCallback

- Useful when passing callbacks to child components

- We have a component called BigList that renders a big list of items
- We can wrap that list with useMemo to prevent usesless re-renderings
- Now, we have a parent component that provides a handler function to know when an item of that list is clicked
-  so the handler can be wraped with an useCallback so when 


https://dmitripavlutin.com/react-usecallback/

You have a component `<MyBigList>` that renders a big list of items:

```jsx
import useSearch from './fetch-items';  

function MyBigList({ term, onItemClick }) {  
  const items = useSearch(term);  
  
  const map = item => <div onClick={onItemClick}>{item}</div>;   
  return <div>{items.map(map)}</div>;
}  
export default React.memo(MyBigList);
```

The list could be big, maybe hundreds of items. To prevent useless list re-renderings, you wrap it into `React.memo()`.

The parent component of `MyBigList` provides a handler function to know when an item is clicked:

```jsx
import { useCallback } from 'react';  

export function MyParent({ term }) {  
  const onItemClick = useCallback(event => {  
  console.log('You clicked ', event.currentTarget);  
}, [term]);  
 
  return (  
    <MyBigList  
      term={term}  
      onItemClick={onItemClick}
    />  
  );  
}
```

`onItemClick` callback is memoized by `useCallback()`. As long as `term` is the same, `useCallback()` returns the same function object.

When `MyParent` component re-renders, `onItemClick` function object remains the same and doesn't break the memoization of `MyBigList`.

That was a good use case of `useCallback()`.