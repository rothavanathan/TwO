class Game
  attr_accessor :isGameOver, :winner
  attr_reader :currentPlayer
  
  def initialize
    @isGameOver = false
    @currentPlayer = "p1"
    @winner = false
  end

  def generateNumbers
    [rand(1..20), rand(1..20)]
  end

  def generateQuestion(numbersArray)
    "#{@currentPlayer == "p1" ? "Player 1" : "Player 2"}: What does #{numbersArray[0]} plus #{numbersArray[1]} equal?"
  end

  def isUserCorrect(userGuess, numbersArray)
    userGuess.to_i == numbersArray[0] + numbersArray[1]
  end

  def handleAnswer(userGuess, numbersArray)
    if isUserCorrect(userGuess, numbersArray)
      puts "Nice one"
      return true
    else
      puts "Yikes. Way off."
      return false
    end
  end

  def toggleTurn
    @currentPlayer = @currentPlayer == "p1" ? "p2" : "p1"
  end

  def printScore(p1_lives, p2_lives)
    "P1: #{p1_lives}/3 vs P2: #{p2_lives}/3"
  end

  def printNewTurn
    "----- NEW TURN -----"
  end

end