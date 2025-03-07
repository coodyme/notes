The concepts of shallow copy and deep copy refer to different approaches of copying objects or array. The main diffrence lis in how nested objects or arrays are handled during the copy operations

## Shallow

- Creates a new object or array and copies the references of the original object's properties or elements

```js
const originalArray = [1, 2, [3, 4]];
const shallowCopyArray = originalArray.slice();
```

## Deep

- A deep copy creates an entirely indepentens copy of an object or array, including all nested objects and arrays. Each property or element is duplicated, resulting in a new strcuture that is complety separate from thje original


```js
const originalArray = [1, 2, [3, 4]];
const deepCopyArray = JSON.parse(JSON.stringify(originalArray));
```

It's important to note that deep copying complex objects with functions or non-JSON serializable values using `JSON.parse(JSON.stringify())` may lead to unintended behavior or loss of data. In such cases, using specialized libraries or implementing custom deep copy logic is recommended.