require './player'
require './question'

class Game

  WELCOME_MESSAGE="---Ruby CLI Math Game---"
  
  def initialize
    
    puts WELCOME_MESSAGE
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")   
    new_game
       
  end
  
  def new_game
    game_contiune = true
    turn_number = 1
  
    while game_contiune
      question = Question.new

      if turn_number % 2 == 1
        question.question(@player1)
      else
        question.question(@player2)
      end

      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      
      if @player1.lives > 0 && @player2.lives > 0
        turn_number += 1
        puts "----- NEW TURN -----"
      else
        game_contiune = false
        if @player1.lives > 0
          puts "#{@player1.name} wins a score of #{@player1.lives}/3"
        else
          puts "#{@player2.name} wins a score of #{@player2.lives}/3"
        end
        puts "----- GAME OVER -----"
        puts "Good bye!"
      end
  
    end
  end

  

end