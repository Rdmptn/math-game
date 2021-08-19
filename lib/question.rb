class Question

  attr_reader :num1, :num2, :answer
  
  def initialize
    @num1 = rand(20) + 1
    @num2 = rand(20) + 1
    @answer = num1 + num2
  end
  
end
