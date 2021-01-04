class Question 
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
end