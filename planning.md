# Description
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

### Planning 
1. Class Game : initialize a new game 

1. Class player : initialize new players with name, 3 lives, scores

## Some questions to keep in mind
What is the role for each class?
Write out a brief paragraph describing the role that class will play in your app.

Remember that objects are important for two things:
State: Storing data describing themselves (variables)
Behavior: Defining actions that can be performed on them (methods)

Write down the methods for each class while also speaking to the following points:
What information is relevant to each class?
What will they need in order to be initialized?
What public methods will be defined on them?

Furthermore:
Which class will contain the game loop (where each instance of the loop is the other players turn)?
Which class should manage who the current_player is?
Which class(es) will contain user I/O and which will not have any?