#Entities

##Game
-responsible for handling all of the game events (generating/ asking qustions, receiving/checking player input, delegating turns, all commandline output, state of game (game over)
  ###state
  isGameOver
  currentPlayer
  winner

  ###methods
  genQuestion()

  printQuestion(currentPlayer)

  askQuestion()

  handleAnswer()

  toggleTurn()

  printScore()

  printNewTurn()  
  

##Players
-holds number of lives

-method for decrementing life

##Questions