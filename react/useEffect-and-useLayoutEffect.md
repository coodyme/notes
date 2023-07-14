
## Should I useEffect or useLayoutEffect?

Most of the time, `useEffect` is the right choice. If your code is causing flickering, switch to `useLayoutEffect` and see if that helps.

Because `useLayoutEffect` is synchronous a.k.a. _blocking_ a.k.a. the app won’t visually update until your effect finishes running… it could cause performance issues like stuttering if you have slow code in your effect. Coupled with the fact that _most_ effects don’t _need_ the world to pause while they run, regular `useEffect` is almost always the one to use.

1. You cause a render somehow (change state, or the parent re-renders)
2. React renders your component (calls it)
3. `useLayoutEffect` runs, and React waits for it to finish.
4. The screen is visually updated

https://daveceddia.com/useeffect-vs-uselayouteffect/