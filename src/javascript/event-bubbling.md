#javascript 
#frontend 
#interview-question 

## What is Event Bubbling ?

https://www.freecodecamp.org/news/event-bubbling-in-javascript/

JavaScript event bubbling, also known as event propagation, is a mechanism in which events that occur on a particular element are also triggered on its parent elements, propagating up through the DOM (Document Object Model) tree.

In simple words, when an event is triggered on an element, such as a button click, the event doesn't just affect that specific element but also propagates or `Bubbles` up through its parent elements

- To prevent event bubbling you can use `event.stopPropagation()` method within an event handler.
- This stops the event from propagating further up the DOM tree, ensuring that only the target element's event handler is triggered