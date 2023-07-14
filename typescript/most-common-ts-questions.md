#typescript 
#interview-question 

https://www.interviewbit.com/typescript-interview-questions/
https://www.softwaretestinghelp.com/typescript-interview-questions/
https://www.simplilearn.com/tutorials/typescript-tutorial/typescript-interview-questions

## What is TypeScript

In simple terms, TypeScript helps programmers catch errors and bugs in their code before running it. It introduces a type system, which allows developers to define the types of variables, function parameters, and return values. This helps identify and prevent common mistakes and improves code quality and maintainability.

### What are intersection types?

Intersection types let you combine the members of two or more types by using the ‘&’ operator.

```ts
interface Employee { work: () => string; } 
interface Manager { manage: () => string; } 
type Supervisor = Employee & Manager;
```

### What are union types in TypeScript?

A union type is a special construct in TypeScript that indicates that a value can be one of several types. A vertical bar (|) separates these types.

```ts
type methods = 'GET' | 'SET' | 'POST';
type alphanumeric = string | number;
```

### What is meant by type inference?

TypeScript can infer the type of a variable when you don’t provide an explicit type.

### 1. What are the primitive types in TypeScript?

TypeScript has three primitive types that are frequently used: string, number, and boolean. These correspond to the similarly named types in JavaScript. 

- **string**: represents text values such as “javascript”, “typescript”, etc.
- **number**: represents numeric values like 1, 2, 32, 43, etc.
- **boolean:** represents a variable that can have either a ‘true’ or ‘false’ value.

### 2. What is any type, and when to use it?

There are times when you want to store a value in a variable but don’t know the type of that variable in advance.


### What is void, and when to use the void type?

The void indicates the absence of type on a variable. It acts as the opposite type to any. It is especially useful in functions that don’t return a value.

If a variable is of type void, you can only assign the null or undefined values to that variable.



### 5. What is an unknown type, and when to use it in TypeScript?

The unknown type is the type-safe counterpart of any type. You can assign anything to the unknown, but the unknown isn’t assignable to anything but itself and any,



###  Explain the concept of null and its use in TypeScript.

In programming, a null value indicates an absence of value. A null variable doesn’t point to any object.



### What is undefined in TypeScript?

When a variable is declared without initialization



### What is the typeof operator? How is it used in TypeScript?

Similar to JavaScript, the typeof operator in TypeScript returns the type of the operand as a string

## Generics

Generics allow you to create reusable pieces of code that can work with different types of data. They provide flexibility and help make your code more reusable and type-safe.

Example > Response from an endpoint (use the data[] example)

```ts
type User = {
  name: string;
}

async function fetchApi<ResultType>(path: string): Promise<ResultType> {
  const response = await fetch(`https://example.com/api${path}`);
  return response.json();
}

const data = await fetchApi<User[]>('/users')

export {}
```