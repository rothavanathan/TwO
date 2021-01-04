require "./Players.rb"
require "./Questions.rb"

class Game
  attr_accessor :isGameOver, :winner
  attr_reader :currentPlayer
  
  def initialize
    @isGameOver = false
    @currentPlayer = "p1"
    @winner = false
    @player1 = Player.new()
    @player2 = Player.new()
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