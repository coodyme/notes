#react 
#frontend 
#interview-question

## Why do I need keys in react lists

In React, when rendering a list of elements dynamically, it is important to include unique keys for each item in the list. Keys help React identify which items have changed, been added, or been removed in the list, and efficiently update the user interface without re-rendering the entire list.

- Improve Performance
- Prevent Unintended Side Effects

```jsx
const MyList = () => {
  const items = ['Apple', 'Banana', 'Orange'];

  return (
    <ul>
      {items.map((item, index) => (
        <li key={index}>{item}</li>
      ))}
    </ul>
  );
};

```

In the example above, the `key` prop is set to the `index` of each item. 

However, using a more stable and unique identifier, such as an `id` associated with each item, would be preferable in most cases.

> For example, when you fetch a list of items from an API you will probably have a unique id for each item in that list. That way you can use the unique id as `key` in the list.