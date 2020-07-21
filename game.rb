require './player.rb'
require './question.rb'

class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @players = [@player1, @player2]
  end

  def turn
    @players.rotate!
  end

  def results
    puts "P1: #{@player1.life}/3 VS P2: #{@player2.life}/3"
  end

  def run

    while @player1.life > 0 && @player2.life > 0 
      @question = Question.new
      @current_player = @players.first

      puts "----- NEW GAME -----"
      print "#{@current_player.name}: "
      @question.display_question
      
      input = $stdin.gets.chomp.to_i
      
      if @question.right_answer(input)
        turn
        puts "Correct! You are a math genius!"
        results
      else
        turn
        puts "Boo!!! Your answer is wrong!"
        @current_player.reduce_life
        results
      end

    end
    
    if @player1.life <= 0
      puts "#{@player2.name} wins with a score of #{@player2.life}"
      puts "----- GAME OVER -----"
    elsif @player2.life <= 0
      puts "#{@player1.name} wins with a score of #{@player1.life}"
      puts "----- GAME OVER -----"
    end

  end

end

game = Game.new
