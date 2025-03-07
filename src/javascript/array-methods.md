## What is the difference between `map`, `reduce`, and `foreach`?

In JavaScript, `map`, `foreach` and `reduce` are array methods used to iterate over and manipulate arrays. However, they differ in their purposes and the way they handle and return values.

### Map

- Used to create a new array by applying a providade callback function to each element in the original array.
- Returns a new array containing the results of applying the callback function to each element. The original array remains unchanged.
- Is commonly used when you want to transform each element of an array into a new value based on some logic. It allows you to perform a one-to-one mapping operation

### Foreach

- Used for iterating over an array and executing a provided callback function for each element
- Does not return a value. Iterate over the array and applies the callback function to each element
- Is commonly used when you want to perform an operation or side effect for each element in a array, such as logging values, update the DOM, or calling other functions

### Reduce

- Is used to reduce an array to a single value by applying a provided callback function to each element, accumulating the result
- Returns a single value that is the result of applying the callback function to each element accumulating the values. It can be any data type.
- Is useful when you want to perform an operation that involves aggregating the element of an array into a single value, such as calculating a sum, finding the maximum or minimum value, or creating an object or string based on the array elements.
- Is useful to group objects by keys in an array

https://www.youtube.com/watch?v=s1XVfm5mIuU

## Useful array methods

### Push

The **`push()`** method adds the specified elements to the end of an array and returns the new length of the array.

### Pop

The **`pop()`** method removes the **last** element from an array and returns that element. This method changes the length of the array.

### Filter

The **`filter()`** method creates a [shallow copy](https://developer.mozilla.org/en-US/docs/Glossary/Shallow_copy) of a portion of a given array, filtered down to just the elements from the given array that pass the test implemented by the provided function.

### Sort

To sort the elements in an array without mutating the original array, use [`toSorted()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/toSorted).

### to Sort

### Some

The **`some()`** method tests whether at least one element in the array passes the test implemented by the provided function. It returns true if, in the array, it finds an element for which the provided function returns true; otherwise it returns false. It doesn't modify the array.
