#react 
#frontend 
#interview-question 

## What is DOM?

It is the representation of a web page structure in the form of a tree. It acts as an API to the web document, allowing programmatic interaction like, change document style, structure and content

- Document Object Model.
- Interface for Web Documents.
- Represents the Structure of an HTML document as a tree-like model.
- Provides a way to interact with the element and content of a web page dynamically.
- Allows you to access, manipulate, add, or remove element and their attributes using `JavaScirpt`.

The `DOM` represents the current state of the web page, when an HTML document is loaded into a Browser, the Browser parses the HTML and creates a DOM tree.

- Each element in HTML becomes a node in the DOM tree, and the relationship between elements is represented by parent-child relationship between nodes

![](../-/attachments/dom-virtual-dom-shadow-dom-00.png)


## What is Shadow DOM?

A shadow DOM is a tool mainly used to create component-based websites and applications. It does not represente the entire Document Object Model. Instead, it acts as a sub tree or separate DOM for a specific element

- All the components added will be local to the specific shadow DOM
- Isolate the DOM
- Allows scoping of CSS
- Increases application performance, since DOM manipulation does not need to render the entire DOM

## What is Virtual DOM ?

The Virtual DOM is an in-memory representation of Real DOM. The representation of a UI is kept in memory and synced with the "real" DOM. It is a step that happens between the render function being called and the displaying of  elements on the screen. This entire process is called [[reconciliation]]



## How Virtual DOM works?

The Virtual DOM works in three simple steps.

- Whenever any underlying date changes, the entire UI is re-rendered in Virtual DOM representation
- Then the difference between the previous DOM representation and the new one is calculated
- Once the calculations are done, the real DOM will be updated with only the things that have actually changed

> React.js implements the concept of virtual DOMs by utilizing the `ReactDOM` package.


## What is the difference between Shadow DOM and Virtual DOM

The _Shadow DOM_ is a browser technology designed primarily for scoping variables and CSS in _web components_. The _Virtual DOM_ is a concept implemented by libraries in JavaScript on top of browser APIs.

## What is the difference between Real DOM and Virtual DOM?

Below are the main differences between Real DOM and Virtual DOM

|Real DOM|Virtual DOM|
|---|---|
|Updates are slow|Updates are fast|
|DOM manipulation is very expensive.|DOM manipulation is very easy|
|You can update HTML directly.|You Can’t directly update HTML|
|It causes too much of memory wastage|There is no memory wastage|
|Creates a new DOM if element updates|It updates the JSX if element update|