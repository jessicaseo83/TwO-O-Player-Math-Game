class Player
  attr_accessor :name, :life
  def initialize(name)
    @name = name  # player1, player2
    @life = 3
  end

  def reduce_life
    @life -= 1
  end
  
end