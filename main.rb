require_relative 'lib/player'
require_relative 'lib/question'

player1 = Player.new(1)
player2 = Player.new(2)

current_player = player1

while player1.hp > 0 && player2.hp > 0

  question = Question.new

  puts "Player #{current_player.id}: What is #{question.num1} + #{question.num2}?"
  print "> "

  guess = gets.chomp 

  if guess == question.answer.to_s
    puts "Correct!"
  else
    puts "Incorrect!"
    current_player.hp -= 1
  end
  
  puts "Player 1: #{player1.hp}/3 HP VS Player 2: #{player2.hp}/3 HP"
  puts " "
  
  if current_player.hp == 0 
    if current_player.id == 1
      puts "Player 2 wins!!!"
    else 
      puts "Player 1 wins!!!"
    end
    puts "----- GAME OVER -----"
  else 
    puts " ----- NEW TURN ----- "
  end

  current_player == player1 ? current_player = player2 : current_player = player1
  
end
