require "./Game.rb"
require "./Players.rb"

game = Game.new
player1 = Player.new()
player2 = Player.new()

while !game.isGameOver
  numbers = game.generateNumbers
  puts game.generateQuestion(numbers)
  userGuess = gets.chomp
  #handleAnswer
  isUserCorrect = game.handleAnswer(userGuess, numbers)

  if !isUserCorrect
    if game.currentPlayer == "p1"
      player1.lives -= 1
      #check if player1 is out of lives
      if player1.lives == 0
        game.winner = "Player 2"
        game.isGameOver = true
      end
    else
      player2.lives -=1
      #check if player2 is out of lives
      if player2.lives == 0
        game.winner = "Player 1"
        game.isGameOver = true
      end
    end
  end


  #game not over
  puts game.printScore(player1.lives, player2.lives)
  puts game.printNewTurn
  game.toggleTurn
end

#game is over, out of loop
puts "#{game.winner} wins with a score of #{game.winner == "Player 1" ? player1.lives: player2.lives}/3"
puts "-----GAME OVER-----"
puts "good-bye"