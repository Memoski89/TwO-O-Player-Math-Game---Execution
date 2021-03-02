class PlayGame
 
  attr_accessor :current_player
  def initialize
    @current_player = 1
  end
  
  def run_game
  # player1 = new instance of class Player with 3 lives
  player1 = Player.new('player1')
  player2 = Player.new('player2')
  # puts "LIVES HERE #{x.lives}"
  game = true
  while game do
  
    if @current_player == 3
      @current_player = 1
    end
   
    # want a way to access the lives attribute and alter it
    if (player1.lives == 0 || player2.lives == 0)
      puts "GAME OVER"
    end
  
    if @current_player == 1
      newQ = MathQuestion.new()
      newQ.questionGen(player1)
     
      result = $stdin.gets.chomp.to_i
  
      if newQ.ans == result
        puts "Yes, you are correct."
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        puts "-------------NEW TURN---------------"
        else
        puts "Seriously, no!" 
        player1.lives -= 1   
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        puts "-------------NEW TURN---------------"
       
        if player1.lives == 0
          puts "#{player2.name} wins with a score of #{player2.lives}/3"
          puts "#{player1.name} has lost. Bye!"
          game = false
          return
        end
     
      end
  
  
        else
     
        newQ = MathQuestion.new()
        newQ.questionGen(player2)
  
        result = $stdin.gets.chomp.to_i
  
        if newQ.ans == result
          puts "Yes, you are correct."
          puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
          puts "-------------NEW TURN---------------"
        else
          puts "Seriously, no!"
          player2.lives -= 1
          puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
          puts "-------------NEW TURN---------------"
         
  
        
          if player2.lives == 0
            puts "#{player1.name} wins with a score of #{player1.lives}/3"
            puts "#{player2.name} has lost. Bye!"
            game = false
            return
          end
       
        end
  
      end 
   
      @current_player += 1
   
    end  
  
   # we want to call the MathQuestions class wile both players have atleast 1 life
    # and call it for the player who's turn it is 
    # puts "What does #{num1} + #{num2} equal?"
    # print "> "
  end
  
 end