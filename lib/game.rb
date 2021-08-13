class Game

  def initialize(name1, name2, player_class:)
    @player1 = player_class.new(name1)
    @player2 = player_class.new(name2)
  end

  def player1
    @player1
  end

  def player2
    @player2
  end

  def attack(amount)
    @player2.reduce_hp(amount)
  end

end