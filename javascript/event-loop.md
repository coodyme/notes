
#javascript 

## The call stack

> JavaScript is **single-threaded** that means `one thread == one call stack == one thing at a time`

The call stack is part of the JavaScript engine, this isn't browser specific. The principle of the stack it's **Last-In-First-Out** (LIFO). 

In JavaScript when a function get **pushed to** the call stack when they're **invoked** and **popped off** when they **return a value**

That means the most recently executed function is the first one to be removed from the stack.

![[event-loop-0.gif]]

## Concurrency & Event Loop

- Event loop has one very simple job: look at the stack and look at the task queue. If the stack is empty it takes the first thing on the queue and pushes it on to the stack

https://www.youtube.com/watch?v=8aGhZQkoFbQ
http://latentflip.com/loupe