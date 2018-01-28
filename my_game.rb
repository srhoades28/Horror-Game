game_map = <<HEREDOC
Mapping out the the game and possibly finding out what it is that needs to happen.
I want the game to be a horror style game with different chainsaws and horrors happening that you have to get past.
The person starts on the porch, and has to go through the front door, in the living room there is a child with a knife and long hair.
The person has to punt the child out the window in order to go to the kitchen. In the kitchen there is a gigantic spider that spits venom.
The person has to block the venom with the lazy susan and throw the hot oil at the spider in order to pass the hallway.
In the hallway, there are hands reaching out all ghastly. The person has to run to the end of the hall, where they has 30 seconds to type letter
for letter a randomly generated string of 30 characters to get outside. They then have to set the house on fire and drive away to win the game.
HEREDOC

game_elements = <<HEREDOC1

Game Map
  initialize
  current_scene
  next_scene

Game Engine
  advance_scene
  
Scene
  kitchen
  Porch
  LivingRoom
  Hallway

Things to look up
Putting a countdown timer
Generating a randon string of a certain length
HEREDOC1
