class Person

  attr_accessor :hp, :id
  
  def initialize(id)
    @id = (id)
    @hp = 3
  end

end

player1 = Person.new(1)
player2 = Person.new(2)

current_player = player1

while player1.hp > 0 && player2.hp > 0
  num1 = rand(20)
  num2 = rand(20)
  answer = num1 + num2

  puts "Player #{current_player.id}: What is #{num1} + #{num2}?"
  print "> "

  guess = gets.chomp 

  if guess == answer.to_s
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
  
  if current_player ==  player1
    current_player =  player2
  else 
    current_player =  player1
  end
end
