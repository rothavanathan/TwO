require "./Players.rb"
require "./Questions.rb"

class Game
  
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @currentPlayer = @player1
  end

  def toggleTurn
    @currentPlayer = @currentPlayer == @player1 ? @player2 : @player1
  end

  def printScore
    "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def play
    while @player1.isAlive? && @player2.isAlive?
      question = Question.new
      puts question.generateQuestion(@currentPlayer.name)
      userGuess = gets.chomp
      isUserCorrect = question.handleAnswer(userGuess)
      if !isUserCorrect
        @currentPlayer.lives -= 1     
      end
      if @currentPlayer.isAlive?
        puts printScore
        puts "----- NEW TURN -----"
        toggleTurn
      end
    end
    puts "#{@player1.isAlive? ? @player1.name : @player2.name} wins with a score of #{@player1.isAlive? ? @player1.lives : @player2.lives}/3"
    puts "-----GAME OVER-----"
    puts "good-bye"
  end
  
end