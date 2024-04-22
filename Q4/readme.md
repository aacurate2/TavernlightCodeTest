## PROBLEM 
A memory leak, as described. There's also a typo, `INDEX_WHEREEVER` should probably be named `INDEX_WHEREVER` (no double 'E'), but I assumed that was legacy code and didn't change it.

## SOLUTION
De-allocate memory by `delete`-ing the new `Person()` we created.

## METHODOLOGY
To be honest, my C++ is pretty rusty. After looking over the code a few times trying to spot any obvious issues (and not finding any), I decided to just look up what some common causes for memory leaks were in C++ and look for matching patterns. The first thing I saw was about using the `new` keyword. 

The next thing I did following that quick bit of research was look for ways to do a quick refactor; try to avoid using `new` altogether rather than adding a `delete`. I quickly remembered, though, that I don't have access to an actual codebase. So I just went with `delete(player)` if we had initialized one, it seems like an okay alternative.