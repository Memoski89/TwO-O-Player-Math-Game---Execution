class MathQuestion
 
  #CODE FOR P1 #instance vars so that we can access num1 and num 2 outside the class
  attr_reader :num1, :num2, :ans
  
  def initialize
    @num1 = rand(21)
    @num2 = rand(21)
    @ans = @num1 + @num2
  end
  def questionGen player
     puts "#{player.name}: What does #{num1} + #{num2} equal?"
    print "> "
  
  end
 #end this here
 end
  
  