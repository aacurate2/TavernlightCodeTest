## PROBLEM: 
Using addEvent (which google told me was a way to call a function asynchronously after a delay) in a place where 1. the player logging out would presumably free the 'player' object, causing an error, and 2. a delay likely isn't needed here in the first place. Also, the function simply returns `true` every time, which is quite useless.

## SOLUTION: 
Just call the function directly! I also changed the return behaviour to `return true` only if the storage was successfully released.

## METHODOLOGY: 
The very first thing I did was check if the function calls were valid. In this case, it meant searching for the functions online to see what proper syntax was. This is how I found that the use of `addEvent` was likely erroneous.