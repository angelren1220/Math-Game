class Question

  def question(player)

    number1 = 1 + rand(20)
    number2 = 1 + rand(20)
    answer = number1 + number2

    print player.name
    puts ": What does #{number1} plus #{number2} equal?"
    print ">"

    input = gets.chomp

    if input.to_i == answer
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      player.lives -= 1
    end

  end
end