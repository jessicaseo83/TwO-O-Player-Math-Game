class Question
  attr_accessor :num1 :num2 :answer
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def display_question
  puts "What does #{@num1} plus #{@num2} do?"
  puts "> "
  end

  def right_answer(input)
    @answer == input
  end  
end