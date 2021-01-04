class Game
  attr_accessor :isGameOver
  
  def initialize
    @isGameOver = false
    @currentPlayer = "p1"
  end



  def generateNumbers
    [rand(1..20), rand(1..20)]
  end

  def generateQuestion(numbersArray)
    "#{@currentPlayer == "p1" ? "Player 1" : "Player 2"}: What does #{numbersArray[0]} plus #{numbersArray[1]} equal"
  end

  def isUserCorrect(userGuess, numbersArray)
    userGuess.to_i == numbersArray[0] + numbersArray[1]
  end



  def toggleTurn
    @currentPlayer = @currentPlayer == "p1" ? "p2" : "p1"
  end

  def printScore
    "P1: x/3 vs P2: x/3"
  end

  def printNewTurn
    "----- NEW TURN -----"
  end

end