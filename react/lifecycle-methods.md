
https://medium.com/@tgholami/react-function-components-lifecycle-8a6ede4b8c2e

Lifecycle methods are custom functionality that gets executed during the different phases of a component. There are methods available when the component gets created and inserted into the DOM ([mounting](https://reactjs.org/docs/react-component.html#mounting)), when the component updates, and when the component gets unmounted or removed from the DOM.

## ComponentWillMount(), ComponentDidMount(), ComponentDidUpdate(), ComponentWillUnmount()

The _useEffect_ hook can express all combinations of these

## Combining Both Solutions:

> This means that you can use componentDidMount and componentWillMount in the same useEffect function call. Dramatically reducing the amount of code needed to manage both life-cycle events. This means you can easily use componentDidMount and componentWillMount within functional components