player = 1
hp = 3

while hp > 0
  num1 = rand(20)
  num2 = rand(20)
  answer = num1 + num2

  puts "Player #{player}: What is #{num1} + #{num2}?"
  print "> "

  guess = gets.chomp 

  if guess == answer.to_s
    puts "Correct!"
  else
    puts "Incorrect!"
    hp -= 1
  end
  
  puts "Player #{player}: #{hp}/3 HP"
  puts " ----- NEW TURN ----- "
  
  if hp == 0 
    puts "----- GAME OVER -----"
  end
end
