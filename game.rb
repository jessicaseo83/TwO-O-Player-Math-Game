class Game

  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @players = [@player1, @player2]
  end
  
  def run
    @Question = Question.new
    @current_player = @players.first


  end


  
  # - generate question
  # player_input = get.chomp
  
  # - check the answer
  # if (player_input !== expected) ==> print a messsage(Wrong), reduce player's life, players' lives, and player change
  # else ==> print a message(right), players' lives, and player change
  
  # - when player's life == 0, game over ==> dead()??  

  #    #main game loop