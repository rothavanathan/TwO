require "./Game.rb"

game = Game.new


puts "isGameOver is: #{game.isGameOver}"

numbers = game.generateNumbers
puts game.generateQuestion(numbers)
userGuess = gets.chomp
puts game.isUserCorrect(userGuess, numbers)
#handleAnswer
puts game.printScore
#check if any player is out of lives

puts game.printNewTurn
game.toggleTurn

