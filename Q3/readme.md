## PROBLEM: 
Truly awful function name: it's not descriptive, and it also mixed snake case with pascal, when it seems lua (at least, the rest of the test + the internet) prefers camel case. And `membername` used the wrong case too! 

Also, it seems wrong for `memberName` to be a... name, when the player was referenced by ID.

## SOLUTION: 
More renaming for clarity and convention!

## METHODOLOGY
When naming things, I often tend to lean towards "descriptive to a fault". I find that just having functions whose names make it obvious what they do is often better for everyone involved than using abundant comments. This is why I chose the name `removeMemberFromParty`: it describes what the function actually does built right into the name, with the added bonus of describing more clearly what the argument `memberId` is for. 

I renamed `membername` to `memberId` assuming that the codebase passes around the player's ID rather than their name or some other volatile bit of info. Passing by ID is, generally, much less prone to error, and also and int requires less memory be stored than passing a string around.