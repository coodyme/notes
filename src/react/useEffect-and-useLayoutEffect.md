
## What is useEffect?

In React, `useEffect` is a built-in hook that allows you to perform side effects in functional components. Side effects typically include things like data fetching, subscriptions, or manually changing the DOM.

The `useEffect` hook is used to handle these side effects in a declarative way, ensuring they are performed consistently and at the appropriate times during the component's lifecycle.

### Cleanup

### Should I useEffect or useLayoutEffect?

Most of the time, `useEffect` is the right choice. If your code is causing flickering, switch to `useLayoutEffect` and see if that helps.

Because `useLayoutEffect` is synchronous a.k.a. _blocking_ a.k.a. the app won’t visually update until your effect finishes running… it could cause performance issues like stuttering if you have slow code in your effect. Coupled with the fact that _most_ effects don’t _need_ the world to pause while they run, regular `useEffect` is almost always the one to use.

1. You cause a render somehow (change state, or the parent re-renders)
2. React renders your component (calls it)
3. `useLayoutEffect` runs, and React waits for it to finish.
4. The screen is visually updated

https://daveceddia.com/useeffect-vs-uselayouteffect/
https://blog.logrocket.com/understanding-react-useeffect-cleanup-function/
https://stackoverflow.com/questions/53090432/react-hooks-right-way-to-clear-timeouts-and-intervals