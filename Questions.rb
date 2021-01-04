class Question 
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def generateQuestion(currentPlayer)
    "#{currentPlayer}: What does #{@num1} plus #{@num2} equal?"
  end

  def handleAnswer(userGuess)
    if userGuess.to_i == @num1 + @num2
      puts "Nice one"
      true
    else
      puts "Yikes. Way off."
      false
    end
  end
end