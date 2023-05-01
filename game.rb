class Game
  attr_accessor :player1, :player2

  WELCOME_MESSAGE="---Ruby CLI Math Game---"

  puts WELCOME_MESSAGE
  
  def initialize
    
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    
  end

end