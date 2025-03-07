
## What is a promise

In JavaScript, a promise is an object that represents the eventual completion or failure of an asynchronous operation and its resulting value. It is used to handle asynchronous operations such as fetching data from a server, reading files, or making database queries.

1. Pending: The initial state of a promise. It means that the asynchronous operation is still in progress and the promise has not been fulfilled or rejected yet.
    
2. Fulfilled: The state of a promise when the asynchronous operation has completed successfully. In this state, the promise holds the resulting value.
    
3. Rejected: The state of a promise when the asynchronous operation has failed or encountered an error. In this state, the promise holds the reason or error message for the failure.

Promises have methods such as `.then()` and `.catch()` that allow you to attach callbacks to handle the fulfillment or rejection of the promise. The `.then()` method is called when the promise is fulfilled, and the `.catch()` method is called when the promise is rejected.


### Promise Methods

- a

### What is the difference between promises `Promise.all` and `Promise.AllSettled` ?


https://dev.to/swarnaliroy94/methods-of-promise-all-any-finally-o2e
https://stackoverflow.com/questions/59784175/differences-between-promise-all-and-promise-allsettled-in-js